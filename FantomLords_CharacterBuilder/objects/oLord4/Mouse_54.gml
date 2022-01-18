/// @description Insert description here
// You can write your code in this editor

if global.isLocked && thisLocked
{
	global.isLocked = false;
	thisLocked = false;
	image_blend = c_white;
	audio_play_sound(snRemoveLord,0,false);
}