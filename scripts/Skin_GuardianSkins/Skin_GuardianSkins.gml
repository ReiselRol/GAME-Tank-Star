var SkinID = argument[0]
var returnValue = ds_list_create()
switch (SkinID) {
	case 1 : ds_list_add(returnValue, GuardianG1, GuardianP1, GuardianC1, GuardianPr1, GuardianS1, c_maroon, c_red)
	default : ds_list_add(returnValue, GuardianG0, GuardianP0, GuardianC0, GuardianPr0, GuardianS0, c_gray, c_dkgray)
}
return returnValue