/// @description Insert description here
// You can write your code in this editor

if done = true
{
	image_alpha = 0;
	
	if targetTrap != noone
	{
		instance_destroy(targetTrap);
	}
	
	global.hasControl = true;
	instance_destroy();
}
