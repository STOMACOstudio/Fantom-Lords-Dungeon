/// @description Insert description here
// You can write your code in this editor

if global.LIFgems > 0 draw_sprite(sCollect_Gem, 0, x-24,y-24);
else draw_sprite(sCollect_Gem, 6, x-24,y-24);

draw_text_transformed(x+16,y,"x" + string(global.LIFgems),0.5,0.5,0);