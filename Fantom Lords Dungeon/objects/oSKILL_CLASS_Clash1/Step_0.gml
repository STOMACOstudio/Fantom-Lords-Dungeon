/// @description Insert description here
// You can write your code in this editor

if done = true
{
	image_alpha = 0;

	global.dmgLORD = dmg - target0enemy.thisDEF;
	if global.dmgLORD <= 0 global.dmgLORD = 1;
	target0enemy.thisLIF -= global.dmgLORD;
	instance_create_layer(target0enemy.x,target0enemy.y,"VFX",oGUI_printDMGlord);
	
	global.hasControl = true;
	instance_destroy();
}