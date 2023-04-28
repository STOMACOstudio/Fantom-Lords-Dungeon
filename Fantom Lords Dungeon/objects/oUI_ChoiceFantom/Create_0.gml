/// @description Insert description here
// You can write your code in this editor

var availableBaseLords = array_length(global.lordTokenIDs) > 0;
active = availableBaseLords == true;
show_debug_message("active: " + string(active));
image_blend = active ? c_white : c_dkgray;