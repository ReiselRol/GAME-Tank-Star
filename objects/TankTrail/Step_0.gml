
if (Trail_Disapear > 0) Trail_Disapear --
else {
	if (image_alpha > 0) image_alpha -= 0.05
	else instance_destroy()
}
