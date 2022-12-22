/// @description Insert description here
// You can write your code in this editor

if done = true
{
	image_alpha = 0;
	
	if targetLord != noone
	{
		if (!targetLord.berserk)
		{
			targetLord.thisLord_ATK += buff;
			targetLord.berserk = true;
		}
	}
	else if targetEnemy != noone
	{
		if (!targetEnemy.berserk)
		{
			targetEnemy.thisATK += buff;
			targetEnemy.berserk = true;
		}
	}
	
	global.hasControl = true;
	instance_destroy();
}