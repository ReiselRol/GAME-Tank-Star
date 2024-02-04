var scopeID = argument[0]
var scopeParts = ds_list_create()
switch (scopeID) {
	case 0 : ds_list_add(scopeParts, BasicScopeC0, BasicScopeS0)
	case 1 : ds_list_add(scopeParts, AdvancedScopeC0, AdvancedScopeS0)
	case 2 : ds_list_add(scopeParts, EliteScopeC0, EliteScopeS0)
}
return scopeParts