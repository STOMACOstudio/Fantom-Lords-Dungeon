/// @description Insert description here
// You can write your code in this editor

active = false;
image_blend = c_dkgray;

function checkActive() {
	show_debug_message("checking active base lords");
	var lordsAvailable = array_length(global.lordTokenIDs) > 0;
	show_debug_message("lordsAvailable? " + string(lordsAvailable));
	if(lordsAvailable) {
		image_blend = c_white;
		activateBaseLordsChoice();
	}
	//active = lordsAvailable;
	//image_blend = active ? c_white : c_dkgray;
}


function activateBaseLordsChoice() {
	show_debug_message("--> activateBaseLordsChoice()");
	if(active) { return; }
	var lordsAvailable = array_length(global.lordTokenIDs) > 0;
	if(!lordsAvailable) { return; }
	
	instance_deactivate_object(oAscendedTrait_0);
	instance_activate_object(oLordTrait_0);
	
	var current_lord_id = global.lordTokenIDs[0];
	var current_lord_data = global.lordTokenData[$ string(current_lord_id)];
	setCurrentLord(current_lord_data);
	
	audio_play_sound(snClick,0,false);
	
	oUI_ChoiceAscended.active = false;
	oUI_ChoiceAscended.image_blend = c_dkgrey;
	image_blend = c_white;
	
	active = true;
}

checkActive();

//var availableBaseLords = array_length(global.lordTokenIDs) > 0;
//active = availableBaseLords == true;
//show_debug_message("active: " + string(active));
//image_blend = active ? c_white : c_dkgray;