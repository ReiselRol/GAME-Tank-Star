var GunID = (Tank_WeaponSelected == 1) ? Tank_GunID : Tank_GunID2
if (!(Tank_IsScooping == true && Tank_GunCanScoope(GunID))) {
	var isMoving = (Tank_IsPointingUpp == true || Tank_IsPointingDown == true || Tank_IsPointingLeft == true || Tank_IsPointingRight == true);
	if (isMoving == true && audio_is_playing(Tank_MovementSound) == false) {
		if (Tank_FirstMove == false) {
			Tank_MovementSound = AudioPlaySoundUnchangedPicth(MovementSound)
			Tank_FirstMove = true
		} else Tank_MovementSound = AudioPlaySoundUnchangedPicth(MiddleMovementSound)
	} else if (isMoving == false) {
		Tank_FirstMove = false
		audio_stop_sound(Tank_MovementSound)
	}
}