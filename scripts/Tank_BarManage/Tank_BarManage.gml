var barID = argument[0]
var barActualTime = argument[1]
var barLimitTime = argument[2]
var barImage = argument[3]
if (Tank_MainCamera == true) {
	var barIndex = Tank_BarFindIndex(barID)
	if (barIndex != -1) {
		var actualBar = ds_list_find_value(Tank_Bars, barIndex)
		actualBar[1] = barActualTime
		actualBar[2] = barLimitTime
		ds_list_replace(Tank_Bars, barIndex, actualBar)
	} else ds_list_add(Tank_Bars, [barID, barActualTime, barLimitTime, barImage])
}