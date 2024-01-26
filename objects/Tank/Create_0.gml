/// @description Props

// Load up

var VTank_PrimaryColor = c_blue
var VTank_SecondaryColor = c_dkgray
var VTank_GunPrimaryColor = VTank_PrimaryColor

var VTank_GunSecondaryColor = VTank_SecondaryColor
var VTank_GunPrimaryColor2 = VTank_PrimaryColor
var VTank_GunSecondaryColor2 = VTank_SecondaryColor

var VTank_GunID = irandom(10)
var VTank_SkinCannonPaint = 0
var VTank_CannonSkin = 0

var VTank_GunID2 = -1
var VTank_SkinSecondaryCannonPaint = 0
var VTank_CannonSecondarySkin = 0

var VTank_Shield = 0
var VTank_Name = "User"
var VTank_PlayerID = global.ActualID

var VTank_SkinCartPaint = 0
var Alive = true
var VTank_Money = 800

if (ds_list_size(global.Match_Players) < Match.Match_TotalPlayersOnTeam * 2) {
	ds_list_add(global.Match_Players, [VTank_PrimaryColor, VTank_SecondaryColor, VTank_GunPrimaryColor,
									   VTank_GunSecondaryColor, VTank_GunPrimaryColor2, VTank_GunSecondaryColor2,
									   VTank_GunID, VTank_SkinCannonPaint, VTank_CannonSkin,
									   VTank_GunID2, VTank_SkinSecondaryCannonPaint, VTank_CannonSecondarySkin,
									   VTank_Shield, VTank_Name, VTank_PlayerID, VTank_SkinCartPaint, Alive, VTank_Money])
} else {
	
	var Tank_Info = ds_list_find_value(global.Match_Players, global.ActualID)
	
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

Tank_GunID = VTank_GunID  //Gun 1
Tank_SkinCannonPaint = VTank_SkinCannonPaint
Tank_CannonSkin = VTank_CannonSkin

Tank_GunID2 = VTank_GunID2 //Gun 2
Tank_SkinSecondaryCannonPaint = VTank_SkinSecondaryCannonPaint
Tank_CannonSecondarySkin = VTank_CannonSecondarySkin

Tank_CartSkin = 0
Tank_SkinCartPaint = VTank_SkinCartPaint

// Controls

Tank_IsPlayingWithController = false
Tank_DrawPreShoot = true

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

Tank_PointingTo = 0

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

Skin_SetChasisSkin(Tank_CartSkin)
Skin_SetPrimarySkin(Tank_GunID, Tank_CannonSkin)
Skin_SetSecondarySkin(Tank_GunID2, Tank_CannonSecondarySkin)

// Animation 

Tank_Angle = 0
Tank_HittedTime = 0

// Gun Set Up

Tank_WeaponSelected = 1
Tank_GunCooldown = 0
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
Tank_FixWeaponSelection()