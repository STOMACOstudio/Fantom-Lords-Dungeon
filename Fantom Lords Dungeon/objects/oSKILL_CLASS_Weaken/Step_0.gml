/// @description Insert description here
// You can write your code in this editor

if done = true
{
	image_alpha -= 0.1;
	if targetEnemy != noone
	{
		targetEnemy.thisATK -= rate;
		targetEnemy.thisDEF -= rate;
		targetEnemy.thisMAG -= rate;
		if (targetEnemy.thisATK < 0)
		{
			targetEnemy.thisATK  = 0
		};
		if (targetEnemy.thisDEF < 0)
		{
			targetEnemy.thisDEF  = 0
		};
		if (targetEnemy.thisMAG < 0)
		{
			targetEnemy.thisMAG  = 0
		};
		
		if targetEnemy.weaken = 0 targetEnemy.weaken = 2;
	}
	if image_alpha <= 0
	{
		global.hasControl = true;
		instance_destroy();
	}
}