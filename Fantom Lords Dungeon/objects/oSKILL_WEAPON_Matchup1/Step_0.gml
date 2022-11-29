/// @description Insert description here
// You can write your code in this editor

if done = true
{
	image_alpha = 0;
	
	if targetLord != noone
	{
		if (choice = "atk")
		{
			targetLord.thisLord_ATK += buff;
			
			if (targetLord.matchup = 0)
			{
				targetLord.matchup = 3;
				targetLord.matchupType = choice;
			}
			
			instance_create_layer(targetLord.x,targetLord.y,"VFX",oVFX_powerUpATKsmall);
		}
		else if (choice = "def")
		{
			targetLord.thisLord_DEF += buff;
			
			if (targetLord.matchup = 0)
			{
				targetLord.matchup = 3;
				targetLord.matchupType = choice;
			}
			
			instance_create_layer(targetLord.x,targetLord.y,"VFX",oVFX_powerUpDEFsmall);
		}
		else if (choice = "mag")
		{
			targetLord.thisLord_MAG += buff;
			
			if (targetLord.matchup = 0)
			{
				targetLord.matchup = 3;
				targetLord.matchupType = choice;
			}
			
			instance_create_layer(targetLord.x,targetLord.y,"VFX",oVFX_powerUpMAGsmall);
		}
	}
	
	global.hasControl = true;
	instance_destroy();
}
