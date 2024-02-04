var ScopeID = argument[0]
Tank_SkinScopeChasis = 0
Tank_SkinScopePainted = 0
Tank_SkinScopeGlow = 0
Tank_SkinScopeColor = 0
if (ScopeID == 0) {
	Tank_SkinScopeChasis = BasicScopeC0
	Tank_SkinScopePainted = BasicScopeP0
	Tank_SkinScopeGlow = BasicScopeG0
	Tank_SkinScopeColor = BasicScopeS0
} else if (ScopeID == 1) {
	Tank_SkinScopeChasis = AdvancedScopeC0
	Tank_SkinScopePainted = AdvancedScopeP0
	Tank_SkinScopeGlow = AdvancedScopeG0
	Tank_SkinScopeColor = AdvancedScopeS0
} else if (ScopeID == 2) {
	Tank_SkinScopeChasis = EliteScopeC0
	Tank_SkinScopePainted = EliteScopeP0
	Tank_SkinScopeGlow = EliteScopeG0
	Tank_SkinScopeColor = EliteScopeS0
}