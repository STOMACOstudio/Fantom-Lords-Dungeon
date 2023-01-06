/// @description Insert description here
// You can write your code in this editor

if mouse_x > x && mouse_x < x+128 && mouse_y > y && mouse_y < y+128 && !instance_exists(oGUI_LordStatsOverlay1)
{
	mouse_on = true;
	if (!oGUI_printSelectedStatLord.locked) oGUI_printSelectedStatLord.selectedLord = 1;
	if instance_exists(oLord1) && !oLord1.thisLocked oLord1.image_blend = c_yellow;
}
else if mouse_x < x || mouse_x > x+128 || mouse_y < y || mouse_y > y+128
{
	if mouse_on
	{
		if instance_exists(oLord1) && !oLord1.thisLocked oLord1.image_blend = c_white;
		mouse_on = false;
	}
}