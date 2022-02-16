/// @description Insert description here
// You can write your code in this editor

if isSelected && revealed
{
	global.currentSelectedName = thisName;
	global.currentSelectedSprite = sprite_index;
	global.currentSelectedLIF = thisLIF;
	global.currentSelectedLIFmax = thisLIFmax;
	global.currentSelectedATK = thisATK;
	global.currentSelectedDEF = thisDEF;
	global.currentSelectedMAG = thisMAG;
}

if isFighting && !turnComplete
{
	oManagerCombat.fightStart ++;
	
	var checkTile = irandom_range(0,3);
	
	if checkTile = 0
	{
		var tile = collision_point(x+32,y-32,oMap_0parent,false,true);
		if tile != noone
		{
			if tile.empty
			{
				audio_play_sound(snWalk,0,false);
				y -= global.tileRate;
				if tile.revealed instance_create_layer(x+32,y+32,"VFX",oVFX_arrowUp);
				alarm[0] = global.waitTimer;
				isFighting = false;
			}
			else checkTile = irandom_range(0,3);
		}
	}
	else if checkTile = 1
	{
		var tile = collision_point(x+96,y+32,oMap_0parent,false,true);
		if tile != noone
		{
			if tile.empty
			{
				audio_play_sound(snWalk,0,false);
				x += global.tileRate;
				if tile.revealed instance_create_layer(x+32,y+32,"VFX",oVFX_arrowRight);
				alarm[0] = global.waitTimer;
				isFighting = false;
			}
			else checkTile = irandom_range(0,3);
		}
	}
	else if checkTile = 2
	{
		var tile = collision_point(x+32,y+96,oMap_0parent,false,true);
		if tile != noone
		{
			if tile.empty
			{
				audio_play_sound(snWalk,0,false);
				y += global.tileRate;
				if tile.revealed instance_create_layer(x+32,y+32,"VFX",oVFX_arrowDown);
				alarm[0] = global.waitTimer;
				isFighting = false;
			}
			else checkTile = irandom_range(0,3);
		}
	}
	else if checkTile = 3
	{
		var tile = collision_point(x-32,y+32,oMap_0parent,false,true);
		if tile != noone
		{
			if tile.empty
			{
				audio_play_sound(snWalk,0,false);
				x -= global.tileRate;
				if tile.revealed instance_create_layer(x+32,y+32,"VFX",oVFX_arrowLeft);
				alarm[0] = global.waitTimer;
				isFighting = false;
			}
			else checkTile = irandom_range(0,3);
		}
	}
}