/// @description Insert description here
// You can write your code in this editor

if(instance_exists(objPlayer) and fireReady == true)
{
	
	if(distance_to_object(objPlayer) < attackDistance)
	{
		fireReady = false
		alarm[0] = 150
		instance_create_layer(x, y+13, "Instances", objFire,
		{
		attatchedEnemy : self.id
		})
		if(instance_exists(objPlayer) and distance_to_object(objPlayer) < 700)
		{
			audio_play_sound(playerFlame, 1, false)
			alarm[1] = 90
		}
		
	}
}

// This code was written by the professor as a means to help fix a pathing issue
if (place_meeting(x + path_speed, y - sprite_height/2, objBlock))
{
		//	The character is about to collide with a block,
		//	reverse the path.		
		
		path_speed *= -1
		image_xscale = image_xscale * -1
}