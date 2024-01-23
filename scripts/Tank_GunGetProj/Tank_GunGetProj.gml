var GunID = argument[0]

switch (GunID) {
	case 1 : return ShootgunBullet // Shorty
	case 2 : return HighBullet //Sheriff
	case 4 : return SniperBullet // Marshal
	case 5 : return ShootgunBullet // Bucky
	case 7 : return SuperSonicBullet // Sonical
	default : return Bullet
}