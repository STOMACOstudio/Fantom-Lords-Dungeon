// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrLordMovement(){
	
	lastX = x;
	lastY = y;
	
	instTopLeft = collision_point(x-32,y-32,oMap_0parent,false,true);
	instTop = collision_point(x+32,y-32,oMap_0parent,false,true);
	instTopRight = collision_point(x+96,y-32,oMap_0parent,false,true);
	instRight = collision_point(x+96,y+32,oMap_0parent,false,true);
	instDownRight = collision_point(x+96,y+96,oMap_0parent,false,true);
	instDown = collision_point(x+32,y+96,oMap_0parent,false,true);
	instDownLeft = collision_point(x-32,y+96,oMap_0parent,false,true);
	instLeft = collision_point(x-32,y+32,oMap_0parent,false,true);

	if instTopLeft != noone
	{
		if !instTopLeft.revealed
		{
			instTopLeft.image_alpha = 0.8;
			instTopLeft.revealed = true;
			global.tileNumber --;
		}
	}
	if instTop != noone
	{
		if !instTop.revealed
		{
			instTop.image_alpha = 0.8;
			instTop.revealed = true;
			global.tileNumber --;
		}
	}
	if instTopRight != noone
	{
		if !instTopRight.revealed
		{
			instTopRight.image_alpha = 0.8;
			instTopRight.revealed = true;
			global.tileNumber --;
		}
	}
	if instRight != noone
	{
		if !instRight.revealed
		{
			instRight.image_alpha = 0.8;
			instRight.revealed = true;
			global.tileNumber --;
		}
	}
	if instDownRight != noone
	{
		if !instDownRight.revealed
		{
			instDownRight.image_alpha = 0.8;
			instDownRight.revealed = true;
			global.tileNumber --;
		}
	}
	if instDown != noone
	{
		if !instDown.revealed
		{
			instDown.image_alpha = 0.8;
			instDown.revealed = true;
			global.tileNumber --;
		}
	}
	if instDownLeft != noone
	{
		if !instDownLeft.revealed
		{
			instDownLeft.image_alpha = 0.8;
			instDownLeft.revealed = true;
			global.tileNumber --;
		}
	}
	if instLeft != noone
	{
		if !instLeft.revealed
		{
			instLeft.image_alpha = 0.8;
			instLeft.revealed = true;
			global.tileNumber --;
		}
	}
	
	if !instance_exists(oVFX_spellCast0father) //move the lord
	{
		if keyboard_check_pressed(ord("W")) && thisLocked
		{
			if instTop != noone && thisLord_ACTpoints > 0
			{
				if instTop.empty
				{
					audio_play_sound(snWalk,0,false);
					y -= global.tileRate;
					thisLord_ACTpoints --;
				}
				else
				{
					enemy = collision_point(x+32,y-32,oEnemy0_Father,false,true);
					if enemy != noone scrLordAttack();
				}
			}
		}
		else if mouse_check_button_pressed(mb_right) && thisLocked
		{
			if instTop != noone && instTop.empty && thisLord_ACTpoints > 0 && mouse_x > instTop.x && mouse_x < instTop.x+64 && mouse_y > instTop.y && mouse_y < instTop.y+64
			{
			audio_play_sound(snWalk,0,false);
			y -= global.tileRate;
			thisLord_ACTpoints --;
			}	
		}
		if keyboard_check_pressed(ord("A")) && thisLocked
		{
			if  instLeft != noone && thisLord_ACTpoints > 0
			{
				if instLeft.empty
				{
					audio_play_sound(snWalk,0,false);
					x -= global.tileRate;
					thisLord_ACTpoints --;
				}
				else
				{
					enemy = collision_point(x-32,y+32,oEnemy0_Father,false,true);
					if enemy != noone scrLordAttack();
				}
			}
		}
		else if mouse_check_button_pressed(mb_right) && thisLocked
		{
			if instLeft != noone && instLeft.empty && thisLord_ACTpoints > 0 && mouse_x > instLeft.x && mouse_x < instLeft.x+64 && mouse_y > instLeft.y && mouse_y < instLeft.y+64
			{
			audio_play_sound(snWalk,0,false);
			x -= global.tileRate;
			thisLord_ACTpoints --;
			}	
		}
		if keyboard_check_pressed(ord("D")) && thisLocked
		{
			if instRight != noone && thisLord_ACTpoints > 0
			{
				if instRight.empty
				{
					audio_play_sound(snWalk,0,false);
					x += global.tileRate;
					thisLord_ACTpoints --;
				}
				else
				{
					enemy = collision_point(x+96,y+32,oEnemy0_Father,false,true);
					if enemy != noone scrLordAttack();
				}
			}
		}
		else if mouse_check_button_pressed(mb_right) && thisLocked
		{
			if instRight != noone && instRight.empty && thisLord_ACTpoints > 0 && mouse_x > instRight.x && mouse_x < instRight.x+64 && mouse_y > instRight.y && mouse_y < instRight.y+64
			{
			audio_play_sound(snWalk,0,false);
			x += global.tileRate;
			thisLord_ACTpoints --;
			}	
		}
		if keyboard_check_pressed(ord("S")) && thisLocked
		{
			if instDown != noone && thisLord_ACTpoints > 0
			{
				if instDown.empty
				{
					audio_play_sound(snWalk,0,false);
					y += global.tileRate;
					thisLord_ACTpoints --;
				}
				else
				{
					enemy = collision_point(x+32,y+96,oEnemy0_Father,false,true);
					if enemy != noone scrLordAttack();
				}
			}
		}
		else if mouse_check_button_pressed(mb_right) && thisLocked
		{
			if instDown != noone && instDown.empty && thisLord_ACTpoints > 0 && mouse_x > instDown.x && mouse_x < instDown.x+64 && mouse_y > instDown.y && mouse_y < instDown.y+64
			{
			audio_play_sound(snWalk,0,false);
			y += global.tileRate;
			thisLord_ACTpoints --;
			}	
		}
	}
	
}