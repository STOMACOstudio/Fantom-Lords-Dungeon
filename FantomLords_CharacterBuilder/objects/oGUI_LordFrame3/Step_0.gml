/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord3active
{
	if mouse_x > x && mouse_x < x+128 && mouse_y > y && mouse_y < y+128 && !instance_exists(oGUI_LordStatsOverlay3)
	{
		instance_create_layer(mouse_x,mouse_y,"Instances",oGUI_LordStatsOverlay3);
	}
	else if mouse_x < x || mouse_x > x+128 || mouse_y < y || mouse_y > y+128
	{
		if instance_exists(oGUI_LordStatsOverlay3) instance_destroy(oGUI_LordStatsOverlay3);
	}
}