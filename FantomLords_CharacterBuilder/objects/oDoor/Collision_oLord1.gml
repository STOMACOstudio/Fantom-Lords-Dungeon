/// @description Insert description here
// You can write your code in this editor

audio_play_sound(snDoor,0,false);

if oLordStats.lord1active
{	
	oLordStats.lord1LIF = oLord1.thisLord_LIF;
	oLordStats.lord1LIFmax = oLord1.thisLord_LIFmax;
	oLordStats.lord1ATK = oLord1.thisLord_ATK;
	oLordStats.lord1ATKmax = oLord1.thisLord_ATKmax;
	oLordStats.lord1DEF = oLord1.thisLord_DEF;
	oLordStats.lord1DEFmax = oLord1.thisLord_DEFmax;
	oLordStats.lord1MAG = oLord1.thisLord_MAG;
	oLordStats.lord1MAGmax = oLord1.thisLord_MAGmax;
	oLordStats.lord1ACT = oLord1.thisLord_ACTmax;
	oLordStats.lord1ACTmax = oLord1.thisLord_ACTmax;
	
	oLord1.thisLocked = false;
	oLord1.x = oLord1.xstart;
	oLord1.y = oLord1.ystart;
	oLord1.image_blend = c_white;
	
	instance_create_layer(oGUI_LordFrame1.x,oGUI_LordFrame1.y,"BG",oGUI_waiting);
	
	instance_deactivate_object(oLord1)
}

global.isLocked = false;