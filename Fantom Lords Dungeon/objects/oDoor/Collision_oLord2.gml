/// @description Insert description here
// You can write your code in this editor

/*if open
{
	audio_play_sound(snDoor,0,false);

	if oLordStats.lord2active
	{
		oLordStats.lord2LIF = oLord2.thisLord_LIF;
		oLordStats.lord2LIFmax = oLord2.thisLord_LIFmax;
		oLordStats.lord2ATK = oLord2.thisLord_ATK;
		oLordStats.lord2ATKmax = oLord2.thisLord_ATKmax;
		oLordStats.lord2DEF = oLord2.thisLord_DEF;
		oLordStats.lord2DEFmax = oLord2.thisLord_DEFmax;
		oLordStats.lord2MAG = oLord2.thisLord_MAG;
		oLordStats.lord2MAGmax = oLord2.thisLord_MAGmax;
		oLordStats.lord2ACT = oLord2.thisLord_ACTmax;
		oLordStats.lord2ACTmax = oLord2.thisLord_ACTmax;
	
		oLord2.thisLocked = false;
		oGUI_LordFrame2.thisLocked = false;
		oLord2.x = oLord2.xstart;
		oLord2.y = oLord2.ystart;
		oLord2.image_blend = c_white;
	
		instance_create_layer(oGUI_LordFrame2.x,oGUI_LordFrame2.y,"BG",oGUI_waiting);
	
		instance_deactivate_object(oLord2)
	}

	global.isLocked = false;
}