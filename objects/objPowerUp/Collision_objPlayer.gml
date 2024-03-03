instance_destroy(objBlaster)
if(power1 = 1) {
	global.currentPower = powerUp.sword
	instance_destroy()
}
if(power1 = 2) {
	global.currentPower = powerUp.blast
	object_set_sprite(objBlaster, sprBlaster)
	instance_destroy()
}

if(power1 = 3) {
	global.currentPower = powerUp.drill
	instance_destroy()
}

if(power1 = 4) {
	global.currentPower = powerUp.fire
	object_set_sprite(objBlaster, sprFlamethrower)
	instance_destroy()
}

instance_create_depth(x,y,-1,objBlaster)