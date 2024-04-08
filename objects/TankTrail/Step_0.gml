
if (Trail_Disapear > 0) Trail_Disapear --
else {
	if (image_alpha > 0.7) image_alpha -= 0.005
	else instance_destroy()
}
