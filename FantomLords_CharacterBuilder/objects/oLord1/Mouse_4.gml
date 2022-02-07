/// @description Insert description here
// You can write your code in this editor

if !global.isLocked && !thisLocked
{
	global.isLocked = true;
	thisLocked = true;
	oGUI_LordFrame1.thisLocked = true;
	image_blend = c_yellow;
	audio_play_sound(snAddLord,0,false);
}
else if global.isLocked && thisLocked
{
	global.isLocked = false;
	thisLocked = false;
	oGUI_LordFrame1.thisLocked = false;
	image_blend = c_white;
	audio_play_sound(snRemoveLord,0,false);
}