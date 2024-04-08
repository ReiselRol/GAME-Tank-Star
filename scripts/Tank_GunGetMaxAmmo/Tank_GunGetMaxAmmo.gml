var GunID = argument[0]

switch (GunID) {
	case 0 : return Tank_GunGetAmmo(GunID) * 3 // classic
	case 1 : return Tank_GunGetAmmo(GunID) * 3 // Shorty 2/8
	case 2 : return Tank_GunGetAmmo(GunID) * 3 //Sheriff
	case 3 : return Tank_GunGetAmmo(GunID) * 3 // Frenzy
	case 4 : return Tank_GunGetAmmo(GunID) * 3 // Marshal
	case 5 : return Tank_GunGetAmmo(GunID) * 3 // Bucky
	case 6 : return Tank_GunGetAmmo(GunID) * 3 // Stinger
	case 7 : return Tank_GunGetAmmo(GunID) * 3 // Sonical
	case 8 : return Tank_GunGetAmmo(GunID) * 3 // Guardian
	case 9 : return Tank_GunGetAmmo(GunID) * 3 // Vandal
	case 10 : return Tank_GunGetAmmo(GunID) * 3 // Odin
	case 11 : return Tank_GunGetAmmo(GunID) * 3 // Judge
}