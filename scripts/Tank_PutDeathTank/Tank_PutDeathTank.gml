var DT = instance_create_layer(x, y, "TankTrailLayer", TankDeath)
var ID = id
DT.Tank_PlayerID = Tank_PlayerID
DT.Tank_Team = Tank_Team
DT.Tank_CartSkin = Tank_AgentID
DT.Tank_Angle = Tank_Angle
DT.Tank_SkinCartPaint = Tank_SkinCartPaint
DT.Tank_Scale = Tank_Scale
with (DT){
	Skin_SetChasisSkin(ID.Tank_AgentID)	
}