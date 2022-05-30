// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrEnemyAttack(){
	
	if dmgTYPE = thisATK dmgENEMY = (dmgTYPE + irandom_range(-3,3)) - lordTarget.thisLord_DEF;
	else if thisATK = thisMAG dmgENEMY = (dmgTYPE + irandom_range(-3,3)) - lordTarget.thisLord_MAG;
	if dmgENEMY <= 0 dmgENEMY = 1;
	global.dmgENEMY = dmgENEMY;
	audio_play_sound(attackSound,0,false);
	instance_create_layer(lordTarget.x,lordTarget.y,"VFX",attackSprite);
	instance_create_layer(lordTarget.x+irandom_range(8,56),lordTarget.y+irandom_range(8,56),"VFX",oGUI_printDMGenemy);
	isFighting = false;
	lordTarget.thisLord_LIF -= dmgENEMY;
	
	if lordTarget.thisLord_LIF <= lordTarget.thisLord_LIFmax/2 && lordTarget.thisLord_LIF > 0
	{
			 if collision_point(lordTarget.x,lordTarget.y,oLord1,false,true) instance_create_layer(oGUI_LordFrame1.x+64,oGUI_LordFrame1.y+16,"VFX",oLord_Baloon3);
		else if collision_point(lordTarget.x,lordTarget.y,oLord2,false,true) instance_create_layer(oGUI_LordFrame2.x+64,oGUI_LordFrame2.y+16,"VFX",oLord_Baloon3);
		else if collision_point(lordTarget.x,lordTarget.y,oLord3,false,true) instance_create_layer(oGUI_LordFrame3.x+64,oGUI_LordFrame3.y+16,"VFX",oLord_Baloon3);
		else if collision_point(lordTarget.x,lordTarget.y,oLord4,false,true) instance_create_layer(oGUI_LordFrame4.x+64,oGUI_LordFrame4.y+16,"VFX",oLord_Baloon3);
	}
	
	alarm[0] = alarmCounter;

}