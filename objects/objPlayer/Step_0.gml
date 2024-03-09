if(canMove and !blocking) {
	if(keyboard_check(ord("A")) and !instance_place(x-movementSpeed, y, objBlock))
	{
		x += -movementSpeed
		image_xscale = -1
		if (instance_place(x, y+1, objBlock)){
			sprite_index = sprPlayerMoving
		}
		else {
		sprite_index = sprPlayer
		}
	}
	else if(keyboard_check(ord("D")) and !instance_place(x+movementSpeed, y, objBlock))
	{
		x += movementSpeed
		image_xscale = 1
		if (instance_place(x, y+1, objBlock)){
			sprite_index = sprPlayerMoving
		}
		else {
		sprite_index = sprPlayer
		}
	}
	else {
		sprite_index = sprPlayer
	}
	
	if(keyboard_check_pressed(vk_space))
	{
		if(instance_place(x, y+1, objBlock))
		{
			vspeed = jumpHeight
			audio_play_sound(playerJump,1,false);
		}
		else if(hasJump){
			vspeed = jumpHeight
			audio_play_sound(playerDoubleJump,1,false);
			hasJump = false
		}
	}
	
	if(instance_place(x, y + 1, objBlock) && !instance_place(x, y, objBlock))
	{
		gravity = 0	
		hasJump = true
	}
	else
	{
		gravity = 0.25
	}
	
	if(mouse_check_button_pressed(mb_left) and canAttack and global.currentPower = powerUp.none)
	{
		instance_create_layer(x, y, "Instances", objBasicAttack)
		audio_play_sound(playerNoneMelee,1,false);
		canAttack = false
	}

}

if(invincible and !objPowerUpControl.drilling)
{
	sprite_index = sprPlayerDamaged
}

	