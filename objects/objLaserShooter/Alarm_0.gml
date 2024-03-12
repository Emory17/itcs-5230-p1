laser = instance_create_layer(x,y+image_yscale,"Instances",objLaser)
laser.image_yscale = lscale

alarm[1] = uptime

if(instance_exists(objPlayer) and distance_to_object(objPlayer) < 700)
		{
			audio_play_sound(laserBeam, 1, false)
		}