/// @description Insert description here
// You can write your code in this editor

if instance_exists(oGUI_LordStatsOverlay1) && instance_exists(oLord1)
{
	oLord1.thisLord_LIFmax ++;
	oLord1.thisLord_LIF ++;
	oLord1.thisLord_ATKmax ++;
	oLord1.thisLord_ATK ++;
	oLord1.thisLord_DEFmax ++;
	oLord1.thisLord_DEF ++;
	oLord1.thisLord_MAGmax ++;
	oLord1.thisLord_MAG ++;
	oLord1.thisLord_ACTmax ++;
	oLord1.thisLord_ACT ++;
	oLord1.thisLord_ACTpointsMAX = round((oLord1.thisLord_ACT)/5);
	audio_play_sound(snPowerUp,0,false);
	instance_create_layer(oGUI_LordFrame1.x,oGUI_LordFrame1.y,"Instances",oVFX_powerUpALL);
	used = true;
}
else if instance_exists(oGUI_LordStatsOverlay2) && instance_exists(oLord2)
{
	oLord2.thisLord_LIFmax ++;
	oLord2.thisLord_LIF ++;
	oLord2.thisLord_ATKmax ++;
	oLord2.thisLord_ATK ++;
	oLord2.thisLord_DEFmax ++;
	oLord2.thisLord_DEF ++;
	oLord2.thisLord_MAGmax ++;
	oLord2.thisLord_MAG ++;
	oLord2.thisLord_ACTmax ++;
	oLord2.thisLord_ACT ++;
	oLord2.thisLord_ACTpointsMAX = round((oLord2.thisLord_ACT)/5);
	audio_play_sound(snPowerUp,0,false);
	instance_create_layer(oGUI_LordFrame2.x,oGUI_LordFrame2.y,"Instances",oVFX_powerUpALL);
	used = true;
}
else if instance_exists(oGUI_LordStatsOverlay3) && instance_exists(oLord3)
{
	oLord3.thisLord_LIFmax ++;
	oLord3.thisLord_LIF ++;
	oLord3.thisLord_ATKmax ++;
	oLord3.thisLord_ATK ++;
	oLord3.thisLord_DEFmax ++;
	oLord3.thisLord_DEF ++;
	oLord3.thisLord_MAGmax ++;
	oLord3.thisLord_MAG ++;
	oLord3.thisLord_ACTmax ++;
	oLord3.thisLord_ACT ++;
	oLord3.thisLord_ACTpointsMAX = round((oLord3.thisLord_ACT)/5);
	audio_play_sound(snPowerUp,0,false);
	instance_create_layer(oGUI_LordFrame3.x,oGUI_LordFrame3.y,"Instances",oVFX_powerUpALL);
	used = true;
}
else if instance_exists(oGUI_LordStatsOverlay4) && instance_exists(oLord4)
{
	oLord4.thisLord_LIFmax ++;
	oLord4.thisLord_LIF ++;
	oLord4.thisLord_ATKmax ++;
	oLord4.thisLord_ATK ++;
	oLord4.thisLord_DEFmax ++;
	oLord4.thisLord_DEF ++;
	oLord4.thisLord_MAGmax ++;
	oLord4.thisLord_MAG ++;
	oLord4.thisLord_ACTmax ++;
	oLord4.thisLord_ACT ++;
	oLord4.thisLord_ACTpointsMAX = round((oLord4.thisLord_ACT)/5);
	audio_play_sound(snPowerUp,0,false);
	instance_create_layer(oGUI_LordFrame4.x,oGUI_LordFrame4.y,"Instances",oVFX_powerUpALL);
	used = true;
}

instance_destroy();