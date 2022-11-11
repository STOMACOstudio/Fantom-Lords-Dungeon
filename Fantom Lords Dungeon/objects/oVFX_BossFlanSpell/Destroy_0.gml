/// @description Insert description here
// You can write your code in this editor

dmg = dmg - lord.thisLord_MAG;
if dmg <= 0 dmg = 1;
global.dmgENEMY = dmg;
instance_create_layer(lord.x,lord.y,"VFX",oGUI_printDMGenemy);
lord.thisLord_LIF -= dmg;

if lord.thisLord_LIF <= lord.thisLord_LIFmax/2 && lord.thisLord_LIF > 0
{
			 if collision_point(lord.x,lord.y,oLord1,false,true) instance_create_layer(oGUI_LordFrame1.x+64,oGUI_LordFrame1.y+16,"VFX",oLord_Baloon3);
		else if collision_point(lord.x,lord.y,oLord2,false,true) instance_create_layer(oGUI_LordFrame2.x+64,oGUI_LordFrame2.y+16,"VFX",oLord_Baloon3);
		else if collision_point(lord.x,lord.y,oLord3,false,true) instance_create_layer(oGUI_LordFrame3.x+64,oGUI_LordFrame3.y+16,"VFX",oLord_Baloon3);
		else if collision_point(lord.x,lord.y,oLord4,false,true) instance_create_layer(oGUI_LordFrame4.x+64,oGUI_LordFrame4.y+16,"VFX",oLord_Baloon3);
}