/// @description Props

// Load up
var agent = irandom(2) + 1
var colors = Skin_AgentSetColors(agent)
if (agent > 0) {
	var VTank_PrimaryColor = colors[0]
	var VTank_SecondaryColor = colors[1]
} else {
	var VTank_PrimaryColor = c_blue
	var VTank_SecondaryColor = c_dkgray
}
var VTank_GunPrimaryColor = VTank_PrimaryColor

var VTank_GunSecondaryColor = VTank_SecondaryColor
var VTank_GunPrimaryColor2 = VTank_PrimaryColor
var VTank_GunSecondaryColor2 = VTank_SecondaryColor

var VTank_GunID = irandom(11)
var VTank_SkinCannonPaint = Item_GetPainted()
var VTank_CannonSkin = irandom(2)

var VTank_GunID2 = -1
var VTank_SkinSecondaryCannonPaint = 0
var VTank_CannonSecondarySkin = 0

var VTank_Shield = 0
var VTank_Name = "User"
var VTank_PlayerID = global.ActualID

var VTank_SkinCartPaint = 0
var Alive = true
var VTank_Money = 800

var VTank_ScopeID = (irandom(5) == 0) ? irandom(2) : -1
var VTank_ScopeID2 = -1

var remainingK = 0
var remainingC = 0
var remainingQ = 0


//

if (Tank_GunGetLevel(VTank_GunID) == 2 && VTank_ScopeID > 1) VTank_ScopeID = 1
else if (Tank_GunGetLevel(VTank_GunID) == 3 && VTank_ScopeID > 0) VTank_ScopeID = 0

