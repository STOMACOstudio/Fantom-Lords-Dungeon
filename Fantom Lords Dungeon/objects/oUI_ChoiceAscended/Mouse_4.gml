/// @description Insert description here
// You can write your code in this editor
show_debug_message("step 0");
if !active && !global.demo && global.ascendedLordTokenIDs != noone
{
	show_debug_message("step 1");
	instance_deactivate_object(oLordTrait_0);
	show_debug_message("step 2");
	instance_activate_object(oAscendedTrait_0);
	show_debug_message("step 3");
	var current_lord_id = global.ascendedLordTokenIDs[0];
	show_debug_message("step 4");
	show_debug_message(string(current_lord_id));
	show_debug_message("step 5");
	var current_lord_data = global.ascendedLordTokenData[$ string(current_lord_id)];
	show_debug_message("step 6");
	setCurrentLord(current_lord_data);
	show_debug_message("step 7");
	audio_play_sound(snClick,0,false);
	show_debug_message("step 8");
	oUI_ChoiceFantom.active = false;
	show_debug_message("step 9");
	oUI_ChoiceFantom.image_blend = c_dkgrey;
	show_debug_message("step 10");
	image_blend = c_white;
	show_debug_message("step 11");
	active = true;
}