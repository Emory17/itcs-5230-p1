if (charge > 0) {
	draw_sprite_ext(sprChargeBlast, 1, objPlayer.x, objPlayer.y, chargeSize, 1, objBlaster.image_angle, c_white,1)
}

if (cooldown > 0 and cooldown < 60 and global.currentPower = powerUp.drill)
{
	draw_sprite_ext(sprGuage, 1, objPlayer.x - 40, objPlayer.y - 10, 1, cooldown / - 45, 0, c_white,1)
}

if (cooldown > 0 and cooldown < 60 and global.currentPower = powerUp.drill)
{
	draw_sprite_ext(sprGuage, 1, objPlayer.x - 40, objPlayer.y - 10, 1, cooldown / - 45, 0, c_white,1)
}

if (fuel < 120 and global.currentPower = powerUp.fire)
{
	draw_sprite_ext(sprGuage, 1, objPlayer.x - 40, objPlayer.y - 10, 1, fuel / - 80, 0, c_white,1)
}