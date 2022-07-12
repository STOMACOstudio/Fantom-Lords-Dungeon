/// @description Insert description here
// You can write your code in this editor

image_xscale += 0.05;
image_yscale += 0.05;

instance_create_depth(x+irandom_range(-sprite_width/2,sprite_width/2),y+irandom_range(-sprite_height/2,sprite_height/2),depth+1,oSKILL_WEAPON_Moonblast2);
instance_create_depth(x+irandom_range(-sprite_width/2,sprite_width/2),y+irandom_range(-sprite_height/2,sprite_height/2),depth+1,oSKILL_WEAPON_Moonblast2);
instance_create_depth(x+irandom_range(-sprite_width/2,sprite_width/2),y+irandom_range(-sprite_height/2,sprite_height/2),depth+1,oSKILL_WEAPON_Moonblast2);

if done = true
{
	if instance_exists(target0enemy)
	{
		global.dmgENEMY = dmg - target0enemy.thisMAG;
		if global.dmgENEMY <= 0 global.dmgENEMY = 1;
		target0enemy.thisLIF -= global.dmgENEMY;
		instance_create_layer(target0enemy.x,target0enemy.y,"VFX",oGUI_printDMGenemy);
	}
	if instance_exists(target1enemy)
	{
		global.dmgENEMY = dmg - target1enemy.thisMAG;
		if global.dmgENEMY <= 0 global.dmgENEMY = 1;
		target1enemy.thisLIF -= global.dmgENEMY;
		instance_create_layer(target1enemy.x,target1enemy.y,"VFX",oGUI_printDMGenemy);
	}
	if instance_exists(target2enemy)
	{
		global.dmgENEMY = dmg - target2enemy.thisMAG;
		if global.dmgENEMY <= 0 global.dmgENEMY = 1;
		target2enemy.thisLIF -= global.dmgENEMY;
		instance_create_layer(target2enemy.x,target2enemy.y,"VFX",oGUI_printDMGenemy);
	}
	if instance_exists(target3enemy)
	{
		global.dmgENEMY = dmg - target3enemy.thisMAG;
		if global.dmgENEMY <= 0 global.dmgENEMY = 1;
		target3enemy.thisLIF -= global.dmgENEMY;
		instance_create_layer(target3enemy.x,target3enemy.y,"VFX",oGUI_printDMGenemy);
	}
	if instance_exists(target0lord)
	{
		global.dmgENEMY = dmg - target0lord.thisLord_MAG;
		if global.dmgENEMY <= 0 global.dmgENEMY = 1;
		target0lord.thisLord_LIF -= global.dmgENEMY;
		instance_create_layer(target0lord.x,target0lord.y,"VFX",oGUI_printDMGenemy);
	}
	if instance_exists(target1lord)
	{
		global.dmgENEMY = dmg - target1lord.thisLord_MAG;
		if global.dmgENEMY <= 0 global.dmgENEMY = 1;
		target1lord.thisLord_LIF -= global.dmgENEMY;
		instance_create_layer(target1lord.x,target1lord.y,"VFX",oGUI_printDMGenemy);
	}
	if instance_exists(target2lord)
	{
		global.dmgENEMY = dmg - target2lord.thisLord_MAG;
		if global.dmgENEMY <= 0 global.dmgENEMY = 1;
		target2lord.thisLord_LIF -= global.dmgENEMY;
		instance_create_layer(target2lord.x,target2lord.y,"VFX",oGUI_printDMGenemy);
	}
	if instance_exists(target3lord)
	{
		global.dmgENEMY = dmg - target3lord.thisLord_MAG;
		if global.dmgENEMY <= 0 global.dmgENEMY = 1;
		target3lord.thisLord_LIF -= global.dmgENEMY;
		instance_create_layer(target3lord.x,target3lord.y,"VFX",oGUI_printDMGenemy);
	}
	
	instance_destroy();
	global.castLord = noone;
	global.hasControl = true;
}