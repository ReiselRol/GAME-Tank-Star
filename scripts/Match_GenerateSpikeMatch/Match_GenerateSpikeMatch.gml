var elo = argument[0]
var nextZone = irandom(2)
var teamMates = Match_TotalPlayersOnTeam
var reducer = (Match_PlayerPlay == true) ? 0 : 1
Match_ChooseDefendingTeam()
global.ActualID = 0
if (global.Defenders == 0) {
	if (Match_PlayerPlay == true) {
		var tank = instance_create_layer(HitboxZone1.x - Match_Distance * 2, HitboxZone1.y, "TankHitboxLayer", Tank)
		if (global.WinnedTeam == tank.Tank_Team) tank.Tank_Money += 3000
		else if (global.WinnedTeam > -1) tank.Tank_Money += 1350
		tank.Tank_Attacker = true
	}
	for (var i = 0; i < Match_TotalPlayersOnTeam; i++) {
		if (Match_PlayerPlay == false){
			if (i > 0) global.ActualID ++
		} else global.ActualID ++
		var bot = Make_Bot( HitboxZone2.x - Match_Distance * 2 + Match_Distance * (i - 1), HitboxZone2.y, 1 , elo)
	}
	with (BotTank) {
		Tank_GlowColor = Bot_GetBotColor()
		Tank_IsGlowActive = true
	}
	for (var i = 1 - reducer; i < teamMates; i++){
		global.ActualID ++
		var bot =  Make_Bot( HitboxZone1.x - Match_Distance * 2 + Match_Distance * (i), HitboxZone1.y, 0 , elo)
		with (bot) {
			Tank_Attacker = true
			if (i == 0) {
				Tank_MainCamera = true
				Camera_CameraHitbox.Camera_Main = Tank_MainCamera	
			} else if (i == 1) Tank_BotZone = 5
			else Tank_BotZone = nextZone
			Tank_GlowColor = Bot_GetBotColor()
			Tank_IsGlowActive = true
		}
	}
} else {
	if (Match_PlayerPlay == true) { 
		var tank = instance_create_layer( HitboxZone2.x - Match_Distance * 2, HitboxZone2.y, "TankHitboxLayer", Tank)
		if (global.WinnedTeam == tank.Tank_Team) tank.Tank_Money += 3000
		else if (global.WinnedTeam > -1) tank.Tank_Money += 1350
	}
	for (var i = 0; i < Match_TotalPlayersOnTeam; i++) {
		if (Match_PlayerPlay == false){
			if (i > 0) global.ActualID ++
		} else global.ActualID ++
		var bot = Make_Bot(HitboxZone1.x - Match_Distance * 2 + Match_Distance * (i - 1), HitboxZone1.y, 1 , elo)
		bot.Tank_Attacker = true
	}
	var setted = false
	with (BotTank) {
		if (setted == false) Tank_BotZone = 5
		else Tank_BotZone = nextZone
		Tank_GlowColor = Bot_GetBotColor()
		Tank_IsGlowActive = true
		
	}
	for (var i = 1 - reducer; i < teamMates; i++) {
		global.ActualID ++
		var bot = Make_Bot(HitboxZone2.x - Match_Distance * 2 + Match_Distance * (i), HitboxZone2.y, 0 , elo)
		with (bot) {
			if (i == 0) {
				Tank_MainCamera = true
				Camera_CameraHitbox.Camera_Main = Tank_MainCamera	
			}
			Tank_Team = 0
			Tank_GlowColor = Bot_GetBotColor()
			Tank_IsGlowActive = true
		}
	}
}