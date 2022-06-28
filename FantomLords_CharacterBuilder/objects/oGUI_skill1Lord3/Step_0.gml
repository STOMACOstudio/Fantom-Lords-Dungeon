/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord3active
{
	if instance_exists(oLord3)
	{
		if oLord3.thisLord_typeAttack == "MELEE"
		{
			image_index = 1;
		}
		else if oLord3.thisLord_typeAttack == "RANGED"
		{
			image_index = 2;
		}
		else if oLord3.thisLord_typeAttack == "MAGIC"
		{
			image_index = 3;
		}
	}
}