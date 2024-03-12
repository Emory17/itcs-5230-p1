/// @description Insert description here
// You can write your code in this editor

canShoot = true
sprite_index = sprBlasterEnemy
instance_create_layer(x, y - 10, "Instances", objBullet, {
		benemy : self.id
	})
alarm[0] = 140
alarm[1] = 110

if(instance_exists(objPlayer) and distance_to_object(objPlayer) < 700)
{
	audio_play_sound(playerBlasterShot, 1, false)
}