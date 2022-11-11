/// @description Insert description here
// You can write your code in this editor

if done = true
{
	image_alpha = 0;
	
	if target0enemy != noone
	{
		global.dmgENEMY = dmg - target0enemy.thisMAG;
		if global.dmgENEMY <= 0 global.dmgENEMY = 1;
		target0enemy.thisLIF -= global.dmgENEMY;
		instance_create_layer(target0enemy.x,target0enemy.y,"VFX",oGUI_printDMGenemy);
	}
	else if target0Lord != noone
	{
		global.dmgENEMY = dmg - target0Lord.thisLord_MAG;
		if global.dmgENEMY <= 0 global.dmgENEMY = 1;
		target0Lord.thisLord_LIF -= global.dmgENEMY;
		instance_create_layer(target0Lord.x,target0Lord.y,"VFX",oGUI_printDMGenemy);
	}
	global.hasControl = true;
	instance_destroy();
}