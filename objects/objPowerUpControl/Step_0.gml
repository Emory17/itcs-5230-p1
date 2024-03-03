if(objPlayer.canAttack = false)
{
	 cooldown++;
}
else
{
	cooldown = 0
}

if(mouse_check_button_pressed(mb_left) and objPlayer.canAttack and global.currentPower = powerUp.sword)
{
	instance_create_layer(x, y, "Instances", objSwordSlash)
	audio_play_sound(playerSwordSwing,1,false);
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
	audio_play_sound(playerBlasterShot,1,false);
}

if(mouse_check_button(mb_right) and objPlayer.canAttack and global.currentPower = powerUp.blast)
{
	instance_create_layer(x, y, "Instances", objBlasterShot)
	objPlayer.canAttack = false
	charge = 1
	audio_play_sound(playerBlasterCharge,1,false);
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
	audio_stop_sound(playerBlasterCharge);
	if(charge = 75){
		largeShot = instance_create_layer(x, y, "Instances", objBlasterShot)
		audio_play_sound(playerBlasterBig,1,false);
		largeShot.image_xscale = 2
		largeShot.image_yscale = 2
	}
	else {
		if(objPlayer.canAttack = true) {
			instance_create_layer(x, y, "Instances", objBlasterShot)
			audio_play_sound(playerBlasterShot,1,false);
		}
	}
	objPlayer.canAttack = false
	charge = 0
	chargeSize = 0
	alarm[0] = 30;
}

if(mouse_check_button_pressed(mb_left) and objPlayer.canAttack and global.currentPower = powerUp.drill)
{
	objPlayer.canMove = false;
	objPlayer.canAttack = false;
	alarm[1] = 60;
	alarm[2] = 30;
	alarm[3] = 20;
	audio_play_sound(playerDrillCharge,1,false);
	drilling = true;
}

if(drilling)
{
	objPlayer.x += 12 * objPlayer.image_xscale;
	objPlayer.invincible = true;
	objPlayer.gravity = 0;
	objPlayer.vspeed = 0;
	afterImageTime++;
}

if(drilling and afterImageTime % 2 = 0)
{
	instance_create_layer(objPlayer.x, objPlayer.y, "Instances", objDrillAfterImage)
}

if(mouse_check_button(mb_left) and objPlayer.canAttack and global.currentPower = powerUp.fire and fuel > 0)
{
	instance_create_layer(x, y, "Instances", objFireBlast)
	fuel--;
}

if(!mouse_check_button(mb_left))
{
	fuel += 2;
	if(fuel > 120) then fuel = 120;
}

if(mouse_check_button_pressed(mb_left) and objPlayer.canAttack and global.currentPower = powerUp.fire)
{
	audio_play_sound(playerFlame,1,false);
}


if((mouse_check_button_released(mb_left) and objPlayer.canAttack and global.currentPower = powerUp.fire)
|| fuel < 1)
{
	audio_stop_sound(playerFlame);
}


