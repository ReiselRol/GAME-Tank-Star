var barID = argument[0]
if (Tank_MainCamera == true) {
	var barIndex = Tank_BarFindIndex(barID)
	if (barIndex != -1) ds_list_delete(Tank_Bars, barIndex)
}