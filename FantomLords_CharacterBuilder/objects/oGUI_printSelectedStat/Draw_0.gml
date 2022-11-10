/// @description Insert description here
// You can write your code in this editor

if global.currentSelectedName != "none"
{
	draw_text(x,y,global.currentSelectedName);
	
	if global.hideEnemy = 1
	{
		draw_text(x,y+320,"ATK: " + string(global.currentSelectedATK));
		draw_text(x,y+352,"DEF: " + string(global.currentSelectedDEF));
		draw_text(x,y+384,"MAG: " + string(global.currentSelectedMAG));
	}
}