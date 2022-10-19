/// @description Insert description here
// You can write your code in this editor

var lord_set_ids = oUI_ChoiceFantom.active ? global.lordTokenIDs : global.ascendedLordTokenIDs;
var lord_set_data = oUI_ChoiceFantom.active ? global.lordTokenData : global.ascendedLordTokenData;
var total_lords = array_length(lord_set_ids);
show_debug_message("total_lords: " + string(total_lords));
show_debug_message("global.currentLordIndex: " + string(global.currentLordIndex));
global.currentLordIndex--;
show_debug_message("global.currentLordIndex: " + string(global.currentLordIndex));
if(global.currentLordIndex < 0) {
  global.currentLordIndex = total_lords-1;
}
var current_lord_id = lord_set_ids[global.currentLordIndex];
var current_lord_data = lord_set_data[$ string(current_lord_id)];
setCurrentLord(current_lord_data);

show_debug_message("after set current lord");

image_blend = c_yellow;
audio_play_sound(snClick,0,false);