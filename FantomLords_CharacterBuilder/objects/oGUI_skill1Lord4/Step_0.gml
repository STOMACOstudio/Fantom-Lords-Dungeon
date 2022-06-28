/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord4active
{
	if instance_exists(oLord4)
	{
		if oLord4.thisLord_typeAttack == "MELEE"
		{
			image_index = 1;
		}
		else if oLord4.thisLord_typeAttack == "RANGED"
		{
			image_index = 2;
		}
		else if oLord4.thisLord_typeAttack == "MAGIC"
		{
			image_index = 3;
		}
	}
}