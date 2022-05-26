// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrEnemyAttack(){
	
	if dmgTYPE = thisATK dmgENEMY = (dmgTYPE + irandom_range(-3,3)) - lordTarget.thisLord_DEF;
	else if thisATK = thisMAG dmgENEMY = (dmgTYPE + irandom_range(-3,3)) - lordTarget.thisLord_MAG;
	if dmgENEMY <= 0 dmgENEMY = 1;
	global.dmgENEMY = string(dmgENEMY);
	audio_play_sound(attackSound,0,false);
	instance_create_layer(lordTarget.x,lordTarget.y,"VFX",attackSprite);
	instance_create_layer(lordTarget.x+irandom_range(8,56),lordTarget.y+irandom_range(8,56),"VFX",oGUI_printDMGenemy);
	isFighting = false;
	lordTarget.thisLord_LIF -= dmgENEMY;
	alarm[0] = alarmCounter;

}