/// @description Insert description here
// You can write your code in this editor

if instance_exists(oGUI_LordStatsOverlay1)
{
	oLord1.thisLord_LIFmax ++;
	oLord1.thisLord_LIF ++;
	audio_play_sound(snPowerUp,0,false);
}
else if instance_exists(oGUI_LordStatsOverlay2)
{
	oLord2.thisLord_LIFmax ++;
	oLord2.thisLord_LIF ++;
	audio_play_sound(snPowerUp,0,false);
}
else if instance_exists(oGUI_LordStatsOverlay3)
{
	oLord3.thisLord_LIFmax ++;
	oLord3.thisLord_LIF ++;
	audio_play_sound(snPowerUp,0,false);
}
else if instance_exists(oGUI_LordStatsOverlay4)
{
	oLord4.thisLord_LIFmax ++;
	oLord4.thisLord_LIF ++;
	audio_play_sound(snPowerUp,0,false);
}
else if !instance_exists(oGUI_LordStatsOverlay1) && !instance_exists(oGUI_LordStatsOverlay2) && !instance_exists(oGUI_LordStatsOverlay3) && !instance_exists(oGUI_LordStatsOverlay4) global.LIFgems ++;

instance_destroy();