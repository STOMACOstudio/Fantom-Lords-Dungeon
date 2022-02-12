/// @description Insert description here
// You can write your code in this editor

if global.DEFgems > 0 draw_sprite(sCollect_GemDEF, 0, x,y);

draw_text_transformed(x+50,y+22,"x" + string(global.DEFgems),0.5,0.5,0);