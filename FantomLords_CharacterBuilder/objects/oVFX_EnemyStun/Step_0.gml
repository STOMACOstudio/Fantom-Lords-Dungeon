/// @description Insert description here
// You can write your code in this editor

if done = true
{
	image_alpha = 0;
	if land
	{
		global.dmgENEMY = dmg - target0lord.thisLord_DEF;
		if global.dmgENEMY <= 0 global.dmgENEMY = 1;
		target0lord.thisLord_LIF -= global.dmgENEMY;
		target0lord.stun = 2;
		thisLord_ACTpoints = 0;
		instance_create_layer(target0lord.x,target0lord.y,"VFX",oGUI_printDMGenemy);
	}
	else instance_create_layer(target0lord.x,target0lord.y,"VFX",oGUI_printMiss);
	
	global.hasControl = true;
	instance_destroy();
}