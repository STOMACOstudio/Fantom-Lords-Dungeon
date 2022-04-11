/// @description Insert description here
// You can write your code in this editor

if open && nextRoom <= 0 && !global.gameOver
{
	if !instance_exists(oVFX_SolidBlackFadeinDungeon)
	{
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
			oGUI_LordFrame1.thisLocked = false;
			oLord1.x = oLord1.xstart;
			oLord1.y = oLord1.ystart;
			oLord1.image_blend = c_white;
	
			instance_create_layer(oGUI_LordFrame1.x,oGUI_LordFrame1.y,"BG",oGUI_waiting);
	
			instance_deactivate_object(oLord1)
		}
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
		
		audio_play_sound(snDoor,0,false);
		
		global.roomCounter ++;
		instance_create_layer(0,0,"VFX",oVFX_SolidBlackFadeinDungeon);
	}
}
