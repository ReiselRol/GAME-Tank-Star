var GunID = argument[0]

switch (GunID) {
	case 1 : return ShootgunBullet // Shorty
	case 2 : return SniperBullet //Sheriff
	case 4 : return SniperBullet // Marshal
	case 5 : return ShootgunBullet // Bucky
	case 7 : return SuperSonicBullet // Sonical
	case 8 : return HighBullet // Guardian
	case 9 : return HighBullet // Vandal
	case 10 : return HighBullet // Odin
	case 11 : return ShootgunBullet // Judge
	default : return Bullet
}