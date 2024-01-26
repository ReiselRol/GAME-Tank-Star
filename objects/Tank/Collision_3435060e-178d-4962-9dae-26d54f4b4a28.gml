/// @description Take The Damage
if (other.Damage_Cooldown <= 0) {
	if (other.Damage_Team != Tank_Team) {
		other.Damage_Cooldown = other.Damage_MaxCooldown
		if (Tank_Shield <= 0) {
			Tank_Health -= other.Damage_Damage
			AudioPlaySound(BulletImpact)
		}
		else {
			var diference = Tank_Shield - other.Damage_Damage
			if (Tank_Shield - other.Damage_Damage < 0) {
				Tank_Shield = 0
				Tank_Health += diference
				AudioPlaySound(BulletShieldBreaking)
			} else {
				Tank_Shield -= other.Damage_Damage
				AudioPlaySound(BulletShieldImpact)
			}
		}
		if (Tank_Health > 0) {
			Tank_HittedTime = 1
			other.Damage_Piercing --
			if (Tank_IsABot) {
				if (instance_exists(other.Damage_From)) {
					Tank_BotEnemie_LastX = other.Damage_From.x
					Tank_BotEnemie_LastY = other.Damage_From.y
					if (Tank_Health > irandom(33)) Bot_PathEnemie()
					else Bot_SelectPosition()
				}
			}
		} else {
			var kills = 0
			var canPlaySound = false
			if (instance_exists(other.Damage_From)){
				Match_ShowUIKill(id,other)
				other.Damage_From.Tank_Money += 200 
				other.Damage_From.Tank_Kills ++
				kills = other.Damage_From.Tank_Kills
				with (other.Damage_From) {
					canPlaySound = (Tank_IsABot == false)
				}
				if (other.Damage_From.Tank_IsABot == true) {
					other.Damage_From.Tank_BotEnemie_LastX = -1	
					other.Damage_From.Tank_BotEnemie_LastY = -1	
				}
			} else Match_ShowUIKill(id,other)
			if (canPlaySound == true) {
				var sound = audio_play_sound(TankKill, 2, false)
				audio_sound_pitch(sound, 1 + 0.15 * (kills - 2))
			}
		}
	}
}