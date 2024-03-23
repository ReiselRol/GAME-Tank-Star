var myInfo = ds_list_find_value(global.Match_Players, Tank_PlayerID)
myInfo[16] = false
myInfo[17] = Tank_Money

myInfo[21] = Tank_QHability
myInfo[22] = Tank_CHability
myInfo[23] = (Tank_KHability + 1 > Tank_MaxKHability) ? Tank_KHability : Tank_KHability + 1
ds_list_replace(global.Match_Players, Tank_PlayerID, myInfo)