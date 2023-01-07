/// @description Insert description here
// You can write your code in this editor

if collision_point(x,y,oGUI_LordFrame1,false,true) && instance_exists(oLord1)
{
	oLord1.thisLord_LIF += round(oLord1.thisLord_LIFmax/3);
	if oLord1.thisLord_LIF > oLord1.thisLord_LIFmax oLord1.thisLord_LIF = oLord1.thisLord_LIFmax;
	audio_play_sound(snCollectPotion,0,false);
	instance_create_layer(oGUI_LordFrame1.x,oGUI_LordFrame1.y,"Instances",oVFX_powerUpLIF);
	used = true;
}
else if collision_point(x,y,oGUI_LordFrame2,false,true) && instance_exists(oLord2)
{
	oLord2.thisLord_LIF += round(oLord2.thisLord_LIFmax/3);
	if oLord2.thisLord_LIF > oLord2.thisLord_LIFmax oLord2.thisLord_LIF = oLord2.thisLord_LIFmax;
	audio_play_sound(snCollectPotion,0,false);
	instance_create_layer(oGUI_LordFrame2.x,oGUI_LordFrame2.y,"Instances",oVFX_powerUpLIF);
	used = true;
}
else if collision_point(x,y,oGUI_LordFrame3,false,true) && instance_exists(oLord3)
{
	oLord3.thisLord_LIF += round(oLord3.thisLord_LIFmax/3);
	if oLord3.thisLord_LIF > oLord3.thisLord_LIFmax oLord3.thisLord_LIF = oLord3.thisLord_LIFmax;
	audio_play_sound(snCollectPotion,0,false);
	instance_create_layer(oGUI_LordFrame3.x,oGUI_LordFrame3.y,"Instances",oVFX_powerUpLIF);
	used = true;
}
else if collision_point(x,y,oGUI_LordFrame4,false,true) && instance_exists(oLord4)
{
	oLord4.thisLord_LIF += round(oLord4.thisLord_LIFmax/3);
	if oLord4.thisLord_LIF > oLord4.thisLord_LIFmax oLord4.thisLord_LIF = oLord4.thisLord_LIFmax;
	audio_play_sound(snCollectPotion,0,false);
	instance_create_layer(oGUI_LordFrame4.x,oGUI_LordFrame4.y,"Instances",oVFX_powerUpLIF);
	used = true;
}

instance_destroy();