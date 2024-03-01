if(bigShot)
{
	damageEnemy(other,50,self)
}
else
{
	instance_destroy(self)
	damageEnemy(other,10,self)
}


