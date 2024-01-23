var GunID = argument[0]
var bulletProj = Tank_GunGetProj(GunID)
switch (bulletProj) {
	case Bullet	: return BulletCaseSprite
	case ShootgunBullet : return ShotgunBulletCaseSprite
	case HighBullet : return HighBulletCaseSprite
	case SniperBullet : return HighBulletCaseSprite
	case SuperSonicBullet : return SuperSonicBulletCaseSprite
}