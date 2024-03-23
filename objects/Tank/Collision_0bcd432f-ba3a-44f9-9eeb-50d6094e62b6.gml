/// @description Inserte aquí la descripción
if (other.Spike_isPlanted == false && other.speed <= 22 && Tank_Attacker == true) {
	instance_destroy(other)
	Tank_HasTheSpike = true
	AudioPlaySoundUnchangedPicth(SpikePickUp)
}