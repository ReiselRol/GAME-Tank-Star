/// @description Grid time
audio_stop_all()
randomise()
global.LDM = false
global.ActualID = 0
if (variable_global_exists("WinnedTeam") == false) global.WinnedTeam = -1
if (variable_global_exists("Match_Debugg") == false) global.Match_Debugg = false
if (variable_global_exists("Wins") == false)  global.Wins = [0,0]
if (variable_global_exists("BotsCustomized") == false ) global.BotsCustomized = false
else global.BotsCustomized = (global.BotsCustomized == -2) ? false : true
if (variable_global_exists("OldDefenders") == false) global.OldDefenders = irandom(1)
global.Defenders = global.OldDefenders
if (variable_global_exists("Match_Players") == false) global.Match_Players = ds_list_create()
Match_Minimap = Match_MakeMiniMap() 
instance_create_layer(x, y, "ZoneLayer", Match_BulletPierce)
instance_create_layer(x, y, "ParticlesLayer", Match_GroundParticle)
Match_MakeGrid()
Match_TotalMatchs = 5
Match_FirtsPositionSet = false
Match_IsShopTime = true
Match_ShopTime = G_SetTime(16)
Match_elo = 1800
Match_time = G_SetTime(60)
MatchFinishCooldown = G_SetTime(8)
Match_PlayerPlay = true
Match_TotalPlayersOnTeam = 5
Match_winner = -1
Match_finished = false
Match_Distance = 750 / Match_TotalPlayersOnTeam
Match_SpikeMatch = true
Match_UlimitedHabilities = false
Match_isAce = false
Match_DebugGridSurface = Match_MakeDebugGridSurface()

if (Match_SpikeMatch == true) Match_GenerateSpikeMatch(Match_elo)