/// @description Insert description here
// You can write your code in this editor

if done = true
{
	image_alpha = 0;
	if land
	{
		global.dmgENEMY = dmg - target0enemy.thisDEF;
		if global.dmgENEMY <= 0 global.dmgENEMY = 1;
		target0enemy.thisLIF -= global.dmgENEMY;
		target0enemy.stun = true;
		instance_create_layer(target0enemy.x,target0enemy.y,"VFX",oGUI_printDMGenemy);
	}
	else instance_create_layer(target0enemy.x,target0enemy.y,"VFX",oGUI_printMiss);
	
	global.hasControl = true;
	instance_destroy();
}