//
if (ds_list_size(global.Match_Players) < Match.Match_TotalPlayersOnTeam * 2) {
	ds_list_add(global.Match_Players, [VTank_PrimaryColor, VTank_SecondaryColor, VTank_GunPrimaryColor,
									   VTank_GunSecondaryColor, VTank_GunPrimaryColor2, VTank_GunSecondaryColor2,
									   VTank_GunID, VTank_SkinCannonPaint, VTank_CannonSkin,
									   VTank_GunID2, VTank_SkinSecondaryCannonPaint, VTank_CannonSecondarySkin,
									   VTank_Shield, VTank_Name, VTank_PlayerID, VTank_SkinCartPaint, Alive, VTank_Money,
									   VTank_ScopeID, VTank_ScopeID2, agent, remainingQ, remainingC, remainingK])
} else {
	
	var Tank_Info = ds_list_find_value(global.Match_Players, global.ActualID)
	agent = Tank_Info[20]
	remainingQ = Tank_Info[21]
	remainingC = Tank_Info[22]
	remainingK = Tank_Info[23]
	
	if (Tank_Info[16] == true) {

		VTank_PrimaryColor = Tank_Info[0]
		VTank_SecondaryColor = Tank_Info[1]
		VTank_GunPrimaryColor = Tank_Info[2]
		
		VTank_GunSecondaryColor = Tank_Info[3]
		VTank_GunPrimaryColor2 = Tank_Info[4]
		VTank_GunSecondaryColor2 = Tank_Info[5]
		
		VTank_GunID = Tank_Info[6]
		VTank_SkinCannonPaint = Tank_Info[7]
		VTank_CannonSkin = Tank_Info[8]

		VTank_GunID2 = Tank_Info[9]
		VTank_SkinSecondaryCannonPaint = Tank_Info[10]
		VTank_CannonSecondarySkin = Tank_Info[11]

		VTank_Shield = Tank_Info[12]
		VTank_Name = Tank_Info[13]
		VTank_PlayerID = Tank_Info[14]
		VTank_SkinCartPaint = Tank_Info[15]
		VTank_Money = Tank_Info[17]
		
		VTank_ScopeID = Tank_Info[18]
		VTank_ScopeID2 = Tank_Info[19]
		
	} else {
		
		VTank_PrimaryColor = Tank_Info[0]
		VTank_SecondaryColor = Tank_Info[1]
		VTank_GunPrimaryColor = VTank_PrimaryColor

        VTank_GunSecondaryColor = VTank_SecondaryColor
		VTank_GunPrimaryColor2 = VTank_PrimaryColor
		VTank_GunSecondaryColor2 = VTank_SecondaryColor
		
		VTank_Name = Tank_Info[13]
		VTank_PlayerID = Tank_Info[14]
		VTank_Money = Tank_Info[17]
		
	}	
	
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////
///                                                                                                   ///
///                                       P R O P E R T I E S                                         ///
///                                                                                                   ///
/////////////////////////////////////////////////////////////////////////////////////////////////////////

// General Props
Tank_RecentlyKill = false
Tank_SlowDebuffTime = 0
Tank_Flashed = false
Tank_Marked = false
Tank_CanScope = true
Tank_CanShoot = true
Tank_AgentID = agent
Tank_Money = VTank_Money
Tank_PlayerID = VTank_PlayerID
Tank_RespectTankColors = false
Tank_CanShowKillUI = true
Tank_MainCamera = true
Tank_Name = VTank_Name
Tank_MaxHealth = 100
Tank_MaxShield = 50
Tank_Shield = VTank_Shield

Tank_Health = Tank_MaxHealth
Tank_IsABot = false
Tank_Scale = 1.5
Tank_Team = 0
Tank_Kills = 0
Tank_DropCooldown = 0
Tank_MaxDropCooldown = 60
Tank_IsInvisible = false
Tank_Attacker = false

Tank_GunID = VTank_GunID  //Gun 1
Tank_SkinCannonPaint = VTank_SkinCannonPaint
Tank_CannonSkin = VTank_CannonSkin
Tank_ScopeID = VTank_ScopeID
Skin_SetPrimaryScopeSkin(VTank_ScopeID)
Tank_GunID2 = VTank_GunID2 //Gun 2
Tank_SkinSecondaryCannonPaint = VTank_SkinSecondaryCannonPaint
Tank_CannonSecondarySkin = VTank_CannonSecondarySkin
Tank_ScopeID2 = VTank_ScopeID2
Skin_SetSecondaryScopeSkin(VTank_ScopeID2)
Tank_SkinCartPaint = VTank_SkinCartPaint
Tank_HasTheSpike = false
Tank_Bars = ds_list_create()

Tank_QHability = remainingQ
Tank_CHability = remainingC
Tank_KHability = remainingK

// Controls

Tank_IsPlayingWithController = false
Tank_DrawPreShoot = true
Tank_HabilitiesSelected = [false, false, false, false]
Tank_UppKey = ord("W")
Tank_DownKey = ord("S")
Tank_LeftKey = ord("A")
Tank_RightKey = ord("D")
Tank_ShootKey = mb_left
Tank_ShootKeyController = gp_shoulderrb
Tank_ReloadKey = ord("R")
Tank_DropKey = ord("G")
Tank_ReloadKeyController = gp_shoulderr
Tank_ActionKey = ord("F")
Tank_ActionKeyController = gp_face3
Tank_ScoopingKey = mb_right
Tank_ScoopingKeyController = gp_shoulderlb
Tank_BombKey = ord("4")
Tank_EKey = ord("E")
Tank_QKey = ord("Q")
Tank_CKey = ord("C")
Tank_KKey = ord("X")
Tank_DropBombKey = vk_alt


Tank_IsDropping = false
Tank_IsScooping = false
Tank_IsPointingUpp = false
Tank_IsPointingDown = false
Tank_IsPointingLeft = false
Tank_IsPointingRight = false
Tank_IsShooting = false
Tank_IsReloading = false
Tank_IsShootTapping = false
Tank_IsDoingAction = false
Tank_IsBombKeyPressed = false
Tank_DropBombKeyPressed = false

Tank_EKeyPressed = false
Tank_QKeyPressed = false
Tank_CKeyPressed = false
Tank_KKeyPressed = false

Tank_PointingTo = 0
Tank_CanPlant = false
Tank_PlantingTime = 0
Tank_PlantingTimeNeeded = G_SetTime(4)

// Customization

Tank_PrimaryColor = VTank_PrimaryColor
Tank_SecondaryColor = VTank_SecondaryColor

Tank_GunPrimaryColor = VTank_GunPrimaryColor
Tank_GunSecondaryColor = VTank_GunSecondaryColor

Tank_GunPrimaryColor2 = VTank_GunPrimaryColor2
Tank_GunSecondaryColor2 = VTank_GunSecondaryColor2

Tank_GlowColor = c_red
Tank_IsGlowActive = false
Tank_WheelsSkin = 0
Tank_SkinWheel = Wheels0
Tank_AgentUI = noone

Skin_SetPrimarySkin(Tank_GunID, Tank_CannonSkin)
Skin_SetSecondarySkin(Tank_GunID2, Tank_CannonSecondarySkin)

// Animation 

Tank_DrawStormHandcannon = false
Tank_TrailColor = c_black
Tank_Angle = 0
Tank_HittedTime = 0

Tank_StartedDefusing = false
Tank_FirstMove = false;
Tank_MovementSound = -1;
Tank_PlatingSpikeSound = noone

Tank_GunAnimationKnockback = 0

// Gun Set Up

Tank_WeaponSelected = 1
Tank_GunCooldown = 0
Tank_GunX = x
Tank_GunY = y
Tank_GunAutoReuse = Tank_GunGetAutoReuse(Tank_GunID)
Tank_GunAmmo = Tank_GunGetAmmo(Tank_GunID)
Tank_GunAmmo2 = Tank_GunGetAmmo(Tank_GunID2)
Tank_GunMaxAmmo = Tank_GunGetMaxAmmo(Tank_GunID)
Tank_GunMaxAmmo2 = Tank_GunGetMaxAmmo(Tank_GunID2)

// Physics

Tank_WalkingHitbox = instance_create_layer(x, y, "TankHitboxLayer", HitboxTankWalking)
Tank_WalkingHitbox.image_xscale = Tank_Scale
Tank_WalkingHitbox.image_yscale = Tank_Scale
Tank_Hsp = 0
Tank_Vsp = 0
Tank_NormalMvSpeed = 6
Tank_MvSpeed = Tank_NormalMvSpeed

// Camera Seetings

Camera_CameraHitbox = instance_create_layer(x, y, "CameraHitboxLayer", HitboxCamera)
Camera_CameraHitbox.Camera_From = id
Camera_CameraHitbox.Camera_Main = Tank_MainCamera
Camera_Zoom = 0.6
Camera_DefautZoom = 0.6
Camera_MaxZoom = 2
Tank_RefreshCamera()

// Post Create

image_alpha = 1
image_xscale = Tank_Scale
image_yscale = Tank_Scale
event_user(0)

Skin_SetChasisSkin(Tank_AgentID)
if (Tank_AgentID > 0) Agent_SetAgent(Tank_AgentID)
Tank_FixWeaponSelection()

Tank_GetAllHabilities()