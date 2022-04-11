/// @description Insert description here
// You can write your code in this editor

if open && nextRoom <= 0 && !global.gameOver
{	
	
	if !instance_exists(oGUI_NextRoom)	instance_create_layer(640,360,"VFX",oGUI_NextRoom);
}

other.x = other.lastX;
other.y = other.lastY;
