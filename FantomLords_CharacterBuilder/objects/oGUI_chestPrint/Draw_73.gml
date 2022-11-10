/// @description Insert description here
// You can write your code in this editor

if global.currentSelectedStatus != "none" draw_text_color(x,y,string(global.currentSelectedStatus),global.currentStatusColor,global.currentStatusColor,global.currentStatusColor,global.currentStatusColor,1);
if global.currentSelectedDescription1 != "none" draw_text(x,y+28,string(global.currentSelectedDescription1));
if global.currentSelectedDescription2 != "none" draw_text(x,y+56,string(global.currentSelectedDescription2));
if global.currentSelectedDescription3 != "none" draw_text(x,y+84,string(global.currentSelectedDescription3));