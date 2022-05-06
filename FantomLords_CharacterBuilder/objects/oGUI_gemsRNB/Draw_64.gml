/// @description Insert description here
// You can write your code in this editor

if global.RNBgems > 0 draw_sprite(sCollect_GemRNB, 0, x,y);

draw_text_transformed(x+28,y-12,"x" + string(global.RNBgems),0.5,0.5,0);