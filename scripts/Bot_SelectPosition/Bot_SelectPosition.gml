var toZones = 2
if (Tank_BotFirstTimeOnZone == false) toZones = 4
var nextZone = irandom(toZones)
while (nextZone == Tank_BotZone) nextZone = irandom(toZones)
Tank_BotZone = nextZone
Bot_GoToZone()