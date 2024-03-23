var Damager = argument[0]

if (Damager.Damage_Cooldown <= 0) {
	if (Damager.Damage_Team != Tank_Team) {
		Damager.Damage_Piercing --
		Damager.Damage_Cooldown = Damager.Damage_MaxCooldown
		if (Tank_Shield <= 0) {
			Tank_Health -= Damager.Damage_Damage
			AudioPlaySound(BulletImpact)
		}
		else {
			var diference = Tank_Shield - Damager.Damage_Damage
			if (Tank_Shield - Damager.Damage_Damage < 0) {
				Tank_Shield = 0
				Tank_Health += diference
				AudioPlaySound(BulletShieldBreaking)
			} else {
				Tank_Shield -= Damager.Damage_Damage
				AudioPlaySound(BulletShieldImpact)
			}
		}
		if (Tank_Health > 0) {
			Tank_HittedTime = 1
			if (Tank_IsABot) {
				if (instance_exists(Damager.Damage_From)) {
					Tank_BotEnemie_LastX = Damager.Damage_From.x
					Tank_BotEnemie_LastY = Damager.Damage_From.y
					if (Tank_Health > irandom(33)) Bot_PathEnemie()
					else Bot_SelectPosition()
				}
			}
		} else {
			var kills = 0
			var canPlaySound = false
			if (instance_exists(Damager.Damage_From)){
				Match_ShowUIKill(id,Damager)
				Damager.Damage_From.Tank_Money += 200 
				Damager.Damage_From.Tank_Kills ++
				kills = Damager.Damage_From.Tank_Kills
				if (Damager.Damage_From.Tank_KHability < Damager.Damage_From.Tank_MaxKHability) Damager.Damage_From.Tank_KHability ++
				with (Damager.Damage_From) {
					canPlaySound = (Tank_IsABot == false)
				}
				if (Damager.Damage_From.Tank_IsABot == true) {
					Damager.Damage_From.Tank_BotEnemie_LastX = -1	
					Damager.Damage_From.Tank_BotEnemie_LastY = -1	
				}
			} else Match_ShowUIKill(id,Damager)
			if (canPlaySound == true) {
				if (kills < 5) {
					var sound = audio_play_sound(TankKill, 2, false)
					audio_sound_pitch(sound, 1 + 0.15 * (kills - 2))
				}
			}
		}
		if (Damager.Damage_Piercing == 0) instance_destroy(Damager)
	}
}