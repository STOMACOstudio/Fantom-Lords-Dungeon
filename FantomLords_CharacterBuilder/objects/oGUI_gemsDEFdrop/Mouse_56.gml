/// @description Insert description here
// You can write your code in this editor

if instance_exists(oGUI_LordStatsOverlay1)
{
	oLord1.thisLord_DEFmax ++;
	oLord1.thisLord_DEF ++;
	audio_play_sound(snPowerUp,0,false);
}
else if instance_exists(oGUI_LordStatsOverlay2)
{
	oLord2.thisLord_DEFmax ++;
	oLord2.thisLord_DEF ++;
	audio_play_sound(snPowerUp,0,false);
}
else if instance_exists(oGUI_LordStatsOverlay3)
{
	oLord3.thisLord_DEFmax ++;
	oLord3.thisLord_DEF ++;
	audio_play_sound(snPowerUp,0,false);
}
else if instance_exists(oGUI_LordStatsOverlay4)
{
	oLord4.thisLord_DEFmax ++;
	oLord4.thisLord_DEF ++;
	audio_play_sound(snPowerUp,0,false);
}
else if !instance_exists(oGUI_LordStatsOverlay1) && !instance_exists(oGUI_LordStatsOverlay2) && !instance_exists(oGUI_LordStatsOverlay3) && !instance_exists(oGUI_LordStatsOverlay4) global.DEFgems ++;

instance_destroy();