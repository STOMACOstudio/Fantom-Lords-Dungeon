/// @description Insert description here
// You can write your code in this editor

if done = true
{
	image_alpha = 0;
	
	if targetLord != noone
	{
		targetLord.weaken = 0;
		targetLord.stun = 0;
		if (targetLord.agility > 0)
		{
			targetLord.agility = 2
		}
		if (targetLord.battlecry > 0)
		{
			targetLord.battlecry = 2
		}
		if (targetLord.burden > 0)
		{
			targetLord.burden = 2
		}
		if (targetLord.royalBuff > 0)
		{
			targetLord.royalBuff = 2
		}
	}
	
	global.hasControl = true;
	instance_destroy();
}