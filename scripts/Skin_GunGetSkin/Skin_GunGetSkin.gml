var GunID = argument[0]
var SkinID = argument[1]
switch (GunID) {
	case 0 : return Skin_ClassicSkins(SkinID)
	case 1 : return Skin_ShortySkins(SkinID)
	case 2 : return Skin_SheriffSkins(SkinID)
	case 3 : return Skin_FrenzySkins(SkinID)
	case 4 : return Skin_MarshalSkins(SkinID)
	case 5 : return Skin_BuckySkins(SkinID)
	case 6 : return Skin_StingerSkins(SkinID)
	case 7 : return Skin_SonicalSkins(SkinID)
}