/// @description Insert description here
// You can write your code in this editor

if done = true
{
	image_alpha = 0;
	
	if targetLord != noone
	{
		targetLord.thisLord_ATK += round(targetLord.thisLord_MAG/2);
		if targetLord.battlecry = 0 targetLord.battlecry = 3;
		instance_create_layer(targetLord.x,targetLord.y,"VFX",oVFX_powerUpATKsmall);
	}
	
	global.hasControl = true;
	instance_destroy();
}
