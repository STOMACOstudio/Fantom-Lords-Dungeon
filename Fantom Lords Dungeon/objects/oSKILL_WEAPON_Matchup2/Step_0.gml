/// @description Insert description here
// You can write your code in this editor

if done = true
{
	image_alpha = 0;
	
	if (targetEnemy != noone)
	{
		if (choice = "atk")
		{
			targetEnemy.thisATK -= debuff;
			if (targetEnemy.thisATK < 0) targetEnemy.thisATK = 0;
			
			if (targetEnemy.matchup = 0)
			{
				targetEnemy.matchup = 3;
				targetEnemy.matchupType = choice;
			}
		}
		else if (choice = "def")
		{
			targetEnemy.thisDEF -= debuff;
			if (targetEnemy.thisDEF < 0) targetEnemy.thisDEF = 0;
			
			if (targetEnemy.matchup = 0)
			{
				targetEnemy.matchup = 3;
				targetEnemy.matchupType = choice;
			}
		}
		else if (choice = "mag")
		{
			targetEnemy.thisMAG -= debuff;
			if (targetEnemy.thisMAG < 0) targetEnemy.thisMAG = 0;
			
			if (targetEnemy.matchup = 0)
			{
				targetEnemy.matchup = 3;
				targetEnemy.matchupType = choice;
			}
		}
	}

	instance_destroy();
}