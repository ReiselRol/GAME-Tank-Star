var killed = argument[0]
var killer = argument[1]
if (killer.Damage_isFromHabilities == false) {
	if (killed.Tank_CanShowKillUI == true){
		killed.Tank_CanShowKillUI = false
		var totalKillInfo = 0
		with (KillInfo) totalKillInfo ++
		var UIKill = instance_create_layer(-400, -400, "UILayer", KillInfo)
		UIKill.KillInfo_KillerTeam = (killed.Tank_Team == 0) ? 1 : 0
		UIKill.KillInfo_FromExist = (killer != noone)
		if (killed.Tank_IsABot == false) UIKill.KillInfo_Main = 1
		if (killer.Tank_IsABot == false) UIKill.KillInfo_Main = 0
		UIKill.KillInfo_TotalKillInfo = totalKillInfo
		UIKill.Tank2_PrimaryColor = killed.Tank_PrimaryColor
		UIKill.Tank2_SecondaryColor = killed.Tank_SecondaryColor
		UIKill.Tank2_SkinWheel = killed.Tank_SkinWheel
		UIKill.Tank2_SkinCartPrimary = killed.Tank_SkinCartPrimary
		UIKill.Tank2_SkinCartSecondary = killed.Tank_SkinCartSecondary
		UIKill.Tank2_SkinCartChasis = killed.Tank_SkinCartChasis
		UIKill.Tank2_SkinCartPainted = killed.Tank_SkinCartPainted
		UIKill.Tank2_SkinCartPaint = killed.Tank_SkinCartPaint
		UIKill.Tank2_SkinCartGlow = killed.Tank_SkinCartGlow
		UIKill.Tank2_GlowColor = killed.Tank_GlowColor
		UIKill.KillInfo_KillerGun = killer.KillInfo_KillerGun
		if (killed.Tank_WeaponSelected == 1) {
			UIKill.Tank2_SkinCannonGlow = killed.Tank_SkinCannonGlow
			UIKill.Tank2_SkinCannonPainted = killed.Tank_SkinCannonPainted
			UIKill.Tank2_SkinCannonPaint = killed.Tank_SkinCannonPaint
			UIKill.Tank2_SkinCannonChasis = killed.Tank_SkinCannonChasis
			UIKill.Tank2_SkinCannonPrimary = killed.Tank_SkinCannonPrimary
			UIKill.Tank2_SkinCannonSecondary = killed.Tank_SkinCannonSecondary
			UIKill.Tank2_GunPrimaryColor = killed.Tank_GunPrimaryColor
			UIKill.Tank2_GunSecondaryColor = killed.Tank_GunSecondaryColor
		
			UIKill.Tank2_ScopeID = killed.Tank_ScopeID
			UIKill.Tank2_SkinScopeChasis = killed.Tank_SkinScopeChasis
			UIKill.Tank2_SkinScopeColor = killed.Tank_SkinScopeColor
			UIKill.Tank2_SkinScopeGlow = killed.Tank_SkinScopeGlow
			UIKill.Tank2_SkinScopePainted = killed.Tank_SkinScopePainted
		} else {
			UIKill.Tank2_SkinCannonGlow = killed.Tank_SkinSecondaryCannonGlow
			UIKill.Tank2_SkinCannonPainted = killed.Tank_SkinSecondaryCannonPainted
			UIKill.Tank2_SkinCannonPaint = killed.Tank_SkinSecondaryCannonPaint
			UIKill.Tank2_SkinCannonChasis = killed.Tank_SkinSecondaryCannonChasis
			UIKill.Tank2_SkinCannonPrimary = killed.Tank_SkinSecondaryCannonPrimary
			UIKill.Tank2_SkinCannonSecondary = killed.Tank_SkinSecondaryCannonSecondary
			UIKill.Tank2_GunPrimaryColor = killed.Tank_GunPrimaryColor2
			UIKill.Tank2_GunSecondaryColor = killed.Tank_GunSecondaryColor2
		
			UIKill.Tank2_ScopeID = killed.Tank_ScopeID2
			UIKill.Tank2_SkinScopeChasis = killed.Tank_SkinScopeChasis2
			UIKill.Tank2_SkinScopeColor = killed.Tank_SkinScopeColor2
			UIKill.Tank2_SkinScopeGlow = killed.Tank_SkinScopeGlow2
			UIKill.Tank2_SkinScopePainted = killed.Tank_SkinScopePainted2
		}

		if (UIKill.KillInfo_FromExist == true) {
			UIKill.Tank_PrimaryColor = killer.Tank_PrimaryColor
			UIKill.Tank_SecondaryColor = killer.Tank_SecondaryColor
			UIKill.Tank_SkinWheel = killer.Tank_SkinWheel
			UIKill.Tank_SkinCartPrimary = killer.Tank_SkinCartPrimary
			UIKill.Tank_SkinCartSecondary = killer.Tank_SkinCartSecondary
			UIKill.Tank_SkinCartChasis = killer.Tank_SkinCartChasis
			UIKill.Tank_SkinCartPainted = killer.Tank_SkinCartPainted
			UIKill.Tank_SkinCartPaint = killer.Tank_SkinCartPaint
			UIKill.Tank_SkinCartGlow = killer.Tank_SkinCartGlow
			UIKill.Tank_GlowColor = killer.Tank_GlowColor
			UIKill.Tank_SkinCannonGlow = killer.Tank_SkinCannonGlow
			UIKill.Tank_SkinCannonPainted = killer.Tank_SkinCannonPainted
			UIKill.Tank_SkinCannonPaint = killer.Tank_SkinCannonPaint
			UIKill.Tank_SkinCannonChasis = killer.Tank_SkinCannonChasis
			UIKill.Tank_SkinCannonPrimary = killer.Tank_SkinCannonPrimary
			UIKill.Tank_SkinCannonSecondary = killer.Tank_SkinCannonSecondary
			UIKill.Tank_GunPrimaryColor = killer.Tank_GunPrimaryColor
			UIKill.Tank_GunSecondaryColor = killer.Tank_GunSecondaryColor
		
			UIKill.Tank_ScopeID = killer.Tank_ScopeID
			UIKill.Tank_SkinScopeChasis = killer.Tank_SkinScopeChasis
			UIKill.Tank_SkinScopeColor = killer.Tank_SkinScopeColor
			UIKill.Tank_SkinScopeGlow = killer.Tank_SkinScopeGlow
			UIKill.Tank_SkinScopePainted = killer.Tank_SkinScopePainted
		}
	}
}