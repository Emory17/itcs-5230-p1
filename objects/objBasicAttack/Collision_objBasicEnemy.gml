/// @description Insert description here
// You can write your code in this editor

objBasicEnemy.totalHealth -= 15

if(objBasicEnemy.totalHealth <= 0)
{
	instance_destroy()
}

