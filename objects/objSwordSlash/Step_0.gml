if(instance_exists(objPlayer))
{
	x = objPlayer.x
	y = objPlayer.y
	
	if (facing = -1)
	{
		image_angle += 9;
	}
	if (facing = 1)
	{
		image_angle -= 9;
	}
}

