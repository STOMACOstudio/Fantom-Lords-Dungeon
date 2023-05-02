/// @description Insert description here
// You can write your code in this editor

if done = true
{
	image_alpha = 0;
	
	if targetLord != noone
	{
		targetLord.thisLord_MAG += buff;
		targetLord.thisLord_DEF += buff;
		if targetLord.tower = 0 targetLord.tower = 3;
	}
	
	global.hasControl = true;
	instance_destroy();
	instance_destroy(oSKILL_WEAPON_Tower_back);
}