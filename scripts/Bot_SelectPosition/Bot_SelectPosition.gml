var nextZone = irandom(2)
while (nextZone == Tank_BotZone) nextZone = irandom(2)
Tank_BotZone = nextZone
Bot_GoToZone()