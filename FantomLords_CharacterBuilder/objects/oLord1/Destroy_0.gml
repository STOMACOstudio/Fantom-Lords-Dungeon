/// @description Insert description here
// You can write your code in this editor

var thisTalk = irandom_range(1,5)
if thisTalk = 5 instance_create_layer(oGUI_LordFrame1.x+64,oGUI_LordFrame1.y+16,"VFX",oLord_Baloon6);

var chooseLord1 = irandom_range(1,5);
var chooseLord2 = irandom_range(1,5);
var chooseLord3 = irandom_range(1,5);

if chooseLord1 = 5 && instance_exists(oLord2) instance_create_layer(oGUI_LordFrame2.x+64,oGUI_LordFrame2.y+16,"VFX",oLord_Baloon7);
if chooseLord2 = 5 && instance_exists(oLord3) instance_create_layer(oGUI_LordFrame3.x+64,oGUI_LordFrame3.y+16,"VFX",oLord_Baloon7);
if chooseLord3 = 5 && instance_exists(oLord4) instance_create_layer(oGUI_LordFrame4.x+64,oGUI_LordFrame4.y+16,"VFX",oLord_Baloon7);
