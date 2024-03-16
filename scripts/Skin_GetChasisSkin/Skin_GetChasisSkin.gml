var SkinID = argument[0]
var returnValue = ds_list_create()
switch (SkinID) {
	case 1 : ds_list_add(returnValue, CartG1, CartP1, CartC1, CartPr1, CartS1) break
	case 2 : ds_list_add(returnValue, CartG2, CartP2, CartC2, CartPr2, CartS2) break
	default : ds_list_add(returnValue, CartG0, CartP0, CartC0, CartPr0, CartS0) break
}
return returnValue