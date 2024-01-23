var touchingOtherTank = false
with (Tank_WalkingHitbox) touchingOtherTank = (place_meeting(x, y, HitboxTankWalking))
if (touchingOtherTank == true) {
	path_end()
	Tank_BotCooldownRoFindOtherPath = irandom(60*3)
}
