/// @description Insert description here
// You can write your code in this editor

if instance_exists(oLord4) && oLordStats.lord4active
{
	if oLord4.thisLord_ACTpointsMAX >= 1 && oLord4.thisLord_ACTpoints >= 1 draw_sprite(sGUI_ACTpoints,0,x,y);
	else if oLord4.thisLord_ACTpointsMAX >= 1 && oLord4.thisLord_ACTpoints < 1 draw_sprite(sGUI_ACTpoints,1,x,y);

	if oLord4.thisLord_ACTpointsMAX >= 2 && oLord4.thisLord_ACTpoints >= 2 draw_sprite(sGUI_ACTpoints,0,x,y+24);
	else if oLord4.thisLord_ACTpointsMAX >= 2 && oLord4.thisLord_ACTpoints < 2 draw_sprite(sGUI_ACTpoints,1,x,y+24);

	if oLord4.thisLord_ACTpointsMAX >= 3 && oLord4.thisLord_ACTpoints >= 3 draw_sprite(sGUI_ACTpoints,0,x,y+48);
	else if oLord4.thisLord_ACTpointsMAX >= 3 && oLord4.thisLord_ACTpoints < 3 draw_sprite(sGUI_ACTpoints,1,x,y+48);

	if oLord4.thisLord_ACTpointsMAX >= 4 && oLord4.thisLord_ACTpoints >= 4 draw_sprite(sGUI_ACTpoints,0,x,y+72);
	else if oLord4.thisLord_ACTpointsMAX >= 4 && oLord4.thisLord_ACTpoints < 4 draw_sprite(sGUI_ACTpoints,1,x,y+72);

	if oLord4.thisLord_ACTpointsMAX >= 5 && oLord4.thisLord_ACTpoints >= 5 draw_sprite(sGUI_ACTpoints,0,x,y+96);
	else if oLord4.thisLord_ACTpointsMAX >= 5 && oLord4.thisLord_ACTpoints < 5 draw_sprite(sGUI_ACTpoints,1,x,y+96);
}