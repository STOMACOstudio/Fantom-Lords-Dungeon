/// @description Insert description here
// You can write your code in this editor

if oGUI_FantomTitleMain.canStart
{
	if image_speed = 0 && image_index < 11
	{
		image_speed = 4;
		if !playsound
		{
			playsound = true;
			audio_play_sound(snOpenChest,0,false);
		}
	}
	else image_speed = 0;
}

if global.demo instance_destroy();