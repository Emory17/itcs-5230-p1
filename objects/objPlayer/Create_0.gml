totalHealth = 90
gravity_direction = 270
canAttack = true;
enum powerUp {
	none,
	sword,
	blast,
	drill,
	fire
}
global.currentPower = powerUp.none
canMove = true;
blocking = false;
instance_create_depth(x, y, -1, objBlaster)
