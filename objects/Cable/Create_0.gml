/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var tile = 32
Cable_DetectionDistance = 120
Cable_MaxDistance = 30 * tile
Cable_initialX = x
Cable_initialY = y
Cable_InitialSpeed = 20
speed = Cable_InitialSpeed
image_xscale = 1.5
image_yscale = image_xscale
Cable_TimeMarking = G_SetTime(5)
Cable_MaxTimeToMark = G_SetTime(2.5)
Cable_TimeToMark = 0
Cable_vertical = true

Cable_IgnoreHittbox = noone

Cable_TankID = noone
Cable_Brother = noone
Cable_Returning = false

Cable_Stopped = false
Cable_BrotherSetted = false
Cable_Setted = true
Cable_Master = true
event_user(0)