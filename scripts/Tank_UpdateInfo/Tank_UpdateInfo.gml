var myInfo = ds_list_find_value(global.Match_Players, Tank_PlayerID)
myInfo[16] = false
myInfo[17] = Tank_Money
ds_list_replace(global.Match_Players, Tank_PlayerID, myInfo)