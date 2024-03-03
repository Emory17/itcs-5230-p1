if (objPowerUpControl.drilling)
{
	damageEnemy(other,40,self)
	other.alarm[9] = 30;
}
else
{
	damagePlayer(15)
}


