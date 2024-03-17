/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var agent = id
if (instance_exists(Agent_Tank)) {
	if (Agent_Tank.Tank_IsABot == true) Agent1_IA()
	Agent1_E()
	Agent1_Q()
	Agent1_C()
	Agent1_K()
	Agent_Tank.Tank_HabilitiesSelected[0] = Agent_isCActived
	Agent_Tank.Tank_HabilitiesSelected[1] = Agent_isQActived
	Agent_Tank.Tank_HabilitiesSelected[2] = Agent_isStormHabilityActived
	Agent_Tank.Tank_HabilitiesSelected[3] = Agent_isUltiTime
	if (Agent_isUltiTime == false) with (Agent_Tank) Tank_BarManage("Electricity", agent.Agent_ElectricityBar, agent.Agent_TotalElectricityBar, 2)
	else with (Agent_Tank) Tank_BarManage("Electricity", agent.Agent_UltiTime, agent.Agent_MaxUltiTime, 2)
} else instance_destroy()