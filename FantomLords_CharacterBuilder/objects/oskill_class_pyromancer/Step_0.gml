/// @description Insert description here
// You can write your code in this editor

//var makeEffect = irandom_range(0,5);
//if makeEffect = 5 instance_create_depth(irandom_range(x-32,x+32),irandom_range(y-32,y+32),depth+1,oSKILL_WEAPON_BladeWhirl2);

image_angle += 2;

if done = true
{
	image_alpha = 0;
	
	#region target enemy
	if target1enemy != noone
	{
		global.dmgENEMY = round((dmg - target1enemy.thisMAG)/2);
		if global.dmgENEMY <= 0 global.dmgENEMY = 1;
		target1enemy.thisLIF -= global.dmgENEMY;
		instance_create_layer(target1enemy.x,target1enemy.y,"VFX",oGUI_printDMGenemy);
	}
	if target2enemy != noone
	{
		global.dmgENEMY = round((dmg - target2enemy.thisMAG)/2);
		if global.dmgENEMY <= 0 global.dmgENEMY = 1;
		target2enemy.thisLIF -= global.dmgENEMY;
		instance_create_layer(target2enemy.x,target2enemy.y,"VFX",oGUI_printDMGenemy);
	}
	if target3enemy != noone
	{
		global.dmgENEMY = round((dmg - target3enemy.thisMAG)/2);
		if global.dmgENEMY <= 0 global.dmgENEMY = 1;
		target3enemy.thisLIF -= global.dmgENEMY;
		instance_create_layer(target3enemy.x,target3enemy.y,"VFX",oGUI_printDMGenemy);
	}
	if target4enemy != noone
	{
		global.dmgENEMY = round((dmg - target4enemy.thisMAG)/2);
		if global.dmgENEMY <= 0 global.dmgENEMY = 1;
		target4enemy.thisLIF -= global.dmgENEMY;
		instance_create_layer(target4enemy.x,target4enemy.y,"VFX",oGUI_printDMGenemy);
	}
	if target5enemy != noone
	{
		global.dmgENEMY = round((dmg - target5enemy.thisMAG)/2);
		if global.dmgENEMY <= 0 global.dmgENEMY = 1;
		target5enemy.thisLIF -= global.dmgENEMY;
		instance_create_layer(target5enemy.x,target5enemy.y,"VFX",oGUI_printDMGenemy);
	}
	if target6enemy != noone
	{
		global.dmgENEMY = round((dmg - target6enemy.thisMAG)/2);
		if global.dmgENEMY <= 0 global.dmgENEMY = 1;
		target6enemy.thisLIF -= global.dmgENEMY;
		instance_create_layer(target6enemy.x,target6enemy.y,"VFX",oGUI_printDMGenemy);
	}
	if target7enemy != noone
	{
		global.dmgENEMY = round((dmg - target7enemy.thisMAG)/2);
		if global.dmgENEMY <= 0 global.dmgENEMY = 1;
		target7enemy.thisLIF -= global.dmgENEMY;
		instance_create_layer(target7enemy.x,target7enemy.y,"VFX",oGUI_printDMGenemy);
	}
	if target8enemy != noone
	{
		global.dmgENEMY = round((dmg - target8enemy.thisMAG)/2);
		if global.dmgENEMY <= 0 global.dmgENEMY = 1;
		target8enemy.thisLIF -= global.dmgENEMY;
		instance_create_layer(target8enemy.x,target8enemy.y,"VFX",oGUI_printDMGenemy);
	}
	#endregion
	#region target lord
	if target1lord != noone
	{
		global.dmgLORD = round((dmg - target1lord.thisLord_MAG)/2);
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		target1lord.thisLord_LIF -= global.dmgLORD;
		instance_create_layer(target1lord.x,target1lord.y,"VFX",oGUI_printDMGlord);
	}
	if target2lord != noone
	{
		global.dmgLORD = round((dmg - target2lord.thisLord_MAG)/2);
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		target2lord.thisLord_LIF -= global.dmgLORD;
		instance_create_layer(target2lord.x,target2lord.y,"VFX",oGUI_printDMGlord);
	}
	if target3lord != noone
	{
		global.dmgLORD = round((dmg - target3lord.thisLord_MAG)/2);
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		target3lord.thisLord_LIF -= global.dmgLORD;
		instance_create_layer(target3lord.x,target3lord.y,"VFX",oGUI_printDMGlord);
	}
	if target4lord != noone
	{
		global.dmgLORD = round((dmg - target4lord.thisLord_MAG)/2);
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		target4lord.thisLord_LIF -= global.dmgLORD;
		instance_create_layer(target4lord.x,target4lord.y,"VFX",oGUI_printDMGlord);
	}
	if target5lord != noone
	{
		global.dmgLORD = round((dmg - target5lord.thisLord_MAG)/2);
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		target5lord.thisLord_LIF -= global.dmgLORD;
		instance_create_layer(target5lord.x,target5lord.y,"VFX",oGUI_printDMGlord);
	}
	if target6lord != noone
	{
		global.dmgLORD = round((dmg - target6lord.thisLord_MAG)/2);
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		target6lord.thisLord_LIF -= global.dmgLORD;
		instance_create_layer(target6lord.x,target6lord.y,"VFX",oGUI_printDMGlord);
	}
	if target7lord != noone
	{
		global.dmgLORD = round((dmg - target7lord.thisLord_MAG)/2);
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		target7lord.thisLord_LIF -= global.dmgLORD;
		instance_create_layer(target7lord.x,target7lord.y,"VFX",oGUI_printDMGlord);
	}
	if target8lord != noone
	{
		global.dmgLORD = round((dmg - target8lord.thisLord_MAG)/2);
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		target8lord.thisLord_LIF -= global.dmgLORD;
		instance_create_layer(target8lord.x,target8lord.y,"VFX",oGUI_printDMGlord);
	}
	#endregion
	
	global.hasControl = true;
	instance_destroy();
}