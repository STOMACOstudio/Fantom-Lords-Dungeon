/// @description Insert description here
// You can write your code in this editor

if done = true
{
	image_alpha = 0;

	global.dmgENEMY = dmg;
	target0enemy.thisLIF -= global.dmgENEMY;
	instance_create_layer(target0enemy.x,target0enemy.y,"VFX",oGUI_printDMGenemy);
	
	global.hasControl = true;
	instance_destroy();
}