/// @description Insert description here
// You can write your code in this editor

if global.SKULLkey > 0 draw_sprite(sCollect_Key, 3, x,y);
else draw_sprite(sCollect_Key, 5, x,y);

draw_text_transformed(x+16,y,"x" + string(global.SKULLkey),0.5,0.5,0);