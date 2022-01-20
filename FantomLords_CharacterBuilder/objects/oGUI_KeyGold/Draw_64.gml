/// @description Insert description here
// You can write your code in this editor

if global.GOLDkey > 0 draw_sprite(sCollect_Key, 2, x,y);
else draw_sprite(sCollect_Key, 4, x,y);

draw_text_transformed(x+16,y,"x" + string(global.GOLDkey),0.5,0.5,0);