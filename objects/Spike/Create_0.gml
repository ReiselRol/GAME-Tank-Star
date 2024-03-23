/// @description Spike Properties
// Puede escribir su código en este editor
AudioPlaySoundUnchangedPicth(SpikeOnTheFloor)
Spike_isPlanted = false
Spike_isDefusing = false
Spike_isDefused = false
Spike_Scale = 0.8
Spike_TimeToExplode = G_SetTime(45)
var secondsToDefuse = 7
Spike_AllTimeNeedToDefuse = G_SetTime(secondsToDefuse)
Spike_MidddleDefusingTime = G_SetTime(secondsToDefuse / 2)
Spike_DefusedTime = 0
Spike_DefusingSound = noone

//Animation

Spike_ChangeClockCicleTime = G_SetTime(45/2)
Spike_ClockToChangeColor = G_SetTime(1)
Spike_ClockTime = Spike_ClockToChangeColor
Spike_Color = c_white

//OnFloorAnimation

Spike_Direction = 0
Spike_RotateLeft = (irandom(1) == 0)
Spike_RotateSpeed = 20
speed = 0

//Post Create 

image_xscale = Spike_Scale
image_yscale = Spike_Scale