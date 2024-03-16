var barID = argument[0]
var barIndex = -1
var size =  ds_list_size(Tank_Bars)
for (var i = 0; i < size; i++) {
	var actualBar = ds_list_find_value(Tank_Bars, i)
	if (actualBar[0] == barID) {
		barIndex = i
		break
	}
}
return barIndex