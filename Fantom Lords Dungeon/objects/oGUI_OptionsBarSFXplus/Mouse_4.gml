/// @description Insert description here
// You can write your code in this editor

if global.volumeSFX < 1
{
	global.volumeSFX += 0.1;
	image_blend = c_yellow;
	scrVolumeSFX();
	audio_play_sound(snClick,0,false);
	alarm[0] = 10;
}