/// @description Inputs
Tank_MvSpeed = Tank_NormalMvSpeed
if (Tank_Health <= 0) instance_destroy()
else {
	if (Tank_IsABot == false) Tank_GetInput()
	else Tank_GetBotInput()
}
Tank_Scooping()
