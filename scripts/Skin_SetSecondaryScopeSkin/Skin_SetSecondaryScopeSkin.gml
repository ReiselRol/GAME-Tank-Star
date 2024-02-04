var ScopeID = argument[0]
Tank_SkinScopeChasis2 = 0
Tank_SkinScopePainted2 = 0
Tank_SkinScopeGlow2 = 0
Tank_SkinScopeColor2 = 0
if (ScopeID == 0) {
	Tank_SkinScopeChasis2 = BasicScopeC0
	Tank_SkinScopePainted2 = BasicScopeP0
	Tank_SkinScopeGlow2 = BasicScopeG0
	Tank_SkinScopeColor2 = BasicScopeS0
} else if (ScopeID == 1) {
	Tank_SkinScopeChasis2 = AdvancedScopeC0
	Tank_SkinScopePainted2 = AdvancedScopeP0
	Tank_SkinScopeGlow2 = AdvancedScopeG0
	Tank_SkinScopeColor2 = AdvancedScopeS0
} else if (ScopeID == 2) {
	Tank_SkinScopeChasis2 = EliteScopeC0
	Tank_SkinScopePainted2 = EliteScopeP0
	Tank_SkinScopeGlow2 = EliteScopeG0
	Tank_SkinScopeColor2 = EliteScopeS0
}