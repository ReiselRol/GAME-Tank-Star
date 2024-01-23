var SkinID = argument[0]
var SkinParts = Skin_GetChasisSkin(SkinID)
Tank_SkinCartGlow = ds_list_find_value(SkinParts, 0)
Tank_SkinCartPainted = ds_list_find_value(SkinParts, 1)
Tank_SkinCartChasis = ds_list_find_value(SkinParts, 2)
Tank_SkinCartPrimary = ds_list_find_value(SkinParts, 3)
Tank_SkinCartSecondary = ds_list_find_value(SkinParts, 4)