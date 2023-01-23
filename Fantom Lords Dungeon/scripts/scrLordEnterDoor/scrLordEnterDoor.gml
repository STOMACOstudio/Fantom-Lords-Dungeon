// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrLordEnterDoor(){
	
	if (instance_exists(oLord1) && oLord1.x = x && oLord1.y = y)
	{
		instance_create_layer(oGUI_LordFrame1.x+64,oGUI_LordFrame1.y+16,"VFX",oLord_Baloon1);
		//show_debug_message("ENTERED LORD 1");
	}
	else if (instance_exists(oLord2) && oLord2.x = x && oLord2.y = y)
	{
		instance_create_layer(oGUI_LordFrame2.x+64,oGUI_LordFrame2.y+16,"VFX",oLord_Baloon1);
		//show_debug_message("ENTERED LORD 2");
	}
	else if (instance_exists(oLord3) && oLord3.x = x && oLord3.y = y)
	{
		instance_create_layer(oGUI_LordFrame3.x+64,oGUI_LordFrame3.y+16,"VFX",oLord_Baloon1);
		//show_debug_message("ENTERED LORD 3");
	}
	else if (instance_exists(oLord4) && oLord4.x = x && oLord4.y = y)
	{
		instance_create_layer(oGUI_LordFrame4.x+64,oGUI_LordFrame4.y+16,"VFX",oLord_Baloon1);
		//show_debug_message("ENTERED LORD 4");
	}
}