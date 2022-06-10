/// @description Insert description here
// You can write your code in this editor

if open && nextRoom <= 0 && !global.gameOver
{	
	
	if !instance_exists(oGUI_NextRoom)	instance_create_layer(512,192,"VFX",oGUI_NextRoom);
}
else
{
	if		oLord1.x = x && oLord1.y = y instance_create_layer(oGUI_LordFrame1.x+64,oGUI_LordFrame1.y+16,"VFX",oLord_Baloon1);
	else if oLord2.x = x && oLord2.y = y instance_create_layer(oGUI_LordFrame2.x+64,oGUI_LordFrame2.y+16,"VFX",oLord_Baloon1);
	else if oLord3.x = x && oLord3.y = y instance_create_layer(oGUI_LordFrame3.x+64,oGUI_LordFrame3.y+16,"VFX",oLord_Baloon1);
	else if oLord4.x = x && oLord4.y = y instance_create_layer(oGUI_LordFrame4.x+64,oGUI_LordFrame4.y+16,"VFX",oLord_Baloon1);
}

other.x = other.lastX;
other.y = other.lastY;