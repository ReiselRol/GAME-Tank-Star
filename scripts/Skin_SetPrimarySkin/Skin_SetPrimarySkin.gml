var GunID = argument[0]
var SkinID = argument[1]
var SkinParts = Skin_GunGetSkin(GunID, SkinID)
Tank_SkinCannonGlow = ds_list_find_value(SkinParts, 0)
Tank_SkinCannonPainted = ds_list_find_value(SkinParts, 1)
Tank_SkinCannonChasis = ds_list_find_value(SkinParts, 2)
Tank_SkinCannonPrimary = ds_list_find_value(SkinParts, 3)
Tank_SkinCannonSecondary = ds_list_find_value(SkinParts, 4)
