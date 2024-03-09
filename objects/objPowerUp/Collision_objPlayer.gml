if (keyboard_check(ord("E")))
{
	audio_play_sound(playerPickUp, 1, false)
	if(power1 = 1) {
		global.currentPower = powerUp.sword
		objBlaster.sprite_index = sprSwordHand
		instance_destroy()
	}
	if(power1 = 2) {
		global.currentPower = powerUp.blast
		objBlaster.sprite_index = sprBlaster
		instance_destroy()
	}
	
	if(power1 = 3) {
		global.currentPower = powerUp.drill
		objBlaster.sprite_index = sprDrill
		instance_destroy()
	}
	
	if(power1 = 4) {
		global.currentPower = powerUp.fire
		objBlaster.sprite_index = sprFlamethrower
		instance_destroy()
	}
}