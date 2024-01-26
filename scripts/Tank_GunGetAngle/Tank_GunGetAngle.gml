var GunID = argument[0]
if (Tank_IsScooping= true) var reducer = 0.77
else var reducer = 1
switch (GunID) {
	case 0 : return 3 // classic
	case 1 : return 15 // Shorty
	case 2 : return 2 //Sheriff
	case 3 : return 6 // Frenzy
	case 4 : return 1 * reducer// Marshal
	case 5 : return 14 * reducer// Bucky
	case 6 : return 8 * reducer// Stinger
	case 7 : return 1 * reducer // Sonical
	case 8 : return 2 * reducer // Guardian
	case 9 : return 1.5 * reducer // Vandal
	case 10 : return 17 * reducer // Odin
}