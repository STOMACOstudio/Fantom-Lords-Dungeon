/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord3active
{
	if mouse_x > x && mouse_x < x+128 && mouse_y > y && mouse_y < y+128 && !instance_exists(oGUI_LordStatsOverlay3)
	{
		mouse_on = true;
		if (!oGUI_printSelectedStatLord.locked) oGUI_printSelectedStatLord.selectedLord = 3;
		if instance_exists(oLord3) && !oLord3.thisLocked oLord3.image_blend = c_yellow;
	}
	else if mouse_x < x || mouse_x > x+128 || mouse_y < y || mouse_y > y+128
	{
		if mouse_on
		{
			if instance_exists(oLord3) && !oLord3.thisLocked oLord3.image_blend = c_white;
			mouse_on = false;
		}
	}
}