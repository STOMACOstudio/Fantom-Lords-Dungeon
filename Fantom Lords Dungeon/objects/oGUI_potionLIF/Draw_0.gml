/// @description Insert description here
// You can write your code in this editor

if (global.potionLIF > 0) 
{
	draw_sprite(sCollect_Potion, 0, x,y);
}
else
{
	draw_sprite_ext(sCollect_Potion, 0, x,y,1,1,0,c_black,1);
}

draw_text_transformed(x+28,y-12,"x" + string(global.potionLIF),0.5,0.5,0);