/// @description Insert description here
// You can write your code in this editor

if enemy != noone && enemy.target = true
{
	global.dmgLORD = 1000;
	instance_create_layer(enemy.x,enemy.y,"VFX",oGUI_printDMGlord);
	enemy.thisLIF -= global.dmgLORD;
	instance_destroy();
}
