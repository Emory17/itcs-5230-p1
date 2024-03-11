//will most likely need to adjust the numeric values when we get the sprites
//to make the enemy attack on the correct side.

if(instance_place(x + 32, y, objPlayer) and !instance_place(x - 1, y, objPlayer) and image_xscale > 0
and canAttack)
{
	image_xscale = 1
	instance_create_layer(x, y, "Instances", objSwordAttack,
	{
		senemy : self.id
	})
	canAttack = false;
	alarm[0] = 120
}

if(instance_place(x - 32, y, objPlayer) and !instance_place(x + 1, y, objPlayer) and image_xscale < 0
and canAttack)
{
	image_xscale = -1
	instance_create_layer(x, y, "Instances", objSwordAttack,
	{
		senemy : self.id
	})
	canAttack = false;
	alarm[0] = 120
}

if (place_meeting(x + path_speed, y - sprite_height/2, objBlock))
{
		//	The character is about to collide with a block,
		//	reverse the path.		
		
		path_speed *= -1
		image_xscale = image_xscale * -1
}

if (canAttack)
{
	sprite_index = sprSwordEnemyNeutral
}
else{
	sprite_index = sprSwordEnemy
}