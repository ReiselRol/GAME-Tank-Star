var SkinID = argument[0]
var returnValue = ds_list_create()
switch (SkinID) {
	default : ds_list_add(returnValue, JudgeG0, JudgeP0, JudgeC0, JudgePr0, JudgeS0, c_gray, c_dkgray)
}
return returnValue