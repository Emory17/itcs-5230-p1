/// @description Insert description here
// You can write your code in this editor

if(instance_exists(objPlayer) and fireReady == true)
{
	
	if(distance_to_object(objPlayer) < attackDistance)
	{
		fireReady = false
		alarm[0] = 60
		instance_create_layer(x, y, "Instances", objFire)
		
		
	}
}

if (place_meeting(x + path_speed, y - sprite_height/2, objBlock))
{
		//	The character is about to collide with a block,
		//	reverse the path.		
		
		path_speed *= -1
}