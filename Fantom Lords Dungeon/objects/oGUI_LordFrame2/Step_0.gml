/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord2active
{
	if mouse_x > x && mouse_x < x+128 && mouse_y > y && mouse_y < y+128 && !instance_exists(oGUI_LordStatsOverlay2)
	{
		mouse_on = true;
		if (!oGUI_printSelectedStatLord.locked) oGUI_printSelectedStatLord.selectedLord = 2;
		if instance_exists(oLord2) && !oLord2.thisLocked oLord2.image_blend = c_yellow;
	}
	else if mouse_x < x || mouse_x > x+128 || mouse_y < y || mouse_y > y+128
	{
		if mouse_on
		{
			if instance_exists(oLord2) && !oLord2.thisLocked oLord2.image_blend = c_white;
			mouse_on = false;
		}
	}
}