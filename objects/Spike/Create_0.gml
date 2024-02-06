/// @description Spike Properties
// Puede escribir su código en este editor
Spike_isPlanted = false
Spike_isDefusing = false
Spike_isDefused = false
Spike_Scale = 0.8
Spike_TimeToExplode = G_SetTime(45)
var secondsToDefuse = 7
Spike_AllTimeNeedToDefuse = G_SetTime(secondsToDefuse)
Spike_MidddleDefusingTime = G_SetTime(secondsToDefuse / 2)
Spike_DefusedTime = 0

//Animation

Spike_ChangeClockCicleTime = G_SetTime(12)
Spike_ClockToChangeColor = G_SetTime(1)
Spike_ClockTime = Spike_ClockToChangeColor
Spike_Color = c_white

//Post Create 

image_xscale = Spike_Scale
image_yscale = Spike_Scale