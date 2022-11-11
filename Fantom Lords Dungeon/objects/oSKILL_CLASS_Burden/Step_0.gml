/// @description Insert description here
// You can write your code in this editor

if done = true
{
	image_alpha = 0;
	
	if targetLord != noone
	{
		targetLord.thisLord_DEF += MAG;
		if targetLord.burden = 0 targetLord.burden = 3;
		instance_create_layer(targetLord.x,targetLord.y,"VFX",oVFX_powerUpDEFsmall);
	}
	
	global.hasControl = true;
	instance_destroy();
}