/// @description Insert description here
// You can write your code in this editor

#region bloodshed
var currentLIF = 0;

if thisLIF = thisLIFmax currentLIF = 0;
else if thisLIF >= thisLIFmax/2 && thisLIF < thisLIFmax currentLIF = 1;
else if thisLIF > thisLIFmax/4 && thisLIF < thisLIFmax/2 currentLIF = 2;
else if thisLIF > thisLIFmax/6 && thisLIF < thisLIFmax/4 currentLIF = 3;
else if thisLIF > thisLIFmax/8 && thisLIF < thisLIFmax/6 currentLIF = 4;
else if thisLIF <= thisLIFmax/8 currentLIF = 5;

image_index = currentLIF;
#endregion

if revealed
{
	lordTop = collision_point(x+32,y-32,oLord0Parent,false,true);
	lordRight = collision_point(x+96,y+32,oLord0Parent,false,true);
	lordDown = collision_point(x+32,y+96,oLord0Parent,false,true);
	lordLeft = collision_point(x-32,y+32,oLord0Parent,false,true);
}

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
	
	if lordTop != noone
	{
		var dmgENEMY = (thisATK + irandom_range(-3,3)) - lordTop.thisLord_DEF;
		if dmgENEMY < 0 dmgENEMY = 0;
		global.dmgENEMY = string(dmgENEMY);
	
		audio_play_sound(snAttack,0,false);
		if dmgENEMY > 0 instance_create_layer(lordTop.x+32,lordTop.y+32,"VFX",oVFX_attack);
		instance_create_layer(lordTop.x+irandom_range(8,56),lordTop.y+irandom_range(8,56),"VFX",oGUI_printDMGenemy);
		alarm[0] = alarmCounter;
		isFighting = false;
	
		lordTop.thisLord_LIF -= dmgENEMY;
	}
	else if lordRight != noone
	{
		var dmgENEMY = (thisATK + irandom_range(-3,3)) - lordRight.thisLord_DEF;
		if dmgENEMY < 0 dmgENEMY = 0;
		global.dmgENEMY = string(dmgENEMY);

		audio_play_sound(snAttack,0,false);
		if dmgENEMY > 0 instance_create_layer(lordRight.x+32,lordRight.y+32,"VFX",oVFX_attack);
		instance_create_layer(lordRight.x+irandom_range(8,56),lordRight.y+irandom_range(8,56),"VFX",oGUI_printDMGenemy);
		alarm[0] = alarmCounter;
		isFighting = false;
		
		lordRight.thisLord_LIF -= dmgENEMY;
	}
	else if lordDown != noone
	{
		var dmgENEMY = (thisATK + irandom_range(-3,3)) - lordDown.thisLord_DEF;
		if dmgENEMY < 0 dmgENEMY = 0;
		global.dmgENEMY = string(dmgENEMY);

		audio_play_sound(snAttack,0,false);
		if dmgENEMY > 0 instance_create_layer(lordDown.x+32,lordDown.y+32,"VFX",oVFX_attack);
		instance_create_layer(lordDown.x+irandom_range(8,56),lordDown.y+irandom_range(8,56),"VFX",oGUI_printDMGenemy);
		alarm[0] = alarmCounter;
		isFighting = false;
		
		lordDown.thisLord_LIF -= dmgENEMY;
	}
	else if lordLeft != noone
	{
		var dmgENEMY = (thisATK + irandom_range(-3,3)) - lordLeft.thisLord_DEF;
		if dmgENEMY < 0 dmgENEMY = 0;
		global.dmgENEMY = string(dmgENEMY);

		audio_play_sound(snAttack,0,false);
		if dmgENEMY > 0 instance_create_layer(lordLeft.x+32,lordLeft.y+32,"VFX",oVFX_attack);
		instance_create_layer(lordLeft.x+irandom_range(8,56),lordLeft.y+irandom_range(8,56),"VFX",oGUI_printDMGenemy);
		alarm[0] = alarmCounter;
		isFighting = false;
		
		lordLeft.thisLord_LIF -= dmgENEMY;
	}
	else if lordTop = noone && lordRight = noone && lordDown = noone && lordLeft = noone
	{
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
					alarm[0] = alarmCounter;
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
						alarm[0] = alarmCounter;
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
						alarm[0] = alarmCounter;
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
						alarm[0] = alarmCounter;
						isFighting = false;
					}
					else checkTile = irandom_range(0,3);
				}
			}
	}
}