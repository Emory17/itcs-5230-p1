if(mouse_check_button_pressed(mb_left) and objPlayer.canAttack and global.currentPower = powerUp.sword)
{
	instance_create_layer(x, y, "Instances", objSwordSlash)
	objPlayer.canAttack = false
}

if(mouse_check_button_pressed(mb_right) and objPlayer.canAttack and global.currentPower = powerUp.sword 
and !instance_exists(objSwordSlash))
{
	instance_create_layer(x, y, "Instances", objSwordBlock)
}

if(mouse_check_button_pressed(mb_left) and objPlayer.canAttack and global.currentPower = powerUp.blast)
{
	instance_create_layer(x, y, "Instances", objBlasterShot)
	objPlayer.canAttack = false
	alarm[0] = 15;
}




