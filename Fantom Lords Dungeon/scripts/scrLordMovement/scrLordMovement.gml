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

	WarFogTopLeft = collision_point(x-32,y-32,oMap_blocktile_WarFog,false,true);
	WarFogTop = collision_point(x+32,y-32,oMap_blocktile_WarFog,false,true);
	WarFogTopRight = collision_point(x+96,y-32,oMap_blocktile_WarFog,false,true);
	WarFogRight = collision_point(x+96,y+32,oMap_blocktile_WarFog,false,true);
	WarFogDownRight = collision_point(x+96,y+96,oMap_blocktile_WarFog,false,true);
	WarFogDown = collision_point(x+32,y+96,oMap_blocktile_WarFog,false,true);
	WarFogDownLeft = collision_point(x-32,y+96,oMap_blocktile_WarFog,false,true);
	WarFogLeft = collision_point(x-32,y+32,oMap_blocktile_WarFog,false,true);

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
					if WarFogTop != noone instance_destroy(WarFogTop);
					thisLord_ACTpoints --;
				}
				else
				{
					enemy = collision_point(x+32,y-32,oEnemy0_Father,false,true);
					if enemy != noone scrLordAttack();
				}
			}
			else
			{
				if		collision_point(x,y,oLord1,false,false) instance_create_layer(oGUI_LordFrame1.x+64,oGUI_LordFrame1.y+16,"VFX",oLord_Baloon2);
				else if collision_point(x,y,oLord2,false,false) instance_create_layer(oGUI_LordFrame2.x+64,oGUI_LordFrame2.y+16,"VFX",oLord_Baloon2);
				else if collision_point(x,y,oLord3,false,false) instance_create_layer(oGUI_LordFrame3.x+64,oGUI_LordFrame3.y+16,"VFX",oLord_Baloon2);
				else if collision_point(x,y,oLord4,false,false) instance_create_layer(oGUI_LordFrame4.x+64,oGUI_LordFrame4.y+16,"VFX",oLord_Baloon2);
			}
		}
		else if mouse_check_button_pressed(mb_right) && thisLocked
		{
			if instTop != noone && instTop.empty && thisLord_ACTpoints > 0 && mouse_x > instTop.x && mouse_x < instTop.x+64 && mouse_y > instTop.y && mouse_y < instTop.y+64
			{
			audio_play_sound(snWalk,0,false);
			y -= global.tileRate;
			if WarFogTop != noone instance_destroy(WarFogTop);
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
					if WarFogLeft != noone instance_destroy(WarFogLeft);
					thisLord_ACTpoints --;
				}
				else
				{
					enemy = collision_point(x-32,y+32,oEnemy0_Father,false,true);
					if enemy != noone scrLordAttack();
				}
			}
			else
			{
				if		collision_point(x,y,oLord1,false,false) instance_create_layer(oGUI_LordFrame1.x+64,oGUI_LordFrame1.y+16,"VFX",oLord_Baloon2);
				else if collision_point(x,y,oLord2,false,false) instance_create_layer(oGUI_LordFrame2.x+64,oGUI_LordFrame2.y+16,"VFX",oLord_Baloon2);
				else if collision_point(x,y,oLord3,false,false) instance_create_layer(oGUI_LordFrame3.x+64,oGUI_LordFrame3.y+16,"VFX",oLord_Baloon2);
				else if collision_point(x,y,oLord4,false,false) instance_create_layer(oGUI_LordFrame4.x+64,oGUI_LordFrame4.y+16,"VFX",oLord_Baloon2);
			}
		}
		else if mouse_check_button_pressed(mb_right) && thisLocked
		{
			if instLeft != noone && instLeft.empty && thisLord_ACTpoints > 0 && mouse_x > instLeft.x && mouse_x < instLeft.x+64 && mouse_y > instLeft.y && mouse_y < instLeft.y+64
			{
			audio_play_sound(snWalk,0,false);
			x -= global.tileRate;
			if WarFogLeft != noone instance_destroy(WarFogLeft);
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
					if WarFogRight != noone instance_destroy(WarFogRight);
					thisLord_ACTpoints --;
				}
				else
				{
					enemy = collision_point(x+96,y+32,oEnemy0_Father,false,true);
					if enemy != noone scrLordAttack();
				}
			}
			else
			{
				if		collision_point(x,y,oLord1,false,false) instance_create_layer(oGUI_LordFrame1.x+64,oGUI_LordFrame1.y+16,"VFX",oLord_Baloon2);
				else if collision_point(x,y,oLord2,false,false) instance_create_layer(oGUI_LordFrame2.x+64,oGUI_LordFrame2.y+16,"VFX",oLord_Baloon2);
				else if collision_point(x,y,oLord3,false,false) instance_create_layer(oGUI_LordFrame3.x+64,oGUI_LordFrame3.y+16,"VFX",oLord_Baloon2);
				else if collision_point(x,y,oLord4,false,false) instance_create_layer(oGUI_LordFrame4.x+64,oGUI_LordFrame4.y+16,"VFX",oLord_Baloon2);
			}
		}
		else if mouse_check_button_pressed(mb_right) && thisLocked
		{
			if instRight != noone && instRight.empty && thisLord_ACTpoints > 0 && mouse_x > instRight.x && mouse_x < instRight.x+64 && mouse_y > instRight.y && mouse_y < instRight.y+64
			{
			audio_play_sound(snWalk,0,false);
			x += global.tileRate;
			if WarFogRight != noone instance_destroy(WarFogRight);
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
					if WarFogDown != noone instance_destroy(WarFogDown);
					thisLord_ACTpoints --;
				}
				else
				{
					enemy = collision_point(x+32,y+96,oEnemy0_Father,false,true);
					if enemy != noone scrLordAttack();
				}
			}
			else
			{
				if		collision_point(x,y,oLord1,false,false) instance_create_layer(oGUI_LordFrame1.x+64,oGUI_LordFrame1.y+16,"VFX",oLord_Baloon2);
				else if collision_point(x,y,oLord2,false,false) instance_create_layer(oGUI_LordFrame2.x+64,oGUI_LordFrame2.y+16,"VFX",oLord_Baloon2);
				else if collision_point(x,y,oLord3,false,false) instance_create_layer(oGUI_LordFrame3.x+64,oGUI_LordFrame3.y+16,"VFX",oLord_Baloon2);
				else if collision_point(x,y,oLord4,false,false) instance_create_layer(oGUI_LordFrame4.x+64,oGUI_LordFrame4.y+16,"VFX",oLord_Baloon2);
			}
	
		}
		else if mouse_check_button_pressed(mb_right) && thisLocked
		{
			if instDown != noone && instDown.empty && thisLord_ACTpoints > 0 && mouse_x > instDown.x && mouse_x < instDown.x+64 && mouse_y > instDown.y && mouse_y < instDown.y+64
			{
			audio_play_sound(snWalk,0,false);
			y += global.tileRate;
			if WarFogDown != noone instance_destroy(WarFogDown);
			thisLord_ACTpoints --;
			}	
		}
	}
}