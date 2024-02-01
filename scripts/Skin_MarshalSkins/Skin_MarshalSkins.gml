var SkinID = argument[0]
var returnValue = ds_list_create()
switch (SkinID) {
	case 1 : ds_list_add(returnValue, MarshalG1, MarshalP1, MarshalC1, MarshalPr1, MarshalS1, c_dkgray, make_color_rgb(180,145,45))
	default : ds_list_add(returnValue, MarshalG0, MarshalP0, MarshalC0, MarshalPr0, MarshalS0, c_gray, c_dkgray)
}
return returnValue