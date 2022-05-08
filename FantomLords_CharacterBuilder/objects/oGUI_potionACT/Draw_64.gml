/// @description Insert description here
// You can write your code in this editor

if global.potionACT > 0 draw_sprite(sCollect_PotionACT, 0, x-24,y-24);
else draw_sprite(sCollect_Potion, 1, x-24,y-24);

draw_text_transformed(x,y-36,"x" + string(global.potionACT),0.5,0.5,0);