/// @description Insert description here
// You can write your code in this editor

var total_lords = array_length(global.lordTokenIDs);
show_debug_message("total_lords: " + string(total_lords));
show_debug_message("global.currentLordIndex: " + string(global.currentLordIndex));
global.currentLordIndex++;
show_debug_message("global.currentLordIndex: " + string(global.currentLordIndex));
if(global.currentLordIndex >= total_lords) {
	global.currentLordIndex = 0;
}
var current_lord_id = global.lordTokenIDs[global.currentLordIndex];
var current_lord_data = global.lordTokenData[$ string(current_lord_id)];
setCurrentLord(current_lord_data);

show_debug_message("after set current lord");

//global.currentLordIndex

//if global.lordNumber < 17 global.lordNumber ++;
//else global.lordNumber = 1;

//if global.lordNumber >= 1 && global.lordNumber <= 250 scrLordGenerator1();
///*else if global.lordNumber >= 251 && global.lordNumber <= 500 scrLordGenerator1B();
//else if global.lordNumber >= 501 && global.lordNumber <= 750 scrLordGenerator1C();
//else if global.lordNumber >= 751 && global.lordNumber <= 1000 scrLordGenerator1D();
//else if global.lordNumber >= 1001 && global.lordNumber <= 1250 scrLordGenerator2();
//else if global.lordNumber >= 1251 && global.lordNumber <= 1500 scrLordGenerator2B();
//else if global.lordNumber >= 1501 && global.lordNumber <= 1750 scrLordGenerator2C();
//else if global.lordNumber >= 1751 && global.lordNumber <= 2000 scrLordGenerator2D();
//else if global.lordNumber >= 2001 && global.lordNumber <= 2250 scrLordGenerator3();
//else if global.lordNumber >= 2251 && global.lordNumber <= 2500 scrLordGenerator3B();
//else if global.lordNumber >= 2501 && global.lordNumber <= 2750 scrLordGenerator3C();
//else if global.lordNumber >= 2751 && global.lordNumber <= 3000 scrLordGenerator3D();
//else if global.lordNumber >= 3001 && global.lordNumber <= 3333 scrLordGenerator3E();*/



image_blend = c_yellow;
audio_play_sound(snClick,0,false);