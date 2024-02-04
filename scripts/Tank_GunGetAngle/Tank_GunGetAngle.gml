var GunID = argument[0]
if (Tank_IsScooping = true) {
	var reducer = 0.77
	if (Tank_WeaponSelected == 1 && Tank_GunID > -1 && Tank_ScopeID > -1) {
		reducer2 = 0.77 - Tank_GunID * 0.05
		reducer -= Tank_GunID * 0.05
	}
	else if (Tank_WeaponSelected == 2 && Tank_GunID2 > -1 && Tank_ScopeID2 > -1) {
		reducer2 = 0.77 - Tank_GunID * 0.05
		reducer -= Tank_GunID * 0.05
	}
	else reducer2 = 1
}
else {
	var reducer = 1
	var reducer2 = 1
}
switch (GunID) {
	case 0 : return 2 * reducer2// classic
	case 1 : return 15 * reducer2// Shorty
	case 2 : return 2 * reducer2//Sheriff
	case 3 : return 4 * reducer2// Frenzy
	case 4 : return 1 * reducer// Marshal
	case 5 : return 14 * reducer// Bucky
	case 6 : return 8 * reducer// Stinger
	case 7 : return 1 * reducer // Sonical
	case 8 : return 2 * reducer // Guardian
	case 9 : return 1.5 * reducer // Vandal
	case 10 : return 17 * reducer // Odin
	case 11 : return 13 * reducer // Judge
}