var GunID = argument[0]
var extraZoom = 0
if (Tank_WeaponSelected == 1 && Tank_GunID > -1 && Tank_ScopeID > -1) extraZoom = 0.15 * (Tank_ScopeID + 1)
else if (Tank_WeaponSelected == 2 && Tank_GunID2 > -1 && Tank_ScopeID2 > -1) extraZoom = 0.15 * (Tank_ScopeID2 + 1)
switch (GunID) {
	case 4 : return 1.2 + extraZoom // Marshal
	case 5 : return 0.75 + extraZoom// Bucky
	case 6 : return 0.75 + extraZoom // Stinger
	case 7 : return 1.5 + extraZoom// Sonical
	case 8 : return 0.9 + extraZoom// Guardian
	case 9 : return 0.9 + extraZoom// Vandal
	case 10 : return 0.8 + extraZoom// Odin
	case 11 : return 0.8 + extraZoom// Judge
	default : return 0.6 + extraZoom
}