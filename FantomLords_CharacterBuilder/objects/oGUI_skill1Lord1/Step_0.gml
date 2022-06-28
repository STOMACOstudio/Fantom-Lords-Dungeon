/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord1active
{
	if instance_exists(oLord1)
	{
		if oLord1.thisLord_typeAttack == "MELEE"
		{
			image_index = 1;
		}
		else if oLord1.thisLord_typeAttack == "RANGED"
		{
			image_index = 2;
		}
		else if oLord1.thisLord_typeAttack == "MAGIC"
		{
			image_index = 3;
		}
	}
}