/// @description Drawing Mark
if (instance_exists(Mark_TankMarked)) {
	var mainTank = noone
	with (Tank) {
		if (Tank_MainCamera == true) {
			mainTank = id
			break
		}
	}
	if (instance_exists(mainTank)) {
		if (mainTank.Tank_Team != Mark_TankMarked.Tank_Team) {
			draw_sprite_ext(Mark_TankMarked.Tank_SkinCartGlow, Mark_TankMarked.image_index, Mark_TankMarked.x, Mark_TankMarked.y, Mark_TankMarked.Tank_Scale, Mark_TankMarked.Tank_Scale, Mark_TankMarked.Tank_Angle, c_yellow, Mark_TimeMark / Mark_TimeMaxMarked) 
			draw_sprite_ext(Mark_TankMarked.Tank_SkinCartGlow, Mark_TankMarked.image_index, Mark_TankMarked.x, Mark_TankMarked.y, Mark_TankMarked.Tank_Scale + 0.1, Mark_TankMarked.Tank_Scale + 0.1, Mark_TankMarked.Tank_Angle, c_orange, Mark_TimeMark / Mark_TimeMaxMarked) 	
			draw_sprite_ext(Mark_TankMarked.Tank_SkinCartGlow, Mark_TankMarked.image_index, Mark_TankMarked.x, Mark_TankMarked.y, Mark_TankMarked.Tank_Scale + 0.2, Mark_TankMarked.Tank_Scale + 0.2, Mark_TankMarked.Tank_Angle, c_red, Mark_TimeMark / Mark_TimeMaxMarked)
	
			draw_sprite_ext((Mark_TankMarked.Tank_WeaponSelected == 1) ? Mark_TankMarked.Tank_SkinCannonGlow : Mark_TankMarked.Tank_SkinSecondaryCannonGlow, Mark_TankMarked.image_index, Mark_TankMarked.x, Mark_TankMarked.y, Mark_TankMarked.Tank_Scale, Mark_TankMarked.Tank_Scale, Mark_TankMarked.Tank_PointingTo, c_yellow, Mark_TimeMark / Mark_TimeMaxMarked) 
			draw_sprite_ext((Mark_TankMarked.Tank_WeaponSelected == 1) ? Mark_TankMarked.Tank_SkinCannonGlow : Mark_TankMarked.Tank_SkinSecondaryCannonGlow, Mark_TankMarked.image_index, Mark_TankMarked.x, Mark_TankMarked.y, Mark_TankMarked.Tank_Scale + 0.1, Mark_TankMarked.Tank_Scale + 0.1, Mark_TankMarked.Tank_PointingTo, c_orange, Mark_TimeMark / Mark_TimeMaxMarked) 	
			draw_sprite_ext((Mark_TankMarked.Tank_WeaponSelected == 1) ? Mark_TankMarked.Tank_SkinCannonGlow : Mark_TankMarked.Tank_SkinSecondaryCannonGlow, Mark_TankMarked.image_index, Mark_TankMarked.x, Mark_TankMarked.y, Mark_TankMarked.Tank_Scale + 0.2, Mark_TankMarked.Tank_Scale + 0.2, Mark_TankMarked.Tank_PointingTo, c_red, Mark_TimeMark / Mark_TimeMaxMarked)
		}
	}
}