if (objPowerUpControl.drilling)
{
	damageEnemy(other,30,self)
	other.alarm[9] = 30;
}
else
{
	damagePlayer(15)
}


