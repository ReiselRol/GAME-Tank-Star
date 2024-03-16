var agent = id
if (instance_exists(Agent_Tank)) {
	if (Agent_EyeCooldown > 0 && Match.Match_ShopTime == false) Agent_EyeCooldown--
	Agent2_C()
	Agent2_Q()
	Agent_Tank.Tank_HabilitiesSelected[0] = Agent_GonnaThrowGhostCross
	Agent_Tank.Tank_HabilitiesSelected[1] = Agent_TpSelected == true || Agent_isTping == true
} else instance_destroy()