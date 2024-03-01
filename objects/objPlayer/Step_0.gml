if(canMove and !blocking) {
	if(keyboard_check(ord("A")) and !instance_place(x-movementSpeed, y, objBlock))
	{
		x += -movementSpeed
		image_xscale = -1
	}
	
	if(keyboard_check(ord("D")) and !instance_place(x+movementSpeed, y, objBlock))
	{
		x += movementSpeed
		image_xscale = 1
	}
	
	if(keyboard_check_pressed(vk_space))
	{
		if(instance_place(x, y+1, objBlock))
		{
			vspeed = jumpHeight
		}
		else if(hasJump){
			vspeed = jumpHeight
			hasJump = false
		}
	}
	
	if(!instance_place(x, y + 1, objBlock))
	{
		gravity = 0.25
	}
	else
	{
		gravity = 0	
		hasJump = true
	}
	
	if(mouse_check_button_pressed(mb_left) and canAttack and global.currentPower = powerUp.none)
	{
		instance_create_layer(x, y, "Instances", objBasicAttack)
		canAttack = false
	}
}