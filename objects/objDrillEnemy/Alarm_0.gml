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
		if(instance_exists(objPlayer) and distance_to_object(objPlayer) < 700)
		{
			audio_play_sound(enemyDash, 1, false)
		}
	}
	alarm[1] = 100
	
}

alarm[0] = 180

