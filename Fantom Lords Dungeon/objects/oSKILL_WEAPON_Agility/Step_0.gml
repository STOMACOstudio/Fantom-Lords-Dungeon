/// @description Insert description here
// You can write your code in this editor

if done = true
{
	image_alpha = 0;
	
	if targetLord != noone
	{
		targetLord.thisLord_ACT += round(targetLord.thisLord_MAG/2);
		targetLord.thisLord_ACTpointsMAX = round((oLord1.thisLord_ACT)/5);
		if (targetLord.agility = 0) 
		{
			targetLord.agility = 2;
		}
		instance_create_layer(targetLord.x,targetLord.y,"VFX",oVFX_powerUpACTsmall);
	}
	
	global.hasControl = true;
	instance_destroy();
}