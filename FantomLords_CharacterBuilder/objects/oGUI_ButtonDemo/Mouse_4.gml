/// @description Insert description here
// You can write your code in this editor

if !open
{
	sprite_index = sEnemy_MimicBronze;
	image_xscale = 0.2;
	image_yscale = 0.2;
	oGUI_FantomTitleMain.canStart = true;
	global.currentLordIndex = 0;
	global.lordTokenData = {};
	global.lordTokenIDs = [10,65,172,221,226,280,541,567];
	setLordsData(global.lordTokenIDs);
	var current_lord_id = global.lordTokenIDs[0];
	var current_lord_data = global.lordTokenData[$ string(current_lord_id)];
	setCurrentLord(current_lord_data);
	audio_play_sound(snOpenChest,0,false);
	open = true;
	global.demo = true;
}