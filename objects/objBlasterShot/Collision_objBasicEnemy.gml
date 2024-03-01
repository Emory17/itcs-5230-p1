if(bigShot)
{
	damageEnemy(other,100,self)
}
else
{
	instance_destroy(self)
	damageEnemy(other,10,self)
}




