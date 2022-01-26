/// @description Insert description here
// You can write your code in this editor

if global.potionLIF > 0 draw_sprite(sCollect_Potion, 0, x-24,y-24);
else draw_sprite(sCollect_Potion, 1, x-24,y-24);

draw_text_transformed(x+16,y,"x" + string(global.potionLIF),0.5,0.5,0);