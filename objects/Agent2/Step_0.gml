var agent = id
if (instance_exists(Agent_Tank)) {
	if (Agent_Tank.Tank_IsABot == true) Agent2_IA()
	Agent_Tank.Tank_DrawPreShoot = true
	if (Agent_EyeCooldown > 0 && Match.Match_ShopTime == false) Agent_EyeCooldown--
	Agent2_C()
	Agent2_Q()
	Agent2_E()
	Agent2_K()
	Agent_Tank.Tank_HabilitiesSelected[0] = Agent_GonnaThrowGhostCross
	Agent_Tank.Tank_HabilitiesSelected[1] = Agent_TpSelected == true || Agent_isTping == true
	with (Agent_Tank) {
		if (agent.Agent_EyeCooldown > 0) Tank_BarManage("Spectre Eye Recharge", agent.Agent_EyeCooldown, agent.Agent_MaxEyeCooldown, 3)
		else Tank_BarDelete("Spectre Eye Recharge")
	}
} else instance_destroy()