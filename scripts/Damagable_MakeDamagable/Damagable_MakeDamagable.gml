var ToFollow = argument[0]
var Damage = argument[1]
var From = argument[2]
var piercing = argument[3]
var cooldown = argument[4]
var normalDraw = argument[5]
var hitLetal = instance_create_layer(ToFollow.x, ToFollow.y, "LetalHitboxLayer", HitboxLetal)

hitLetal.KillInfo_NormalDraw = normalDraw[0]
hitLetal.Damage_ToFollow = ToFollow
hitLetal.Damage_Damage = Damage
hitLetal.Damage_Piercing = piercing
hitLetal.Damage_MaxCooldown = cooldown
if (From != noone) {
	hitLetal.Damage_From = From
	hitLetal.Damage_Team = From.Tank_Team
	hitLetal.Tank_PrimaryColor = From.Tank_PrimaryColor
	hitLetal.Tank_SecondaryColor = From.Tank_SecondaryColor
	hitLetal.Tank_SkinWheel = From.Tank_SkinWheel
	hitLetal.Tank_SkinCartPrimary = From.Tank_SkinCartPrimary
	hitLetal.Tank_SkinCartSecondary = From.Tank_SkinCartSecondary
	hitLetal.Tank_SkinCartChasis = From.Tank_SkinCartChasis
	hitLetal.Tank_SkinCartPainted = From.Tank_SkinCartPainted
	hitLetal.Tank_SkinCartPaint = From.Tank_SkinCartPaint
	hitLetal.Tank_SkinCartGlow = From.Tank_SkinCartGlow
	hitLetal.Tank_GlowColor = From.Tank_GlowColor
	hitLetal.Tank_IsABot = From.Tank_IsABot
	if (From.Tank_WeaponSelected == 1) {
		hitLetal.KillInfo_KillerGun = From.Tank_GunID
		hitLetal.Tank_SkinCannonGlow = From.Tank_SkinCannonGlow
		hitLetal.Tank_SkinCannonPainted = From.Tank_SkinCannonPainted
		hitLetal.Tank_SkinCannonPaint = From.Tank_SkinCannonPaint
		hitLetal.Tank_SkinCannonChasis = From.Tank_SkinCannonChasis
		hitLetal.Tank_SkinCannonPrimary = From.Tank_SkinCannonPrimary
		hitLetal.Tank_SkinCannonSecondary = From.Tank_SkinCannonSecondary
		hitLetal.Tank_GunPrimaryColor = From.Tank_GunPrimaryColor
		hitLetal.Tank_GunSecondaryColor = From.Tank_GunSecondaryColor
	
		hitLetal.Tank_ScopeID = From.Tank_ScopeID
		hitLetal.Tank_SkinScopeChasis = From.Tank_SkinScopeChasis
		hitLetal.Tank_SkinScopeColor = From.Tank_SkinScopeColor
		hitLetal.Tank_SkinScopeGlow = From.Tank_SkinScopeGlow
		hitLetal.Tank_SkinScopePainted = From.Tank_SkinScopePainted
	} else {
		hitLetal.KillInfo_KillerGun = From.Tank_GunID2
		hitLetal.Tank_SkinCannonGlow = From.Tank_SkinSecondaryCannonGlow
		hitLetal.Tank_SkinCannonPainted = From.Tank_SkinSecondaryCannonPainted
		hitLetal.Tank_SkinCannonPaint = From.Tank_SkinSecondaryCannonPaint
		hitLetal.Tank_SkinCannonChasis = From.Tank_SkinSecondaryCannonChasis
		hitLetal.Tank_SkinCannonPrimary = From.Tank_SkinSecondaryCannonPrimary
		hitLetal.Tank_SkinCannonSecondary = From.Tank_SkinSecondaryCannonSecondary
		hitLetal.Tank_GunPrimaryColor = From.Tank_GunPrimaryColor2
		hitLetal.Tank_GunSecondaryColor = From.Tank_GunSecondaryColor2
	
		hitLetal.Tank_ScopeID = From.Tank_ScopeID2
		hitLetal.Tank_SkinScopeChasis = From.Tank_SkinScopeChasis2
		hitLetal.Tank_SkinScopeColor = From.Tank_SkinScopeColor2
		hitLetal.Tank_SkinScopeGlow = From.Tank_SkinScopeGlow2
		hitLetal.Tank_SkinScopePainted = From.Tank_SkinScopePainted2
	}
} else hitLetal.Damage_isFromHabilities = true
hitLetal.image_xscale = ToFollow.image_xscale
hitLetal.image_yscale = ToFollow.image_yscale
hitLetal.image_angle = ToFollow.image_angle
hitLetal.sprite_index = ToFollow.sprite_index
hitLetal.image_index = ToFollow.image_index