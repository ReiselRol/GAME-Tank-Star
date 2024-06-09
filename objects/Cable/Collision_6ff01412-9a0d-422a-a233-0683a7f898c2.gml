/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (instance_exists(Cable_TankID)){
	if (other.Damage_Team != Cable_TankID.Tank_Team) instance_destroy()
}