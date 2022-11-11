/// @description Insert description here
// You can write your code in this editor

if global.MAGgems > 0 draw_sprite(sCollect_GemMAG, 0, x,y);

draw_text_transformed(x+28,y-12,"x" + string(global.MAGgems),0.5,0.5,0);