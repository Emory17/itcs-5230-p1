if (global.currentPower = powerUp.blast)
{
	visible = true;
}
else
{
	visible = false;
}

if (keyboard_check(ord("W")))
{
	image_angle = 0;
}
else if (keyboard_check(ord("S")))
{
	image_angle = 180;
}
else
{
	if(objPlayer.image_xscale = 1) {
		image_angle = 270;
	}
	if(objPlayer.image_xscale = -1) {
		image_angle = 90;
	}
}

if(instance_exists(objPlayer))
{
	x = objPlayer.x
	y = objPlayer.y
}
