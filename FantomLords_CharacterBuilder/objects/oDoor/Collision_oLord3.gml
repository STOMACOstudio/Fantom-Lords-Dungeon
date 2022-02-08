/// @description Insert description here
// You can write your code in this editor

if open
{
	audio_play_sound(snDoor,0,false);

	if oLordStats.lord3active
	{
		oLordStats.lord3LIF = oLord3.thisLord_LIF;
		oLordStats.lord3LIFmax = oLord3.thisLord_LIFmax;
		oLordStats.lord3ATK = oLord3.thisLord_ATK;
		oLordStats.lord3ATKmax = oLord3.thisLord_ATKmax;
		oLordStats.lord3DEF = oLord3.thisLord_DEF;
		oLordStats.lord3DEFmax = oLord3.thisLord_DEFmax;
		oLordStats.lord3MAG = oLord3.thisLord_MAG;
		oLordStats.lord3MAGmax = oLord3.thisLord_MAGmax;
		oLordStats.lord3ACT = oLord3.thisLord_ACTmax;
		oLordStats.lord3ACTmax = oLord3.thisLord_ACTmax;
	
		oLord3.thisLocked = false;
		oGUI_LordFrame3.thisLocked = false;
		oLord3.x = oLord3.xstart;
		oLord3.y = oLord3.ystart;
		oLord3.image_blend = c_white;
	
		instance_create_layer(oGUI_LordFrame3.x,oGUI_LordFrame3.y,"BG",oGUI_waiting);
	
		instance_deactivate_object(oLord3)
	}

	global.isLocked = false;
}