if(instance_exists(objPlayer))
{
	
	if(distance_to_object(objPlayer) < attackDistance)
	{
		path_end()
		if (objPlayer.x > x)
		{
			image_xscale = 1
		}
		else
		{
			image_xscale = -1
		}
		
		direction = point_direction(x, y, objPlayer.x, y)
		speed = 5
	}
	alarm[1] = 100
	
}

alarm[0] = 180

