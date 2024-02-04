var SkinID = argument[0]
var returnValue = ds_list_create()
switch (SkinID) {
	case 1 : ds_list_add(returnValue, ClassicG1, ClassicP1, ClassicC1, ClassicPr1, ClassicS1, c_silver, c_gray)
	case 2 : ds_list_add(returnValue, ClassicG2, ClassicP2, ClassicC2, ClassicPr2, ClassicS2, c_purple, c_fuchsia)
	default : ds_list_add(returnValue, ClassicG0, ClassicP0, ClassicC0, ClassicPr0, ClassicS0, c_gray, c_dkgray)
}
return returnValue