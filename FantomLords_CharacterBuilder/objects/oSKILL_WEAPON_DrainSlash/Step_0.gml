/// @description Insert description here
// You can write your code in this editor

if done = true
{
	image_alpha = 0;

	global.dmgENEMY = dmg - target0enemy.thisDEF;
	if global.dmgENEMY <= 0 global.dmgENEMY = 1;
	global.dmgLORD = round(global.dmgENEMY/2);
	if global.dmgLORD <= 0 global.dmgLORD = 1;
	target0enemy.thisLIF -= global.dmgENEMY;
	global.castLord.thisLord_LIF += global.dmgLORD;
	if global.castLord.thisLord_LIF > global.castLord.thisLord_LIFmax global.castLord.thisLord_LIF = global.castLord.thisLord_LIFmax;
	instance_create_layer(target0enemy.x,target0enemy.y,"VFX",oGUI_printDMGenemy);
	instance_create_layer(global.castLord.x,global.castLord.y,"VFX",oGUI_printHEAL);
	
	instance_destroy();
	global.castLord = noone;
}
