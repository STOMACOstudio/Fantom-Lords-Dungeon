/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord2active
{
	if instance_exists(oLord2)
	{
		if oLord2.thisLord_typeAttack == "MELEE"
		{
			image_index = 1;
		}
		else if oLord2.thisLord_typeAttack == "RANGED"
		{
			image_index = 2;
		}
		else if oLord2.thisLord_typeAttack == "MAGIC"
		{
			image_index = 3;
		}
	}
}