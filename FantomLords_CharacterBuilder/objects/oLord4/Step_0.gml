/// @description Insert description here
// You can write your code in this editor

#region check map tile

var instTopLeft;
instTopLeft = collision_point(x-32,y-32,oMap_0parent,false,true)
if instTopLeft != noone
{
	if !instTopLeft.revealed
	{
		instTopLeft.image_alpha = 0.4;
		instTopLeft.revealed = true;
	}
}

var instTop;
instTop = collision_point(x+32,y-32,oMap_0parent,false,true)
if instTop != noone
{
	if !instTop.revealed
	{
		instTop.image_alpha = 0.4;
		instTop.revealed = true;
	}
}

var instTopRight;
instTopRight = collision_point(x+96,y-32,oMap_0parent,false,true)
if instTopRight != noone
{
	if !instTopRight.revealed
	{
		instTopRight.image_alpha = 0.4;
		instTopRight.revealed = true;
	}
}

var instRight;
instRight = collision_point(x+96,y+32,oMap_0parent,false,true)
if instRight != noone
{
	if !instRight.revealed
	{
		instRight.image_alpha = 0.4;
		instRight.revealed = true;
	}
}

var instDownRight;
instDownRight = collision_point(x+96,y+96,oMap_0parent,false,true)
if instDownRight != noone
{
	if !instDownRight.revealed
	{
		instDownRight.image_alpha = 0.4;
		instDownRight.revealed = true;
	}
}

var instDown;
instDown = collision_point(x+32,y+96,oMap_0parent,false,true)
if instDown != noone
{
	if !instDown.revealed
	{
		instDown.image_alpha = 0.4;
		instDown.revealed = true;
	}
}

var instDownLeft;
instDownLeft = collision_point(x-32,y+96,oMap_0parent,false,true)
if instDownLeft != noone
{
	if !instDownLeft.revealed
	{
		instDownLeft.image_alpha = 0.4;
		instDownLeft.revealed = true;
	}
}

var instLeft;
instLeft = collision_point(x-32,y+32,oMap_0parent,false,true)
if instLeft != noone
{
	if !instLeft.revealed
	{
		instLeft.image_alpha = 0.4;
		instLeft.revealed = true;
	}
}
#endregion
#region check enemies

var enemyTopLeft;
enemyTopLeft = collision_point(x-32,y-32,oEnemy0_Father,false,true)

var enemyTop;
enemyTop = collision_point(x+32,y-32,oEnemy0_Father,false,true)

var enemyTopRight;
enemyTopRight = collision_point(x+96,y-32,oEnemy0_Father,false,true)

var enemyRight;
enemyRight = collision_point(x+96,y+32,oEnemy0_Father,false,true)

var enemyDownRight;
enemyDownRight = collision_point(x+96,y+96,oEnemy0_Father,false,true)

var enemyDown;
enemyDown = collision_point(x+32,y+96,oEnemy0_Father,false,true)

var enemyDownLeft;
enemyDownLeft = collision_point(x-32,y+96,oEnemy0_Father,false,true)

