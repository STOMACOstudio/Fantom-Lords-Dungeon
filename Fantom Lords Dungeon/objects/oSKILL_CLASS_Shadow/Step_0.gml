/// @description Insert description here
// You can write your code in this editor

if done = true
{
	image_index = 31;
	image_alpha -= 0.02;
	
	if targetLord != noone
	{
		targetLord.shadow = 3;
	}

	global.hasControl = true;
	instance_destroy();
}