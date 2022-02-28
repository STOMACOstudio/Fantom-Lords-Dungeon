/// @description Insert description here
// You can write your code in this editor

if open
{
	audio_play_sound(snDoor,0,false);

	if oLordStats.lord4active
	{
		oLordStats.lord4LIF = oLord4.thisLord_LIF;
		oLordStats.lord4LIFmax = oLord4.thisLord_LIFmax;
		oLordStats.lord4ATK = oLord4.thisLord_ATK;
		oLordStats.lord4ATKmax = oLord4.thisLord_ATKmax;
		oLordStats.lord4DEF = oLord4.thisLord_DEF;
		oLordStats.lord4DEFmax = oLord4.thisLord_DEFmax;
		oLordStats.lord4MAG = oLord4.thisLord_MAG;
		oLordStats.lord4MAGmax = oLord4.thisLord_MAGmax;
		oLordStats.lord4ACT = oLord4.thisLord_ACTmax;
		oLordStats.lord4ACTmax = oLord4.thisLord_ACTmax;
	
		oLord4.thisLocked = false;
		oGUI_LordFrame4.thisLocked = false;
		oLord4.x = oLord4.xstart;
		oLord4.y = oLord4.ystart;
		oLord4.image_blend = c_white;
	
		instance_create_layer(oGUI_LordFrame4.x,oGUI_LordFrame4.y,"BG",oGUI_waiting);
	
		instance_deactivate_object(oLord4)
	}

	global.isLocked = false;
}