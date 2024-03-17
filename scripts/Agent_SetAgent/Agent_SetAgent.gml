var AgentID = argument[0]
var agentClass = noone
Tank_QHability = 0
Tank_CHability = 0
Tank_KHability = 0
Tank_MaxQHability = 0
Tank_MaxCHability = 0
Tank_MaxKHability = 0
if (AgentID == 1) { 
	agentClass = Agent1
	Tank_MaxQHability = 2
	Tank_MaxCHability = 1
	Tank_MaxKHability = 8
	Tank_QHability = Tank_MaxQHability
	Tank_CHability = Tank_MaxCHability
	Tank_KHability = Tank_MaxKHability
	Tank_AgentUI = Agent1UI
} else if (AgentID == 2){
	agentClass = Agent2
	Tank_MaxQHability = 2
	Tank_MaxCHability = 2
	Tank_MaxKHability = 6
	Tank_QHability = Tank_MaxQHability
	Tank_CHability = Tank_MaxCHability
	Tank_KHability = Tank_MaxKHability
	Tank_AgentUI = Agent2UI
}
var agent = instance_create_layer(0, 0, "UILayer", agentClass)
agent.Agent_Tank = id