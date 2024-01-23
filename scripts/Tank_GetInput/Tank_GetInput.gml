if (Tank_IsPlayingWithController == false) {
	Tank_IsPointingUpp = keyboard_check(Tank_UppKey)
	Tank_IsPointingDown = keyboard_check(Tank_DownKey)
	Tank_IsPointingLeft = keyboard_check(Tank_LeftKey)
	Tank_IsPointingRight = keyboard_check(Tank_RightKey)
	Tank_PointingTo = point_direction(x, y, mouse_x, mouse_y)
	Tank_IsShooting = mouse_check_button(Tank_ShootKey)
	Tank_IsReloading = keyboard_check(Tank_ReloadKey)
	Tank_IsShootTapping = mouse_check_button_pressed(Tank_ShootKey)
	Tank_IsDoingAction = keyboard_check_pressed(Tank_ActionKey)
	Tank_IsScooping = mouse_check_button(Tank_ScoopingKey)
	Tank_IsDropping = keyboard_check_pressed(Tank_DropKey)
} else {
	var deadzone = 0.2
	Tank_IsPointingUpp = (gamepad_axis_value(5,gp_axislv) < -deadzone)
	Tank_IsPointingDown = (gamepad_axis_value(5,gp_axislv) > deadzone)
	Tank_IsPointingLeft = (gamepad_axis_value(5,gp_axislh) < -deadzone)
	Tank_IsPointingRight = (gamepad_axis_value(5,gp_axislh) > deadzone)
	if (((gamepad_axis_value(5,gp_axisrh) > deadzone) || (gamepad_axis_value(5,gp_axisrh) < -deadzone)) || ((gamepad_axis_value(5,gp_axisrv) > deadzone) || (gamepad_axis_value(5,gp_axisrv) < -deadzone)) ){
		Tank_PointingTo = point_direction(0, 0, gamepad_axis_value(5,gp_axisrh), gamepad_axis_value(5,gp_axisrv))
	} else if (((gamepad_axis_value(5,gp_axislh) > deadzone) || (gamepad_axis_value(5,gp_axislh) < -deadzone)) || ((gamepad_axis_value(5,gp_axislv) > deadzone) || (gamepad_axis_value(5,gp_axislv) < -deadzone)) ){
		Tank_PointingTo = point_direction(0, 0, gamepad_axis_value(5,gp_axislh), gamepad_axis_value(5,gp_axislv))
	}
	Tank_IsShooting = gamepad_button_check(5, Tank_ShootKeyController)
	Tank_IsScooping = gamepad_button_check(5, Tank_ScoopingKeyController)
	Tank_IsReloading = gamepad_button_check(5, Tank_ReloadKeyController)
	Tank_IsShootTapping = gamepad_button_check_pressed(5, Tank_ShootKeyController)
	Tank_IsDoingAction = gamepad_button_check_pressed(5, Tank_ActionKeyController)
	if (gamepad_button_check_pressed(5, gp_face4)) {
		if (Tank_WeaponSelected == 1) Tank_SwitchWeapon(2)
		else Tank_SwitchWeapon(1)
	}
}