/// @description Insert description here
// You can write your code in this editor

image_blend = c_white;

if !oGUI_FantomTitleMain.canStart
{
	instance_create_depth(610,230,0,oVFX_Loading);
	oGUI_FantomTitleMain.canStart = true;
	global.currentLordIndex = 0;
	global.lordTokenData = {};
	global.lordTokenIDs = [10,65,172,221,226,280,541,567];
	setLordsData(global.lordTokenIDs);
	var current_lord_id = global.lordTokenIDs[0];
	var current_lord_data = global.lordTokenData[$ string(current_lord_id)];	
	setCurrentLord(current_lord_data);
	global.demo = true;
	room_goto_next();
	instance_destroy(oVFX_Loading);
}