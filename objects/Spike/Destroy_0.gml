/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (Spike_isPlanted == true) {
	audio_play_sound(SpikeExplosionSound, 10, false)
	audio_play_sound(SpikeExplosionRemainingSound, 1, false)
	var expl = instance_create_layer(x, y, "ZoneLayer", SpikeExplosion)
	Damagable_MakeDamagable(expl, 999, noone, 1000, 1, [false])
}