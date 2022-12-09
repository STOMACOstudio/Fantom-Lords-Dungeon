/// @description Insert description here
// You can write your code in this editor

if collision_point(x,y,oSKILL_WEAPON_Missile_impact,false,true) instance_destroy();

if done = true
{
	image_alpha = 0;

	global.dmgENEMY = dmg - target0enemy.thisMAG;
	if global.dmgENEMY <= 0 global.dmgENEMY = 1;
	target0enemy.thisLIF -= global.dmgENEMY;
	instance_create_layer(target0enemy.x,target0enemy.y,"VFX",oGUI_printDMGenemy);
	
	instance_destroy();
}