/// @description Insert description here
// You can write your code in this editor

if(instance_exists(objPlayer))
{
	
	if(distance_to_object(objPlayer) < attackDistance)
	{
		instance_create_layer(x, y, "Instances", objFire)
	}
}

if (place_meeting(x + path_speed, y - sprite_height/2, objBlock))
{
		//	The character is about to collide with a block,
		//	reverse the path.		
		show_debug_message("Wall collision detected. Path speed = " + string(path_speed))
		path_speed *= -1
}