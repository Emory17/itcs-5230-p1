
if(instance_exists(objBruteEnemy))
{
	y = objBruteEnemy.y -10
	
	if(objBruteEnemy.image_xscale = 1) {
		x = objBruteEnemy.x + 55
	}
	else {
		x = objBruteEnemy.x - 55
	}
	
}
else
{
	instance_destroy()
}

image_angle += 20