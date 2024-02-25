/// @description Insert description here
// You can write your code in this editor

if(instance_exists(objPlayer))
{
	
	if(distance_to_object(objPlayer) < attackDistance)
	{
		path_end()
		direction = point_direction(x, y, objPlayer.x, y)
		speed = 3
	}
}
