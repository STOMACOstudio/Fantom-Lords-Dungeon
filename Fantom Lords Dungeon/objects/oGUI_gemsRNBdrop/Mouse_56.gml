/// @description Insert description here
// You can write your code in this editor

if collision_point(x,y,oGUI_LordFrame1,false,true) && instance_exists(oLord1)
{
	oLord1.thisLord_LIFmax += 2;
	oLord1.thisLord_LIF += 2;
	oLord1.thisLord_ATKmax += 2;
	oLord1.thisLord_ATK += 2;
	oLord1.thisLord_DEFmax += 2;
	oLord1.thisLord_DEF += 2;
	oLord1.thisLord_MAGmax += 2;
	oLord1.thisLord_MAG += 2;
	oLord1.thisLord_ACTmax ++;
	oLord1.thisLord_ACT ++;
	oLord1.thisLord_ACTpointsMAX = round((oLord1.thisLord_ACT)/5);
	audio_play_sound(snPowerUp,0,false);
	instance_create_layer(oGUI_LordFrame1.x,oGUI_LordFrame1.y,"Instances",oVFX_powerUpALL);
	used = true;
}
else if collision_point(x,y,oGUI_LordFrame2,false,true) && instance_exists(oLord2)
{
	oLord2.thisLord_LIFmax += 2;
	oLord2.thisLord_LIF += 2;
	oLord2.thisLord_ATKmax += 2;
	oLord2.thisLord_ATK += 2;
	oLord2.thisLord_DEFmax += 2;
	oLord2.thisLord_DEF += 2;
	oLord2.thisLord_MAGmax += 2;
	oLord2.thisLord_MAG += 2;
	oLord2.thisLord_ACTmax ++;
	oLord2.thisLord_ACT ++;
	oLord2.thisLord_ACTpointsMAX = round((oLord2.thisLord_ACT)/5);
	audio_play_sound(snPowerUp,0,false);
	instance_create_layer(oGUI_LordFrame2.x,oGUI_LordFrame2.y,"Instances",oVFX_powerUpALL);
	used = true;
}
else if collision_point(x,y,oGUI_LordFrame3,false,true) && instance_exists(oLord3)
{
	oLord3.thisLord_LIFmax += 2;
	oLord3.thisLord_LIF += 2;
	oLord3.thisLord_ATKmax += 2;
	oLord3.thisLord_ATK += 2;
	oLord3.thisLord_DEFmax += 2;
	oLord3.thisLord_DEF += 2;
	oLord3.thisLord_MAGmax += 2;
	oLord3.thisLord_MAG += 2;
	oLord3.thisLord_ACTmax ++;
	oLord3.thisLord_ACT ++;
	oLord3.thisLord_ACTpointsMAX = round((oLord3.thisLord_ACT)/5);
	audio_play_sound(snPowerUp,0,false);
	instance_create_layer(oGUI_LordFrame3.x,oGUI_LordFrame3.y,"Instances",oVFX_powerUpALL);
	used = true;
}
else if collision_point(x,y,oGUI_LordFrame4,false,true) && instance_exists(oLord4)
{
	oLord4.thisLord_LIFmax += 2;
	oLord4.thisLord_LIF += 2;
	oLord4.thisLord_ATKmax += 2;
	oLord4.thisLord_ATK += 2;
	oLord4.thisLord_DEFmax += 2;
	oLord4.thisLord_DEF += 2;
	oLord4.thisLord_MAGmax += 2;
	oLord4.thisLord_MAG += 2;
	oLord4.thisLord_ACTmax ++;
	oLord4.thisLord_ACT ++;
	oLord4.thisLord_ACTpointsMAX = round((oLord4.thisLord_ACT)/5);
	audio_play_sound(snPowerUp,0,false);
	instance_create_layer(oGUI_LordFrame4.x,oGUI_LordFrame4.y,"Instances",oVFX_powerUpALL);
	used = true;
}

instance_destroy();