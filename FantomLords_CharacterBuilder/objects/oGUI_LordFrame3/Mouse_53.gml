/// @description Insert description here
// You can write your code in this editor

if mouse_x > x && mouse_x < x+128 && mouse_y > y && mouse_y < y+128 && instance_exists(oLord3)
{
	if !global.isLocked && !thisLocked
	{
		global.isLocked = true;
		thisLocked = true;
		oLord3.image_blend = c_yellow;
		oLord3.thisLocked = true;
		audio_play_sound(snAddLord,0,false);
	}
	else if global.isLocked && thisLocked
	{
		global.isLocked = false;
		thisLocked = false;
		oLord3.image_blend = c_white;
		oLord3.thisLocked = false;
		audio_play_sound(snRemoveLord,0,false);
	}
}