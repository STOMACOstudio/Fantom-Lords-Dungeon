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
		global.tileNumber --;
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
		global.tileNumber --;
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
		global.tileNumber --;
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
		global.tileNumber --;
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
		global.tileNumber --;
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
		global.tileNumber --;
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
		global.tileNumber --;
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
		global.tileNumber --;
	}
}
#endregion

if !instance_exists(oVFX_spellCast0father)
{
if keyboard_check_pressed(ord("W")) && thisLocked && thisLord_ACTpoints > 0
{
	if instTop != noone && instTop.empty
	{
	audio_play_sound(snWalk,0,false);
	y -= global.tileRate;
	thisLord_ACTpoints --;
	}	
}
if keyboard_check_pressed(ord("A")) && thisLocked
{
	if  instLeft != noone && instLeft.empty && thisLord_ACTpoints > 0
	{
		audio_play_sound(snWalk,0,false);
		x -= global.tileRate;
		thisLord_ACTpoints --;
	}
}
if keyboard_check_pressed(ord("D")) && thisLocked
{
	if instRight != noone && instRight.empty && thisLord_ACTpoints > 0
	{
		audio_play_sound(snWalk,0,false);
		x += global.tileRate;
		thisLord_ACTpoints --;
	}
}
if keyboard_check_pressed(ord("S")) && thisLocked
{
	if instDown != noone && instDown.empty && thisLord_ACTpoints > 0
	{
		audio_play_sound(snWalk,0,false);
		y += global.tileRate;
		thisLord_ACTpoints --;
	}
}
}

if thisLord_LIF <= 0
{
	instance_create_layer(oGUI_LordFrame3.x,oGUI_LordFrame3.y,"bG",oGUI_deathLord);
	instance_destroy(oGUI_ACTpoints3);
	instance_destroy(oGUI_LordFrame3);
	instance_destroy(oGUI_lordHealthFront3);
	instance_destroy(oGUI_lordHealthPrint3);
	oLordStats.lord3active = false;
	global.isLocked = false;
	instance_destroy();
}

if !global.fightMode thisLord_ACTpoints = thisLord_ACTpointsMAX;