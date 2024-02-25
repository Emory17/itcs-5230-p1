//will most likely need to adjust the numeric values when we get the sprites
//to make the enemy attack on the correct side.

if(instance_place(x + 32, y, objPlayer) and !instance_place(x - 1, y, objPlayer))
{
	image_xscale = objPlayer.image_xscale
	instance_create_layer(x, y, "Instances", objSwordAttack)
}
if(instance_place(x - 32, y, objPlayer) and !instance_place(x + 1, y, objPlayer))
{
	image_xscale = objPlayer.image_xscale * -1
	instance_create_layer(x, y, "Instances", objSwordAttack)
}



