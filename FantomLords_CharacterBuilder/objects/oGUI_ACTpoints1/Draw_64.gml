/// @description Insert description here
// You can write your code in this editor

if oLord1.thisLord_ACTpointsMAX >= 1 && oLord1.thisLord_ACTpoints >= 1 draw_sprite(sGUI_ACTpoints,0,x,y);
else if oLord1.thisLord_ACTpointsMAX >= 1 && oLord1.thisLord_ACTpoints < 1 draw_sprite(sGUI_ACTpoints,1,x,y);

if oLord1.thisLord_ACTpointsMAX >= 2 && oLord1.thisLord_ACTpoints >= 2 draw_sprite(sGUI_ACTpoints,0,x,y+24);
else if oLord1.thisLord_ACTpointsMAX >= 2 && oLord1.thisLord_ACTpoints < 2 draw_sprite(sGUI_ACTpoints,1,x,y+24);

if oLord1.thisLord_ACTpointsMAX >= 3 && oLord1.thisLord_ACTpoints >= 3 draw_sprite(sGUI_ACTpoints,0,x,y+48);
else if oLord1.thisLord_ACTpointsMAX >= 3 && oLord1.thisLord_ACTpoints < 3 draw_sprite(sGUI_ACTpoints,1,x,y+48);

if oLord1.thisLord_ACTpointsMAX >= 4 && oLord1.thisLord_ACTpoints >= 4 draw_sprite(sGUI_ACTpoints,0,x,y+72);
else if oLord1.thisLord_ACTpointsMAX >= 4 && oLord1.thisLord_ACTpoints < 4 draw_sprite(sGUI_ACTpoints,1,x,y+72);

if oLord1.thisLord_ACTpointsMAX >= 5 && oLord1.thisLord_ACTpoints >= 5 draw_sprite(sGUI_ACTpoints,0,x,y+96);
else if oLord1.thisLord_ACTpointsMAX >= 5 && oLord1.thisLord_ACTpoints < 5 draw_sprite(sGUI_ACTpoints,1,x,y+96);