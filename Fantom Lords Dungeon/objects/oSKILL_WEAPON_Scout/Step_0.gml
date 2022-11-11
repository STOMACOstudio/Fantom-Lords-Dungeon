/// @description Insert description here
// You can write your code in this editor

if hspeed > 0 image_xscale = -1;

if point_distance(x,xDir,y,yDir) <= 20 speed = 0;

if x > 1400 || x < -100
{
	global.hasControl = true;
	instance_destroy();
}
if y > 800 || y < -100
{
	global.hasControl = true;
	instance_destroy();
}

#region vars
var instTopLeft = collision_point(x-32,y-32,oMap_0parent,false,true);
var instTop = collision_point(x+32,y-32,oMap_0parent,false,true);
var instTopRight = collision_point(x+96,y-32,oMap_0parent,false,true);
var instRight = collision_point(x+96,y+32,oMap_0parent,false,true);
var instDownRight = collision_point(x+96,y+96,oMap_0parent,false,true);
var instDown = collision_point(x+32,y+96,oMap_0parent,false,true);
var instDownLeft = collision_point(x-32,y+96,oMap_0parent,false,true);
var instLeft = collision_point(x-32,y+32,oMap_0parent,false,true);

var WarFogTopLeft = collision_point(x-32,y-32,oMap_blocktile_WarFog,false,true);
var WarFogTop = collision_point(x+32,y-32,oMap_blocktile_WarFog,false,true);
var WarFogTopRight = collision_point(x+96,y-32,oMap_blocktile_WarFog,false,true);
var WarFogRight = collision_point(x+96,y+32,oMap_blocktile_WarFog,false,true);
var WarFogDownRight = collision_point(x+96,y+96,oMap_blocktile_WarFog,false,true);
var WarFogDown = collision_point(x+32,y+96,oMap_blocktile_WarFog,false,true);
var WarFogDownLeft = collision_point(x-32,y+96,oMap_blocktile_WarFog,false,true);
var WarFogLeft = collision_point(x-32,y+32,oMap_blocktile_WarFog,false,true);
#endregion
#region reveal
if instTopLeft != noone
	{
		if !instTopLeft.revealed
		{
			instTopLeft.image_alpha = 0.8;
			instTopLeft.revealed = true;
			if WarFogTopLeft != noone instance_destroy(WarFogTopLeft);
			global.tileNumber --;
		}
	}
	if instTop != noone
	{
		if !instTop.revealed
		{
			instTop.image_alpha = 0.8;
			instTop.revealed = true;
			if WarFogTop != noone instance_destroy(WarFogTop);
			global.tileNumber --;
		}
	}
	if instTopRight != noone
	{
		if !instTopRight.revealed
		{
			instTopRight.image_alpha = 0.8;
			instTopRight.revealed = true;
			if WarFogTopRight != noone instance_destroy(WarFogTopRight);
			global.tileNumber --;
		}
	}
	if instRight != noone
	{
		if !instRight.revealed
		{
			instRight.image_alpha = 0.8;
			instRight.revealed = true;
			if WarFogRight != noone instance_destroy(WarFogRight);
			global.tileNumber --;
		}
	}
	if instDownRight != noone
	{
		if !instDownRight.revealed
		{
			instDownRight.image_alpha = 0.8;
			instDownRight.revealed = true;
			if WarFogDownRight != noone instance_destroy(WarFogDownRight);
			global.tileNumber --;
		}
	}
	if instDown != noone
	{
		if !instDown.revealed
		{
			instDown.image_alpha = 0.8;
			instDown.revealed = true;
			if WarFogDown != noone instance_destroy(WarFogDown);
			global.tileNumber --;
		}
	}
	if instDownLeft != noone
	{
		if !instDownLeft.revealed
		{
			instDownLeft.image_alpha = 0.8;
			instDownLeft.revealed = true;
			if WarFogDownLeft != noone instance_destroy(WarFogDownLeft);
			global.tileNumber --;
		}
	}
	if instLeft != noone
	{
		if !instLeft.revealed
		{
			instLeft.image_alpha = 0.8;
			instLeft.revealed = true;
			if WarFogLeft != noone instance_destroy(WarFogLeft);
			global.tileNumber --;
		}
	}
#endregion