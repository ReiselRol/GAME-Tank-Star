var elo = argument[0]
var nextZone = irandom(2)
var teamMates = Match_TotalPlayersOnTeam
var reducer = (Match_PlayerPlay == true) ? 0 : 1
global.ActualID = 0
if (Match_DefendingTeam == 0) {
	if (Match_PlayerPlay == true) var tank = instance_create_layer(HitboxZone1.x - Match_Distance * 2, HitboxZone1.y, "TankHitboxLayer", Tank)
	for (var i = 0; i < Match_TotalPlayersOnTeam; i++) {
		global.ActualID ++
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
			if (i == 0) {
				Tank_MainCamera = true
				Camera_CameraHitbox.Camera_Main = Tank_MainCamera	
			}
			Tank_BotZone = nextZone
			Tank_GlowColor = Bot_GetBotColor()
			Tank_IsGlowActive = true
		}
	}
} else {
	if (Match_PlayerPlay == true) var tank = instance_create_layer( HitboxZone2.x - Match_Distance * 2, HitboxZone2.y, "TankHitboxLayer", Tank)
	for (var i = 0; i < Match_TotalPlayersOnTeam; i++) {
		global.ActualID ++
		Make_Bot(HitboxZone1.x - Match_Distance * 2 + Match_Distance * (i - 1), HitboxZone1.y, 1 , elo)
	}
	with (BotTank) {
		Tank_GlowColor = Bot_GetBotColor()
		Tank_IsGlowActive = true
		Tank_BotZone = nextZone
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