/// @description Insert description here
// You can write your code in this editor

if done = true
{
	image_alpha = 0;
	
	if targetLord != noone
	{
		targetLord.thisLord_ATK += round(targetLord.thisLord_MAG/2);
		targetLord.thisLord_DEF += round(targetLord.thisLord_MAG/2);
		targetLord.thisLord_MAG += round(targetLord.thisLord_MAG/2);
		//targetLord.thisLord_ACT += round(targetLord.thisLord_MAG/2);
		if targetLord.royalBuff = 0 targetLord.royalBuff = 2;
		instance_create_layer(targetLord.x,targetLord.y,"VFX",oVFX_powerUpALLsmall);
	}
	
	global.hasControl = true;
	instance_destroy();
}
