var totalMatchsPlayed = global.Wins[0] + global.Wins[1]
if (totalMatchsPlayed > 0) {
	var changeDiference = Match_TotalMatchs - 1
	global.Defenders = (totalMatchsPlayed % changeDiference == 0) ? global.OldDefenders : (global.OldDefenders == 0 ? 1 : 0)
} else global.Defenders = global.OldDefenders == 0 ? 1 : 0