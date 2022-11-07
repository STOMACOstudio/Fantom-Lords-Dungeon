/// @description Insert description here
// You can write your code in this editor

if instance_exists(oGUI_LordStatsOverlay1) && instance_exists(oLord1)
{
	oLord1.thisLord_MAGmax += 2;
	oLord1.thisLord_MAG += 2;
	audio_play_sound(snPowerUp,0,false);
	instance_create_layer(oGUI_LordFrame1.x,oGUI_LordFrame1.y,"Instances",oVFX_powerUpMAG);
	used = true;
}
else if instance_exists(oGUI_LordStatsOverlay2) && instance_exists(oLord2)
{
	oLord2.thisLord_MAGmax += 2;
	oLord2.thisLord_MAG += 2;
	audio_play_sound(snPowerUp,0,false);
	instance_create_layer(oGUI_LordFrame2.x,oGUI_LordFrame2.y,"Instances",oVFX_powerUpMAG);
	used = true;
}
else if instance_exists(oGUI_LordStatsOverlay3) && instance_exists(oLord3)
{
	oLord3.thisLord_MAGmax += 2;
	oLord3.thisLord_MAG += 2;
	audio_play_sound(snPowerUp,0,false);
	instance_create_layer(oGUI_LordFrame3.x,oGUI_LordFrame3.y,"Instances",oVFX_powerUpMAG);
	used = true;
}
else if instance_exists(oGUI_LordStatsOverlay4) && instance_exists(oLord4)
{
	oLord4.thisLord_MAGmax += 2;
	oLord4.thisLord_MAG += 2;
	audio_play_sound(snPowerUp,0,false);
	instance_create_layer(oGUI_LordFrame4.x,oGUI_LordFrame4.y,"Instances",oVFX_powerUpMAG);
	used = true;
}

instance_destroy();