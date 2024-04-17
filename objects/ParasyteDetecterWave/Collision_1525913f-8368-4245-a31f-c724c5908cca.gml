/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (instance_exists(ParasyteDetecterWave_TankID)) {
	if (other.Tank_Team != ParasyteDetecterWave_TankID.Tank_Team) Match_MarkTank(other, ParasyteDetecterWave_Time)	
}