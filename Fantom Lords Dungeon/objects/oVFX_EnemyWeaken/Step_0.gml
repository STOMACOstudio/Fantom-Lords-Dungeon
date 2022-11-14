/// @description Insert description here
// You can write your code in this editor

if done = true
{	
	if targetLord != noone
	{
		targetLord.thisLord_ATK -= rate;
		targetLord.thisLord_DEF -= rate;
		targetLord.thisLord_MAG -= rate;
		if (targetLord.thisLord_ATK < 0)
		{
			targetLord.thisLord_ATK  = 0
		};
		if (targetLord.thisLord_DEF < 0)
		{
			targetLord.thisLord_DEF  = 0
		};
		if (targetLord.thisLord_MAG < 0)
		{
			targetLord.thisLord_MAG  = 0
		};
		
		if targetLord.weaken = 0 targetLord.weaken = 2;
	}
	
	instance_destroy();
}