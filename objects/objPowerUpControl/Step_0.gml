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

if(mouse_check_button(mb_right) and objPlayer.canAttack and global.currentPower = powerUp.blast)
{
	instance_create_layer(x, y, "Instances", objBlasterShot)
	objPlayer.canAttack = false
	charge = 1
}

if(!global.currentPower = powerUp.blast)
{
	charge = 0
}

if(mouse_check_button(mb_right) and global.currentPower = powerUp.blast and charge > 0)
{
	charge += 1
	if (charge > 75) then charge = 75
}

if(charge = 0)
{
	chargeSize = 0;
}

if(charge > 0 and charge < 25)
{
	chargeSize = .25
}

if(charge >= 25 and charge < 50)
{
	chargeSize = .5
}

if(charge >= 50 and charge < 75)
{
	chargeSize = .75
}

if(charge = 75)
{
	chargeSize = 1
}

if(!mouse_check_button(mb_right) and charge > 0)
{
	if(charge = 75){
		largeShot = instance_create_layer(x, y, "Instances", objBlasterShot)
		largeShot.image_xscale = 2
		largeShot.image_yscale = 2
	}
	else {
		if(objPlayer.canAttack = true) {
			instance_create_layer(x, y, "Instances", objBlasterShot)
		}
	}
	objPlayer.canAttack = false
	charge = 0
	chargeSize = 0
	alarm[0] = 30;
}
