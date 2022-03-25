/// @description Insert description here
// You can write your code in this editor

if instance_exists(oLord2) && oLordStats.lord1active
{

	#region left side
	
	if oLord2.thisLord_ACTpointsMAX >= 1 && oLord2.thisLord_ACTpoints >= 1 draw_sprite(sGUI_ACTpointsON,image_index,x,y);
	else if oLord2.thisLord_ACTpointsMAX >= 1 && oLord2.thisLord_ACTpoints < 1 draw_sprite(sGUI_ACTpoints,0,x,y);

	if oLord2.thisLord_ACTpointsMAX >= 2 && oLord2.thisLord_ACTpoints >= 2 draw_sprite(sGUI_ACTpointsON,image_index,x,y+12);
	else if oLord2.thisLord_ACTpointsMAX >= 2 && oLord2.thisLord_ACTpoints < 2 draw_sprite(sGUI_ACTpoints,0,x,y+12);

	if oLord2.thisLord_ACTpointsMAX >= 3 && oLord2.thisLord_ACTpoints >= 3 draw_sprite(sGUI_ACTpointsON,image_index,x,y+24);
	else if oLord2.thisLord_ACTpointsMAX >= 3 && oLord2.thisLord_ACTpoints < 3 draw_sprite(sGUI_ACTpoints,0,x,y+24);

	if oLord2.thisLord_ACTpointsMAX >= 4 && oLord2.thisLord_ACTpoints >= 4 draw_sprite(sGUI_ACTpointsON,image_index,x,y+36);
	else if oLord2.thisLord_ACTpointsMAX >= 4 && oLord2.thisLord_ACTpoints < 4 draw_sprite(sGUI_ACTpoints,0,x,y+36);

	if oLord2.thisLord_ACTpointsMAX >= 5 && oLord2.thisLord_ACTpoints >= 5 draw_sprite(sGUI_ACTpointsON,image_index,x,y+48);
	else if oLord2.thisLord_ACTpointsMAX >= 5 && oLord2.thisLord_ACTpoints < 5 draw_sprite(sGUI_ACTpoints,0,x,y+48);
	
	if oLord2.thisLord_ACTpointsMAX >= 6 && oLord2.thisLord_ACTpoints >= 6 draw_sprite(sGUI_ACTpointsON,image_index,x,y+60);
	else if oLord2.thisLord_ACTpointsMAX >= 6 && oLord2.thisLord_ACTpoints < 6 draw_sprite(sGUI_ACTpoints,0,x,y+60);
	
	if oLord2.thisLord_ACTpointsMAX >= 7 && oLord2.thisLord_ACTpoints >= 7 draw_sprite(sGUI_ACTpointsON,image_index,x,y+72);
	else if oLord2.thisLord_ACTpointsMAX >= 7 && oLord2.thisLord_ACTpoints < 7 draw_sprite(sGUI_ACTpoints,0,x,y+72);
	
	if oLord2.thisLord_ACTpointsMAX >= 8 && oLord2.thisLord_ACTpoints >= 8 draw_sprite(sGUI_ACTpointsON,image_index,x,y+84);
	else if oLord2.thisLord_ACTpointsMAX >= 8 && oLord2.thisLord_ACTpoints < 8 draw_sprite(sGUI_ACTpoints,0,x,y+84);
	
	if oLord2.thisLord_ACTpointsMAX >= 9 && oLord2.thisLord_ACTpoints >= 9 draw_sprite(sGUI_ACTpointsON,image_index,x,y+96);
	else if oLord2.thisLord_ACTpointsMAX >= 9 && oLord2.thisLord_ACTpoints < 9 draw_sprite(sGUI_ACTpoints,0,x,y+96);
	
	if oLord2.thisLord_ACTpointsMAX >= 10 && oLord2.thisLord_ACTpoints >= 10 draw_sprite(sGUI_ACTpointsON,image_index,x,y+108);
	else if oLord2.thisLord_ACTpointsMAX >= 10 && oLord2.thisLord_ACTpoints < 10 draw_sprite(sGUI_ACTpoints,0,x,y+108);
	
	#endregion
	
	#region middle side
	
	if oLord2.thisLord_ACTpointsMAX >= 11 && oLord2.thisLord_ACTpoints >= 11 draw_sprite(sGUI_ACTpointsON,image_index,x+12,y);
	else if oLord2.thisLord_ACTpointsMAX >= 11 && oLord2.thisLord_ACTpoints < 11 draw_sprite(sGUI_ACTpoints,0,x+12,y);

	if oLord2.thisLord_ACTpointsMAX >= 12 && oLord2.thisLord_ACTpoints >= 12 draw_sprite(sGUI_ACTpointsON,image_index,x+12,y+12);
	else if oLord2.thisLord_ACTpointsMAX >= 12 && oLord2.thisLord_ACTpoints < 12 draw_sprite(sGUI_ACTpoints,0,x+12,y+12);

	if oLord2.thisLord_ACTpointsMAX >= 13 && oLord2.thisLord_ACTpoints >= 13 draw_sprite(sGUI_ACTpointsON,image_index,x+12,y+24);
	else if oLord2.thisLord_ACTpointsMAX >= 13 && oLord2.thisLord_ACTpoints < 13 draw_sprite(sGUI_ACTpoints,0,x+12,y+24);

	if oLord2.thisLord_ACTpointsMAX >= 14 && oLord2.thisLord_ACTpoints >= 14 draw_sprite(sGUI_ACTpointsON,image_index,x+12,y+36);
	else if oLord2.thisLord_ACTpointsMAX >= 14 && oLord2.thisLord_ACTpoints < 14 draw_sprite(sGUI_ACTpoints,0,x+12,y+36);

	if oLord2.thisLord_ACTpointsMAX >= 15 && oLord2.thisLord_ACTpoints >= 15 draw_sprite(sGUI_ACTpointsON,image_index,x+12,y+48);
	else if oLord2.thisLord_ACTpointsMAX >= 15 && oLord2.thisLord_ACTpoints < 15 draw_sprite(sGUI_ACTpoints,0,x+12,y+48);
	
	if oLord2.thisLord_ACTpointsMAX >= 16 && oLord2.thisLord_ACTpoints >= 16 draw_sprite(sGUI_ACTpointsON,image_index,x+12,y+60);
	else if oLord2.thisLord_ACTpointsMAX >= 16 && oLord2.thisLord_ACTpoints < 16 draw_sprite(sGUI_ACTpoints,0,x+12,y+60);
	
	if oLord2.thisLord_ACTpointsMAX >= 17 && oLord2.thisLord_ACTpoints >= 17 draw_sprite(sGUI_ACTpointsON,image_index,x+12,y+72);
	else if oLord2.thisLord_ACTpointsMAX >= 17 && oLord2.thisLord_ACTpoints < 17 draw_sprite(sGUI_ACTpoints,0,x+12,y+72);
	
	if oLord2.thisLord_ACTpointsMAX >= 18 && oLord2.thisLord_ACTpoints >= 18 draw_sprite(sGUI_ACTpointsON,image_index,x+12,y+84);
	else if oLord2.thisLord_ACTpointsMAX >= 18 && oLord2.thisLord_ACTpoints < 18 draw_sprite(sGUI_ACTpoints,0,x+12,y+84);
	
	if oLord2.thisLord_ACTpointsMAX >= 19 && oLord2.thisLord_ACTpoints >= 19 draw_sprite(sGUI_ACTpointsON,image_index,x+12,y+96);
	else if oLord2.thisLord_ACTpointsMAX >= 19 && oLord2.thisLord_ACTpoints < 19 draw_sprite(sGUI_ACTpoints,0,x+12,y+96);
	
	if oLord2.thisLord_ACTpointsMAX >= 20 && oLord2.thisLord_ACTpoints >= 20 draw_sprite(sGUI_ACTpointsON,image_index,x+12,y+108);
	else if oLord2.thisLord_ACTpointsMAX >= 20 && oLord2.thisLord_ACTpoints < 20 draw_sprite(sGUI_ACTpoints,0,x+12,y+108);
	
	#endregion
	
	#region right side
	
	if oLord2.thisLord_ACTpointsMAX >= 21 && oLord2.thisLord_ACTpoints >= 11 draw_sprite(sGUI_ACTpointsON,image_index,x+24,y);
	else if oLord2.thisLord_ACTpointsMAX >= 21 && oLord2.thisLord_ACTpoints < 11 draw_sprite(sGUI_ACTpoints,0,x+24,y);

	if oLord2.thisLord_ACTpointsMAX >= 22 && oLord2.thisLord_ACTpoints >= 12 draw_sprite(sGUI_ACTpointsON,image_index,x+24,y+12);
	else if oLord2.thisLord_ACTpointsMAX >= 22 && oLord2.thisLord_ACTpoints < 12 draw_sprite(sGUI_ACTpoints,0,x+24,y+12);

	if oLord2.thisLord_ACTpointsMAX >= 23 && oLord2.thisLord_ACTpoints >= 13 draw_sprite(sGUI_ACTpointsON,image_index,x+24,y+24);
	else if oLord2.thisLord_ACTpointsMAX >= 23 && oLord2.thisLord_ACTpoints < 13 draw_sprite(sGUI_ACTpoints,0,x+24,y+24);

	if oLord2.thisLord_ACTpointsMAX >= 24 && oLord2.thisLord_ACTpoints >= 14 draw_sprite(sGUI_ACTpointsON,image_index,x+24,y+36);
	else if oLord2.thisLord_ACTpointsMAX >= 24 && oLord2.thisLord_ACTpoints < 14 draw_sprite(sGUI_ACTpoints,0,x+24,y+36);

	if oLord2.thisLord_ACTpointsMAX >= 25 && oLord2.thisLord_ACTpoints >= 15 draw_sprite(sGUI_ACTpointsON,image_index,x+24,y+48);
	else if oLord2.thisLord_ACTpointsMAX >= 25 && oLord2.thisLord_ACTpoints < 15 draw_sprite(sGUI_ACTpoints,0,x+24,y+48);
	
	if oLord2.thisLord_ACTpointsMAX >= 26 && oLord2.thisLord_ACTpoints >= 16 draw_sprite(sGUI_ACTpointsON,image_index,x+24,y+60);
	else if oLord2.thisLord_ACTpointsMAX >= 26 && oLord2.thisLord_ACTpoints < 16 draw_sprite(sGUI_ACTpoints,0,x+24,y+60);
	
	if oLord2.thisLord_ACTpointsMAX >= 27 && oLord2.thisLord_ACTpoints >= 17 draw_sprite(sGUI_ACTpointsON,image_index,x+24,y+72);
	else if oLord2.thisLord_ACTpointsMAX >= 27 && oLord2.thisLord_ACTpoints < 17 draw_sprite(sGUI_ACTpoints,0,x+24,y+72);
	
	if oLord2.thisLord_ACTpointsMAX >= 28 && oLord2.thisLord_ACTpoints >= 18 draw_sprite(sGUI_ACTpointsON,image_index,x+24,y+84);
	else if oLord2.thisLord_ACTpointsMAX >= 28 && oLord2.thisLord_ACTpoints < 18 draw_sprite(sGUI_ACTpoints,0,x+24,y+84);
	
	if oLord2.thisLord_ACTpointsMAX >= 29 && oLord2.thisLord_ACTpoints >= 19 draw_sprite(sGUI_ACTpointsON,image_index,x+24,y+96);
	else if oLord2.thisLord_ACTpointsMAX >= 29 && oLord2.thisLord_ACTpoints < 19 draw_sprite(sGUI_ACTpoints,0,x+24,y+96);
	
	if oLord2.thisLord_ACTpointsMAX >= 30 && oLord2.thisLord_ACTpoints >= 20 draw_sprite(sGUI_ACTpointsON,image_index,x+24,y+108);
	else if oLord2.thisLord_ACTpointsMAX >= 30 && oLord2.thisLord_ACTpoints < 20 draw_sprite(sGUI_ACTpoints,0,x+24,y+108);
	
	#endregion

}