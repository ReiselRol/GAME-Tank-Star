var GunID = argument[0]
if (Tank_WeaponSelected == 1 && Tank_GunID > -1 && Tank_ScopeID > -1) return true
else if (Tank_WeaponSelected == 2 && Tank_GunID2 > -1 && Tank_ScopeID2 > -1) return true
switch (GunID) {
	case 0 : return false // classic
	case 1 : return false // Shorty
	case 2 : return false //Sheriff
	case 3 : return false // Frenzy 
	case 4 : return true // Marshal
	case 5 : return true // Bucky
	case 6 : return true // Stinger
	case 7 : return true // Sonical
	case 8 : return true // Guardian
	case 9 : return true // Vandal
	case 10 : return true // Odin
	case 11 : return true // Judge
}