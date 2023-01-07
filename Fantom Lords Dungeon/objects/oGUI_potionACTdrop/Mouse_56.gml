/// @description Insert description here
// You can write your code in this editor

if collision_point(x,y,oGUI_LordFrame1,false,true) && instance_exists(oLord1)
{
	oLord1.thisLord_ACTpoints = oLord1.thisLord_ACTpointsMAX;
	audio_play_sound(snCollectPotion,0,false);
	instance_create_layer(oGUI_LordFrame1.x,oGUI_LordFrame1.y,"Instances",oVFX_powerUpACT);
	used = true;
}
else if collision_point(x,y,oGUI_LordFrame2,false,true) && instance_exists(oLord2)
{
	oLord2.thisLord_ACTpoints = oLord2.thisLord_ACTpointsMAX;
	audio_play_sound(snCollectPotion,0,false);
	instance_create_layer(oGUI_LordFrame2.x,oGUI_LordFrame2.y,"Instances",oVFX_powerUpACT);
	used = true;
}
else if collision_point(x,y,oGUI_LordFrame3,false,true) && instance_exists(oLord3)
{
	oLord3.thisLord_ACTpoints = oLord3.thisLord_ACTpointsMAX;
	audio_play_sound(snCollectPotion,0,false);
	instance_create_layer(oGUI_LordFrame3.x,oGUI_LordFrame3.y,"Instances",oVFX_powerUpACT);
	used = true;
}
else if collision_point(x,y,oGUI_LordFrame4,false,true) && instance_exists(oLord4)
{
	oLord4.thisLord_ACTpoints = oLord4.thisLord_ACTpointsMAX;
	audio_play_sound(snCollectPotion,0,false);
	instance_create_layer(oGUI_LordFrame4.x,oGUI_LordFrame4.y,"Instances",oVFX_powerUpACT);
	used = true;
}

instance_destroy();
