var GunID = argument[0]
if (Tank_IsScooping= true) var reducer = 0.77
else var reducer = 1
switch (GunID) {
	case 0 : return 3 // classic
	case 1 : return 22 // Shorty
	case 2 : return 2 //Sheriff
	case 3 : return 8 // Frenzy
	case 4 : return 1 * reducer// Marshal
	case 5 : return 19 * reducer// Bucky
	case 6 : return 8 * reducer// Stinger
	case 7 : return 1 * reducer // Sonical
}