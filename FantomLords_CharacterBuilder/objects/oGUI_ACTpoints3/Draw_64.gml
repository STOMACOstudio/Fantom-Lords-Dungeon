/// @description Insert description here
// You can write your code in this editor
if instance_exists(oLord3) && oLordStats.lord3active
{
	if oLord3.thisLord_ACTpointsMAX >= 1 && oLord3.thisLord_ACTpoints >= 1 draw_sprite(sGUI_ACTpoints,0,x,y);
	else if oLord3.thisLord_ACTpointsMAX >= 1 && oLord3.thisLord_ACTpoints < 1 draw_sprite(sGUI_ACTpoints,1,x,y);

	if oLord3.thisLord_ACTpointsMAX >= 2 && oLord3.thisLord_ACTpoints >= 2 draw_sprite(sGUI_ACTpoints,0,x,y+24);
	else if oLord3.thisLord_ACTpointsMAX >= 2 && oLord3.thisLord_ACTpoints < 2 draw_sprite(sGUI_ACTpoints,1,x,y+24);

	if oLord3.thisLord_ACTpointsMAX >= 3 && oLord3.thisLord_ACTpoints >= 3 draw_sprite(sGUI_ACTpoints,0,x,y+48);
	else if oLord3.thisLord_ACTpointsMAX >= 3 && oLord3.thisLord_ACTpoints < 3 draw_sprite(sGUI_ACTpoints,1,x,y+48);

	if oLord3.thisLord_ACTpointsMAX >= 4 && oLord3.thisLord_ACTpoints >= 4 draw_sprite(sGUI_ACTpoints,0,x,y+72);
	else if oLord3.thisLord_ACTpointsMAX >= 4 && oLord3.thisLord_ACTpoints < 4 draw_sprite(sGUI_ACTpoints,1,x,y+72);

	if oLord3.thisLord_ACTpointsMAX >= 5 && oLord3.thisLord_ACTpoints >= 5 draw_sprite(sGUI_ACTpoints,0,x,y+96);
	else if oLord3.thisLord_ACTpointsMAX >= 5 && oLord3.thisLord_ACTpoints < 5 draw_sprite(sGUI_ACTpoints,1,x,y+96);
}