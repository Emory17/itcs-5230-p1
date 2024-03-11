/// @description Insert description here
// You can write your code in this editor

canShoot = true
sprite_index = sprBlasterEnemy
instance_create_layer(x, y - 10, "Instances", objBullet, {
		benemy : self.id
	})
alarm[0] = 140
alarm[1] = 110