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
		
		// This code was written by the professor as a means to help fix a pathing issue
		// Stop the current path to allow jumping
		current_path_speed = path_speed
		path_end()
		following_path = false
		
		
		// This code was written by the professor as a means to help fix a pathing issue
		// Jump
		gravity = 0.25
		vspeed = jumpHeight

	}
	else
	{
		// This code was written by the professor as a means to help fix a pathing issue
		if (following_path == false)
		{
			following_path = true
			gravity = 0
			
			
			newX = path_get_x(path_basic, 1) - objBruteEnemy.x
			
			if(!mp_linear_path(path_basic, path_get_x(path_basic, 1), objBruteEnemy.y, hsp, false))
			{
				path_change_point(path_dynamic, 0, (newX + 760), objBruteEnemy.y, hsp)
				path_change_point(path_dynamic, 1, newX, objBruteEnemy.y, hsp)
				path_start(path_dynamic, current_path_speed, path_action_reverse, false)
				
			}
			else
			{
				path_start(path_basic, -current_path_speed, path_action_reverse, false)
			}
			//path_start(path_basic, -current_path_speed, path_action_reverse, false)
		}
	}
}

// This code was written by the professor as a means to help fix a pathing issue
//	Make sure the character does not get stuck
if (following_path && place_meeting(x + path_speed, y - sprite_height/2, objBlock))
{
		//	The character is about to collide with a block,
		//	reverse the path.		
		
		path_speed *= -1
}