/// @description Insert description here
// You can write your code in this editor

if mouse_x > x && mouse_x < x+64 && mouse_y > y-4 && mouse_y < y+18 && global.potionACT > 0
{
	global.potionACT --;
	instance_create_layer(mouse_x,mouse_y,"BG",oGUI_potionACTdrop);
}