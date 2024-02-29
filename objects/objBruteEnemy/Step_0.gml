/// @description Insert description here
// You can write your code in this editor

if(instance_place(x + 32, y, objPlayer) and !instance_place(x - 1, y, objPlayer))
{
	image_xscale = objPlayer.image_xscale
	instance_create_layer(x, y, "Instances", objSwordAttack)
}

if(instance_place(x - 32, y, objPlayer) and !instance_place(x + 1, y, objPlayer))
{
	image_xscale = objPlayer.image_xscale * -1
	instance_create_layer(x, y, "Instances", objSwordAttack)
}

if(instance_exists(objPlayer) and shockwaveAvailable = true)
{
	if(distance_to_object(objPlayer) < attackDistance)
	{
		shockwaveAvailable = false
		alarm[0] = 300
		
		
		//	Stop the current path to allow jumping
		current_path_speed = path_speed
		path_end()
		following_path = false
		
		instance_create_layer(x, y, "Instances", objShockwave)
		
		//	Jump
		gravity = 0.25
		vspeed = jumpHeight

	}
	else
	{
		if (following_path == false)
		{
			following_path = true
			gravity = 0
			path_start(path_basic, -current_path_speed, path_action_reverse, false)
		}
	}
}


//	Make sure the character does not get stuck
if (following_path && place_meeting(x + path_speed, y - sprite_height/2, objBlock))
{
		//	The character is about to collide with a block,
		//	reverse the path.		
		show_debug_message("Wall collision detected. Path speed = " + string(path_speed))
		path_speed *= -1
}