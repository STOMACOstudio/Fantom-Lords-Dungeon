/// @description Insert description here
// You can write your code in this editor

if !active
{
	audio_play_sound(snClick,0,false);
	oUI_ChoiceFantom.active = false;
	oUI_ChoiceFantom.image_blend = c_dkgrey;
	image_blend = c_white;
	active = true;
}