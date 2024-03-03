if (objPowerUpControl.drilling)
{
	damageEnemy(other,40,self)
	other.alarm[9] = 10;
}
else
{
	damagePlayer(15)
}