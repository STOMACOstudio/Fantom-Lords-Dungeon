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
#region lord move
if keyboard_check_pressed(vk_numpad8) && thisLocked && thisLord_ACTpoints > 0
{
	if instTop != noone && instTop.empty
	{
	audio_play_sound(snWalk,0,false);
	y -= global.tileRate;
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
}
if keyboard_check_pressed(vk_numpad2) && thisLocked
{
	if instDown != noone && instDown.empty && thisLord_ACTpoints > 0
	{
		audio_play_sound(snWalk,0,false);
		y += global.tileRate;
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
}
#endregion

if thisLord_LIF <= 0
{
	instance_create_layer(oGUI_LordFrame4.x,oGUI_LordFrame4.y,"BG",oGUI_deathLord);
	instance_destroy(oGUI_ACTpoints4);
	instance_destroy(oGUI_LordFrame4);
	instance_destroy(oGUI_lordHealthFront4);
	instance_destroy(oGUI_lordHealthPrint4);
	oLordStats.lord4active = false;
	global.isLocked = false;
	instance_destroy();
}