/// @description Insert description here
// You can write your code in this editor

var enemy = collision_point(mouse_x,mouse_y,oEnemy0_Father,false,true);
var dmgLORD = 0;

if enemy != noone && enemy.target = true && thisLocked && thisLord_ACTpoints > 0
{
	if thisLord_typeAttack = "MELEE"
	{
		dmgLORD = (thisLord_ATK + irandom_range(-3,3)) - enemy.thisDEF;
		audio_play_sound(snAttack,0,false);
		instance_create_layer(enemy.x+32,enemy.y+32,"VFX",oVFX_attack);
	}
	else if thisLord_typeAttack = "RANGED"
	{
		dmgLORD = (round(thisLord_ATK/2) + irandom_range(-3,3)) - enemy.thisDEF;
		audio_play_sound(snAttack,0,false);
		instance_create_layer(enemy.x+32,enemy.y+32,"VFX",oVFX_attack);
	}
	else if thisLord_typeAttack = "MAGIC"
	{
		dmgLORD = (thisLord_MAG + irandom_range(-3,3)) - enemy.thisMAG;
		audio_play_sound(snAttackMag,0,false);
		instance_create_layer(enemy.x+32,enemy.y+32,"VFX",oVFX_attackMag);
	}
	
	if dmgLORD <= 0 dmgLORD = 1;
	global.dmgLORD = string(dmgLORD);
	
	instance_create_layer(enemy.x+irandom_range(8,56),enemy.y+irandom_range(8,56),"VFX",oGUI_printDMGlord);
	
	enemy.thisLIF -= dmgLORD;
	thisLord_ACTpoints --;
}