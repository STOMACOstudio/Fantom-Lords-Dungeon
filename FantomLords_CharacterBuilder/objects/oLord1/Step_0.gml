/// @description Insert description here
// You can write your code in this editor

#region checkc map tile

var instTopLeft;
instTopLeft = collision_point(x-32,y-32,oMap_blocktile,false,true)
if instTopLeft != noone
{
	if !instTopLeft.revealed
	{
		instTopLeft.image_alpha = 0.4;
		instTopLeft.revealed = true;
	}
}

var instTop;
instTop = collision_point(x+32,y-32,oMap_blocktile,false,true)
if instTop != noone
{
	if !instTop.revealed
	{
		instTop.image_alpha = 0.4;
		instTop.revealed = true;
	}
}

var instTopRight;
instTopRight = collision_point(x+96,y-32,oMap_blocktile,false,true)
if instTopRight != noone
{
	if !instTopRight.revealed
	{
		instTopRight.image_alpha = 0.4;
		instTopRight.revealed = true;
	}
}

var instRight;
instRight = collision_point(x+96,y+32,oMap_blocktile,false,true)
if instRight != noone
{
	if !instRight.revealed
	{
		instRight.image_alpha = 0.4;
		instRight.revealed = true;
	}
}

var instDownRight;
instDownRight = collision_point(x+96,y+96,oMap_blocktile,false,true)
if instDownRight != noone
{
	if !instDownRight.revealed
	{
		instDownRight.image_alpha = 0.4;
		instDownRight.revealed = true;
	}
}

var instDown;
instDown = collision_point(x+32,y+96,oMap_blocktile,false,true)
if instDown != noone
{
	if !instDown.revealed
	{
		instDown.image_alpha = 0.4;
		instDown.revealed = true;
	}
}

var instDownLeft;
instDownLeft = collision_point(x-32,y+96,oMap_blocktile,false,true)
if instDownLeft != noone
{
	if !instDownLeft.revealed
	{
		instDownLeft.image_alpha = 0.4;
		instDownLeft.revealed = true;
	}
}

var instLeft;
instLeft = collision_point(x-32,y+32,oMap_blocktile,false,true)
if instLeft != noone
{
	if !instLeft.revealed
	{
		instLeft.image_alpha = 0.4;
		instLeft.revealed = true;
	}
}
#endregion

if keyboard_check_pressed(vk_numpad8) && thisLocked && instTop != noone && instTop.empty y -= global.tileRate;
if keyboard_check_pressed(vk_numpad6) && thisLocked && instRight != noone && instRight.empty x += global.tileRate;
if keyboard_check_pressed(vk_numpad2) && thisLocked && instDown != noone && instDown.empty y += global.tileRate;
if keyboard_check_pressed(vk_numpad4) && thisLocked && instLeft != noone && instLeft.empty x -= global.tileRate;