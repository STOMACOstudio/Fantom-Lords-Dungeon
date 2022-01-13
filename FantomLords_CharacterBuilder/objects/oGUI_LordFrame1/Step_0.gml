/// @description Insert description here
// You can write your code in this editor

if mouse_x > x && mouse_x < x+128 && mouse_y > y && mouse_y < y+128 && !instance_exists(oGUI_LordStatsOverlay1)
{
	instance_create_layer(mouse_x,mouse_y,"Instances",oGUI_LordStatsOverlay1);
}
else if mouse_x < x || mouse_x > x+128 || mouse_y < y || mouse_y > y+128
{
	if instance_exists(oGUI_LordStatsOverlay1) instance_destroy(oGUI_LordStatsOverlay1);
}