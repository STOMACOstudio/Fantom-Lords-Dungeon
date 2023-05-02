/// @description Insert description here
// You can write your code in this editor

active = false;
image_blend = c_dkgray;

function checkActive() {
	var lordsAvailable = array_length(global.ascendedLordTokenIDs) > 0;
	show_debug_message("ascended lordsAvailable? " + string(lordsAvailable))
	image_blend = lordsAvailable ? c_white : c_dkgray;
	if(lordsAvailable) { activateAscendedLordsChoice(); }
}

function activateAscendedLordsChoice() {
	show_debug_message("--> activateAscendedLordsChoice()");
	if(active) { return; }
	if(global.demo) { return; }
	var lordsAvailable = array_length(global.ascendedLordTokenIDs) > 0;
	if(!lordsAvailable) { return; }

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

checkActive();

//var availableBaseLords = array_length(global.lordTokenIDs) > 0;
//active = !availableBaseLords;
//show_debug_message("active: " + string(active));
//image_blend = active ? c_white : c_dkgray;