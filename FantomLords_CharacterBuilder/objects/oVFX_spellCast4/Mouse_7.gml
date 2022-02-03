/// @description Insert description here
// You can write your code in this editor

var enemy = collision_point(x,y,oEnemy0_Father,false,false)
if enemy != noone && enemy.target = true
{
	var dmgLORD = global.dmgLORD - enemy.thisDEF;
	if dmgLORD < 0 dmgLORD = 0;
	global.dmgLORD = string(dmgLORD);
	
	audio_play_sound(snAttack,0,false);
	if dmgLORD > 0 instance_create_layer(enemy.x+32,enemy.y+32,"VFX",oVFX_attack);
	instance_create_layer(enemy.x+irandom_range(8,56),enemy.y+irandom_range(8,56),"VFX",oGUI_printDMGlord);
	
	enemy.thisLIF -= dmgLORD;
	oLord4.thisLord_ACTpoints --;
}
	
instance_destroy();