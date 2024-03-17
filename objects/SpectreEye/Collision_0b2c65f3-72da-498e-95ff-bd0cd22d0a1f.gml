/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (instance_exists(SpectreEye_TankId)){
	if (other.Damage_Team != SpectreEye_TankId.Tank_Team) {
		SpectreEyeIsDespawinng = true
		SpectreEye_IsSpawning = false
	}
}