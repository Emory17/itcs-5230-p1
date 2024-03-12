if(instance_exists(objPlayer) and distance_to_object(objPlayer) < 700)
		{
			audio_play_sound(playerSwordSwing, 1, false)
			audio_play_sound(playerBlasterShot, 1, false)
		}
alarm[1] = 10;


