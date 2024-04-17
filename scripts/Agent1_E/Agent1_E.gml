if (Agent_ElectricityBar > 0) {
		if (Agent_Tank.Tank_EKeyPressed == true) {
			if (Agent_isStormHabilityActived == true) Agent_isStormHabilityActived = false
			else {
				Agent_isStormHabilityActived = true
				Agent_isQActived = false
				Agent_isCActived = false
			}
		} else if (Agent_Tank.Tank_IsShooting == true) Agent_isStormHabilityActived = false
		if (Agent_isStormHabilityActived == true) {
			if (Agent_Tank.Tank_IsScooping == true) {
				Agent_isStormHabilityActived = false
				if (Agent_ElectricityBar - Agent_DischargeElectricityForce >= Agent_ElectricDashCost)	{
					Agent_ElectricityBar -= Agent_ElectricDashCost
					Agent_DashTime = Agent_MaxDashTime
					with (Agent_Tank) AudioPlaySound(StormDashing)
				}
			}
			else if (Agent_StatsChanged == false) {
				Agent_StatsChanged = true
				Agent_Tank.Tank_NormalMvSpeed += Agent_RunningSpeed
				Agent_Tank.Tank_CanShoot = false
				Agent_Tank.Tank_CanScope = false
				Agent_Tank.Tank_TrailColor = c_aqua
				with (Agent_Tank) AudioPlaySound(StormStartRunning)
			}
			Agent_ElectricityBar -= Agent_DischargeElectricityForce
		} else {
			if (Agent_ElectricityBar < Agent_TotalElectricityBar) Agent_ElectricityBar += Agent_ChargeElectricityForce
			if (Agent_StatsChanged == true) {
				Agent_StatsChanged = false
				Agent_Tank.Tank_NormalMvSpeed -= Agent_RunningSpeed
				Agent_Tank.Tank_CanShoot = true
				Agent_Tank.Tank_CanScope = true
				Agent_Tank.Tank_TrailColor = c_black
				with (Agent_Tank) AudioPlaySound(StormStopRunning)
			}
		}
	} else if (Agent_ElectricityBar < Agent_TotalElectricityBar) {
		if (Agent_ElectricityBar <= 0) Agent_isStormHabilityActived = false
		Agent_ElectricityBar += Agent_ChargeElectricityForce
	}
	
	if (Agent_ElectricityBar > Agent_TotalElectricityBar) Agent_TotalElectricityBar = Agent_TotalElectricityBar
	else if (Agent_ElectricityBar < 0) Agent_ElectricityBar = 0
	if (Match.Match_IsShopTime == true || Match.Match_UlimitedHabilities == true || Agent_isUltiTime == true) Agent_ElectricityBar = Agent_TotalElectricityBar
	if (Agent_DashTime > 0) {
		Agent_DashTime --
		Agent_Tank.Tank_MvSpeed += Agent_DashForce
		Agent_Tank.Tank_IsScooping = false
		Agent_Tank.Tank_TrailColor = c_yellow
	} else if (Agent_isStormHabilityActived == false) Agent_Tank.Tank_TrailColor = c_black