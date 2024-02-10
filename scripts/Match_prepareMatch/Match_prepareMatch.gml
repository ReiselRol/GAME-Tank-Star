randomise()
global.Wins = [0,0]
global.BotsCustomized = -2
global.WinnedTeam = -1
ds_list_destroy(global.Match_Players)
global.OldDefenders = irandom(1)
global.Match_Players = ds_list_create()