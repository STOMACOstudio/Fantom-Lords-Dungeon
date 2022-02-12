/// @description Insert description here
// You can write your code in this editor

if mouse_x > x+21 && mouse_x < x+43 && mouse_y > y+21 && mouse_y < y+43 && global.MAGgems > 0
{
	global.MAGgems --;
	instance_create_layer(mouse_x,mouse_y,"BG",oGUI_gemsMAGdrop);
}