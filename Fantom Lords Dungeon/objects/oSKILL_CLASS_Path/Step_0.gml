/// @description Insert description here
// You can write your code in this editor

if done = true
{
	if (image_alpha > 0)
	{
		image_alpha -= 0.02;
	}
	else
	{
		if targetDoor != noone
		{
			targetDoor.image_alpha = 1;
			targetDoor.revealed = true;
		}
	
		global.hasControl = true;
		instance_destroy();
	}
}