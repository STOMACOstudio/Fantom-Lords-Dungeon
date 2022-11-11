/// @description Insert description here
// You can write your code in this editor

if !active && !global.demo && global.ascendedLordTokenIDs != noone
{
	instance_deactivate_object(oLordTrait_0);
	instance_activate_object(oAscendedTrait_0);
	var current_lord_id = global.ascendedLordTokenIDs[0];
	show_debug_message(string(current_lord_id));
	var current_lord_data = global.ascendedLordTokenData[$ string(current_lord_id)];
	setCurrentLord(current_lord_data);
	
	audio_play_sound(snClick,0,false);
	oUI_ChoiceFantom.active = false;
	oUI_ChoiceFantom.image_blend = c_dkgrey;
	image_blend = c_white;
	active = true;
}