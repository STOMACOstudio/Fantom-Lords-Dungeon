/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord4active
{
	if mouse_x > x && mouse_x < x+128 && mouse_y > y && mouse_y < y+128 && !instance_exists(oGUI_LordStatsOverlay4)
	{
		mouse_on = true;
		instance_create_layer(mouse_x,mouse_y,"Instances",oGUI_LordStatsOverlay4);
		if instance_exists(oLord4) && !oLord4.thisLocked oLord4.image_blend = c_yellow;
	}
	else if mouse_x < x || mouse_x > x+128 || mouse_y < y || mouse_y > y+128
	{
		if mouse_on
		{
			if instance_exists(oGUI_LordStatsOverlay4) instance_destroy(oGUI_LordStatsOverlay4);
			if instance_exists(oLord4) && !oLord4.thisLocked oLord4.image_blend = c_white;
			mouse_on = false;
		}
	}
}