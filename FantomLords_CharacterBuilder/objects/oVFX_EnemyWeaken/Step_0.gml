/// @description Insert description here
// You can write your code in this editor

if done = true
{	
	if targetLord != noone
	{
		targetLord.thisLord_ATK -= rate;
		targetLord.thisLord_DEF -= rate;
		targetLord.thisLord_MAG -= rate;
		
		if targetLord.weaken = 0 targetLord.weaken = 2;
	}
	
	instance_destroy();
}