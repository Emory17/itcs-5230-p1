if (global.currentPower = powerUp.blast || global.currentPower = powerUp.fire)
{
	
	if (keyboard_check(ord("W")))
	{
		image_angle = 0;
	}
	else if (keyboard_check(ord("S")))
	{
		image_angle = 180;
	}
}

if(objPlayer.image_xscale = 1 and !keyboard_check(ord("W")) and !keyboard_check(ord("S"))) {
		image_angle = 270;
		image_xscale = 1;
	}
if(objPlayer.image_xscale = -1 and !keyboard_check(ord("W")) and !keyboard_check(ord("S"))) {
		image_angle = 90;
		image_xscale = -1;
	}

if(instance_exists(objPlayer))
{
	x = objPlayer.x
	y = objPlayer.y
}