var enemyLeft;
enemyLeft = collision_point(x-32,y+32,oEnemy0_Father,false,true)
#endregion
#region lord move
if keyboard_check_pressed(vk_numpad8) && thisLocked && thisLord_ACTpoints > 0
{
	if instTop != noone && instTop.empty
	{
	audio_play_sound(snWalk,0,false);
	y -= global.tileRate;
	thisLord_ACTpoints --;
	}
	if enemyTop != noone && thisLord_ACTpoints > 0
	{
		var dmgLORD = enemyTop.thisATK - thisLord_DEF;
		if dmgLORD < 0 dmgLORD = 0;
		var dmgENEMY = thisLord_ATK - enemyTop.thisDEF;
		if dmgENEMY < 0 dmgENEMY = 0;
		global.dmgLORD = string(dmgLORD);
		global.dmgENEMY = string(dmgENEMY);
		
		audio_play_sound(snAttack,0,false);
		instance_create_layer(enemyTop.x+32,enemyTop.y+32,"Instances",oGUI_printDMGenemy);
		instance_create_layer(x+32,y+32,"Instances",oGUI_printDMGlord);
		if dmgLORD > 0 instance_create_layer(x+32,y+32,"VFX",oVFX_attack);
		if dmgENEMY > 0 instance_create_layer(enemyTop.x+32,enemyTop.y+32,"VFX",oVFX_attack);
		
		thisLord_LIF -= dmgLORD;
		enemyTop.thisLIF -= dmgENEMY;
		
		thisLord_ACTpoints --;
	}
	
}
if keyboard_check_pressed(vk_numpad6) && thisLocked
{
	if instRight != noone && instRight.empty && thisLord_ACTpoints > 0
	{
		audio_play_sound(snWalk,0,false);
		x += global.tileRate;
		thisLord_ACTpoints --;
	}
	if enemyRight != noone && thisLord_ACTpoints > 0
	{
		var dmgLORD = enemyRight.thisATK - thisLord_DEF;
		if dmgLORD < 0 dmgLORD = 0;
		var dmgENEMY = thisLord_ATK - enemyRight.thisDEF;
		if dmgENEMY < 0 dmgENEMY = 0;
		global.dmgLORD = string(dmgLORD);
		global.dmgENEMY = string(dmgENEMY);
		
		audio_play_sound(snAttack,0,false);
		instance_create_layer(enemyRight.x+32,enemyRight.y+32,"Instances",oGUI_printDMGenemy);
		instance_create_layer(x+32,y+32,"Instances",oGUI_printDMGlord);
		if dmgLORD > 0 instance_create_layer(x+32,y+32,"VFX",oVFX_attack);
		if dmgENEMY > 0 instance_create_layer(enemyRight.x+32,enemyRight.y+32,"VFX",oVFX_attack);
		
		thisLord_LIF -= dmgLORD;
		enemyRight.thisLIF -= dmgENEMY;
		
		thisLord_ACTpoints --;
	}
}
if keyboard_check_pressed(vk_numpad2) && thisLocked
{
	if instDown != noone && instDown.empty && thisLord_ACTpoints > 0
	{
		audio_play_sound(snWalk,0,false);
		y += global.tileRate;
		thisLord_ACTpoints --;
	}
	if enemyDown != noone && thisLord_ACTpoints > 0
	{
		var dmgLORD = enemyDown.thisATK - thisLord_DEF;
		if dmgLORD < 0 dmgLORD = 0;
		var dmgENEMY = thisLord_ATK - enemyDown.thisDEF;
		if dmgENEMY < 0 dmgENEMY = 0;
		global.dmgLORD = string(dmgLORD);
		global.dmgENEMY = string(dmgENEMY);
		
		audio_play_sound(snAttack,0,false);
		instance_create_layer(enemyDown.x+32,enemyDown.y+32,"Instances",oGUI_printDMGenemy);
		instance_create_layer(x+32,y+32,"Instances",oGUI_printDMGlord);
		if dmgLORD > 0 instance_create_layer(x+32,y+32,"VFX",oVFX_attack);
		if dmgENEMY > 0 instance_create_layer(enemyDown.x+32,enemyDown.y+32,"VFX",oVFX_attack);
		
		thisLord_LIF -= dmgLORD;
		enemyDown.thisLIF -= dmgENEMY;
		
		thisLord_ACTpoints --;
	}
}
if keyboard_check_pressed(vk_numpad4) && thisLocked
{
	if  instLeft != noone && instLeft.empty && thisLord_ACTpoints > 0
	{
		audio_play_sound(snWalk,0,false);
		x -= global.tileRate;
		thisLord_ACTpoints --;
	}
	if enemyLeft != noone && thisLord_ACTpoints > 0
	{
		var dmgLORD = enemyLeft.thisATK - thisLord_DEF;
		if dmgLORD < 0 dmgLORD = 0;
		var dmgENEMY = thisLord_ATK - enemyLeft.thisDEF;
		if dmgENEMY < 0 dmgENEMY = 0;
		global.dmgLORD = string(dmgLORD);
		global.dmgENEMY = string(dmgENEMY);
		
		audio_play_sound(snAttack,0,false);
		instance_create_layer(enemyLeft.x+32,enemyLeft.y+32,"Instances",oGUI_printDMGenemy);
		instance_create_layer(x+32,y+32,"Instances",oGUI_printDMGlord);
		if dmgLORD > 0 instance_create_layer(x+32,y+32,"VFX",oVFX_attack);
		if dmgENEMY > 0 instance_create_layer(enemyLeft.x+32,enemyLeft.y+32,"VFX",oVFX_attack);
		
		thisLord_LIF -= dmgLORD;
		enemyLeft.thisLIF -= dmgENEMY;
		
		thisLord_ACTpoints --;
	}
}
#endregion

if thisLord_LIF <= 0
{
	instance_create_layer(oGUI_LordFrame4.x,oGUI_LordFrame4.y,"bG",oGUI_deathLord);
	instance_destroy(oGUI_ACTpoints4);
	instance_destroy(oGUI_LordFrame4);
	instance_destroy(oGUI_lordHealthFront4);
	instance_destroy(oGUI_lordHealthPrint4);
	oLordStats.lord4active = false;
	global.isLocked = false;
	instance_destroy();
}