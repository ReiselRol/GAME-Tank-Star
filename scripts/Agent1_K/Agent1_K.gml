if (Agent_Tank.Tank_KKeyPressed == true && Agent_Tank.Tank_KHability == Agent_Tank.Tank_MaxKHability && Match.Match_IsShopTime == false) {
	Agent_isUltiTime = true
	with (Agent_Tank) AudioPlaySound(StormUltiing)
	Agent_Tank.Tank_KHability = 0
	Agent_Tank.Tank_DrawStormHandcannon = true
	Agent_Tank.Tank_CHability += (Agent_Tank.Tank_CHability == 0) ? 1 : 0
	Agent_Tank.Tank_QHability += (Agent_Tank.Tank_QHability < Agent_Tank.Tank_MaxQHability) ? 1 : 0
}
if (Agent_isUltiTime == true) {
	if (Agent_UltiTime > 0) {
		Agent_UltiTime--
		if (Agent_Tank.Tank_IsShooting == true) Agent1_UltiShoot()
		Agent_ElectricityBar = Agent_TotalElectricityBar
	} else {
		Agent_isUltiTime = false
		Agent_ElectricityBar = 0
		Agent_Tank.Tank_DrawStormHandcannon = false
	}
}	