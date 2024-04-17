/// @description Agent Props
// Common Props

Agent_Tank = noone

// Unique Props

Agent_RunningSpeed = 2
Agent_TotalElectricityBar = 1
Agent_DischargeElectricityForce = 0.003
Agent_ChargeElectricityForce = Agent_DischargeElectricityForce / 4
Agent_ElectricityBar = Agent_TotalElectricityBar
Agent_ElectricDashCost = 0.25

Agent_isQActived = false
Agent_isCActived = false
Agent_isUltiTime = false
Agent_isStormHabilityActived = false
Agent_StatsChanged = false

Agent_GunCooldown = 0
Agent_GunMaxCooldown = 8
Agent_GunGamage = 10
Agent_MaxUltiTime = G_SetTime(15)
Agent_UltiTime = Agent_MaxUltiTime
Agent_MaxDashTime = 7
Agent_DashTime = 0
Agent_DashForce = Agent_RunningSpeed * 7