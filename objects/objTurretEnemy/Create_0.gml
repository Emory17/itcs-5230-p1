/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

instance_create_layer(x, y, "Instances", objTurretBarrel,
	{
		attatchedEnemy : self.id
	})
	
	