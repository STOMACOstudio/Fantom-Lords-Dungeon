/// @description Insert description here
// You can write your code in this editor

if open && nextRoom <= 0 && !global.gameOver
{	
	
	if !instance_exists(oGUI_NextRoom)	instance_create_layer(640,360,"VFX",oGUI_NextRoom);
}

other.x = other.lastX;
other.y = other.lastY;

if !instance_exists(oGUI_NextRoom) && !instance_exists(oLord_Baloon1) instance_create_layer(other.x+32,other.y+2,"VFX",oLord_Baloon1);