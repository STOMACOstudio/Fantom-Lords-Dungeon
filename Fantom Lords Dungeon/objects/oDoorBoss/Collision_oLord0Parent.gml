/// @description Insert description here
// You can write your code in this editor

if open && nextRoom <= 0 && !global.gameOver
{	
	if (!instance_exists(oGUI_NextRoom))
	{
		oGUI_printSelectedStatLord.selectedLord = 0;
		instance_create_layer(512,192,"VFX",oGUI_NextRoom);
	}
}
else
{
	scrLordEnterDoor();
}

other.x = other.lastX;
other.y = other.lastY;