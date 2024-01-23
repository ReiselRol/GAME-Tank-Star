var GunID = argument[0]
var SkinID = argument[1]
var SkinParts = Skin_GunGetSkin(GunID, SkinID)
Tank_SkinSecondaryCannonGlow = ds_list_find_value(SkinParts, 0)
Tank_SkinSecondaryCannonPainted = ds_list_find_value(SkinParts, 1)
Tank_SkinSecondaryCannonChasis = ds_list_find_value(SkinParts, 2)
Tank_SkinSecondaryCannonPrimary = ds_list_find_value(SkinParts, 3)
Tank_SkinSecondaryCannonSecondary = ds_list_find_value(SkinParts, 4)
