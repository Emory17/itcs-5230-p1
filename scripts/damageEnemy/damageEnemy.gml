function damageEnemy(enemy, damage, object){
	if(!instance_exists(enemy.hitobject))
	{
		enemy.hitobject = noone
	}
	
	if(enemy.hitobject == noone or enemy.hitobject != object)
	{
		enemy.totalHealth -= damage
		enemy.hitobject = object
		if(enemy.totalHealth <= 0){
			instance_destroy(enemy)
		}
	}
}