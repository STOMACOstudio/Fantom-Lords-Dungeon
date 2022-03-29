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
	lordTop1 = collision_point(x+32,y-32,oLord0Parent,false,true);
	lordTop2 = collision_point(x+96,y-32,oLord0Parent,false,true);
	lordRight1 = collision_point(x+160,y+32,oLord0Parent,false,true);
	lordRight2 = collision_point(x+160,y+96,oLord0Parent,false,true);
	lordDown1 = collision_point(x+32,y+160,oLord0Parent,false,true);
	lordDown2 = collision_point(x+96,y+160,oLord0Parent,false,true);
	lordLeft1 = collision_point(x-32,y+32,oLord0Parent,false,true);
	lordLeft2 = collision_point(x-32,y+96,oLord0Parent,false,true);
}

if isSelected && revealed
{
	global.currentSelectedName = thisName;
	global.currentSelectedSprite = sprite_index;
	global.currentSelectedLIF = thisLIF;
	global.currentSelectedLIFmax = thisLIFmax;
	global.currentSelectedATK = thisMAG;
	global.currentSelectedDEF = thisDEF;
	global.currentSelectedMAG = thisMAG;
}

if isFighting && !turnComplete && actions > 0
{
	
	if lordTop1 != noone
	{
		var dmgENEMY = (thisMAG + irandom_range(-3,3)) - lordTop1.thisLord_MAG;
		if dmgENEMY <= 0 dmgENEMY = 1;
		global.dmgENEMY = string(dmgENEMY);
	
		audio_play_sound(snAttack,0,false);
		if dmgENEMY > 0 instance_create_layer(lordTop1.x+32,lordTop1.y+32,"VFX",oVFX_attack);
		instance_create_layer(lordTop1.x+irandom_range(8,56),lordTop1.y+irandom_range(8,56),"VFX",oGUI_printDMGenemy);
		alarm[0] = alarmCounter;
		isFighting = false;
	
		lordTop1.thisLord_LIF -= dmgENEMY;
	}
	else if lordTop2 != noone
	{
		var dmgENEMY = (thisMAG + irandom_range(-3,3)) - lordTop2.thisLord_MAG;
		if dmgENEMY <= 0 dmgENEMY = 1;
		global.dmgENEMY = string(dmgENEMY);
	
		audio_play_sound(snAttack,0,false);
		if dmgENEMY > 0 instance_create_layer(lordTop2.x+32,lordTop2.y+32,"VFX",oVFX_attack);
		instance_create_layer(lordTop2.x+irandom_range(8,56),lordTop2.y+irandom_range(8,56),"VFX",oGUI_printDMGenemy);
		alarm[0] = alarmCounter;
		isFighting = false;
	
		lordTop2.thisLord_LIF -= dmgENEMY;
	}
	else if lordRight1 != noone
	{
		var dmgENEMY = (thisMAG + irandom_range(-3,3)) - lordRight1.thisLord_MAG;
		if dmgENEMY <= 0 dmgENEMY = 1;
		global.dmgENEMY = string(dmgENEMY);

		audio_play_sound(snAttack,0,false);
		if dmgENEMY > 0 instance_create_layer(lordRight1.x+32,lordRight1.y+32,"VFX",oVFX_attack);
		instance_create_layer(lordRight1.x+irandom_range(8,56),lordRight1.y+irandom_range(8,56),"VFX",oGUI_printDMGenemy);
		alarm[0] = alarmCounter;
		isFighting = false;
		
		lordRight1.thisLord_LIF -= dmgENEMY;
	}
	else if lordRight2 != noone
	{
		var dmgENEMY = (thisMAG + irandom_range(-3,3)) - lordRight2.thisLord_MAG;
		if dmgENEMY <= 0 dmgENEMY = 1;
		global.dmgENEMY = string(dmgENEMY);

		audio_play_sound(snAttack,0,false);
		if dmgENEMY > 0 instance_create_layer(lordRight2.x+32,lordRight2.y+32,"VFX",oVFX_attack);
		instance_create_layer(lordRight2.x+irandom_range(8,56),lordRight2.y+irandom_range(8,56),"VFX",oGUI_printDMGenemy);
		alarm[0] = alarmCounter;
		isFighting = false;
		
		lordRight2.thisLord_LIF -= dmgENEMY;
	}
	else if lordDown1 != noone
	{
		var dmgENEMY = (thisMAG + irandom_range(-3,3)) - lordDown1.thisLord_MAG;
		if dmgENEMY <= 0 dmgENEMY = 1;
		global.dmgENEMY = string(dmgENEMY);

		audio_play_sound(snAttack,0,false);
		if dmgENEMY > 0 instance_create_layer(lordDown1.x+32,lordDown1.y+32,"VFX",oVFX_attack);
		instance_create_layer(lordDown1.x+irandom_range(8,56),lordDown1.y+irandom_range(8,56),"VFX",oGUI_printDMGenemy);
		alarm[0] = alarmCounter;
		isFighting = false;
		
		lordDown1.thisLord_LIF -= dmgENEMY;
	}
	else if lordDown2 != noone
	{
		var dmgENEMY = (thisMAG + irandom_range(-3,3)) - lordDown2.thisLord_MAG;
		if dmgENEMY <= 0 dmgENEMY = 1;
		global.dmgENEMY = string(dmgENEMY);

		audio_play_sound(snAttack,0,false);
		if dmgENEMY > 0 instance_create_layer(lordDown2.x+32,lordDown2.y+32,"VFX",oVFX_attack);
		instance_create_layer(lordDown2.x+irandom_range(8,56),lordDown2.y+irandom_range(8,56),"VFX",oGUI_printDMGenemy);
		alarm[0] = alarmCounter;
		isFighting = false;
		
		lordDown2.thisLord_LIF -= dmgENEMY;
	}
	else if lordLeft1 != noone
	{
		var dmgENEMY = (thisMAG + irandom_range(-3,3)) - lordLeft1.thisLord_MAG;
		if dmgENEMY <= 0 dmgENEMY = 1;
		global.dmgENEMY = string(dmgENEMY);

		audio_play_sound(snAttack,0,false);
		if dmgENEMY > 0 instance_create_layer(lordLeft1.x+32,lordLeft1.y+32,"VFX",oVFX_attack);
		instance_create_layer(lordLeft1.x+irandom_range(8,56),lordLeft1.y+irandom_range(8,56),"VFX",oGUI_printDMGenemy);
		alarm[0] = alarmCounter;
		isFighting = false;
		
		lordLeft1.thisLord_LIF -= dmgENEMY;
	}
	else if lordLeft2 != noone
	{
		var dmgENEMY = (thisMAG + irandom_range(-3,3)) - lordLeft2.thisLord_MAG;
		if dmgENEMY <= 0 dmgENEMY = 1;
		global.dmgENEMY = string(dmgENEMY);

		audio_play_sound(snAttack,0,false);
		if dmgENEMY > 0 instance_create_layer(lordLeft2.x+32,lordLeft2.y+32,"VFX",oVFX_attack);
		instance_create_layer(lordLeft2.x+irandom_range(8,56),lordLeft2.y+irandom_range(8,56),"VFX",oGUI_printDMGenemy);
		alarm[0] = alarmCounter;
		isFighting = false;
		
		lordLeft2.thisLord_LIF -= dmgENEMY;
	}
	else if lordTop1 = noone && lordRight1 = noone && lordDown1 = noone && lordLeft1 = noone && lordTop2 = noone && lordRight2 = noone && lordDown2 = noone && lordLeft2 = noone
	{
		var lordTopLeft = collision_point(x-32,y-32,oLord0Parent,false,true);
		var lordTopRight = collision_point(x+160,y-32,oLord0Parent,false,true);
		var lordBottomRight = collision_point(x+160,y+160,oLord0Parent,false,true);
		var lordBottomLeft = collision_point(x-32,y+160,oLord0Parent,false,true);
		
		if lordTopLeft != noone
		{
			var tile1 = collision_point(x+32,y-32,oMap_0parent,false,true);
			var tile2 = collision_point(x+96,y-32,oMap_0parent,false,true);
			if tile1 != noone && tile2 != noone
			{
				if tile1.empty && tile2.empty
				{
					audio_play_sound(snWalk,0,false);
					y -= global.tileRate;
					if tile1.revealed || tile2.revealed instance_create_layer(x+64,y+64,"VFX",oVFX_arrowUp);
					alarm[0] = alarmCounter;
					isFighting = false;
				}
				else if !tile1.empty || !tile2.empty
				{
					var tile3 = collision_point(x-32,y+32,oMap_0parent,false,true);
					var tile4 = collision_point(x-32,y+96,oMap_0parent,false,true);
					if tile3.empty && tile4.empty
					{
						audio_play_sound(snWalk,0,false);
						x -= global.tileRate;
						if tile1.revealed || tile2.revealed instance_create_layer(x+64,y+64,"VFX",oVFX_arrowLeft);
						alarm[0] = alarmCounter;
						isFighting = false;
					}
					else
					{
						alarm[0] = alarmCounter;
						isFighting = false;
					}
				}
			}
		}
		else if lordTopRight != noone
		{
			var tile1 = collision_point(x+32,y-32,oMap_0parent,false,true);
			var tile2 = collision_point(x+96,y-32,oMap_0parent,false,true);
			if tile1 != noone && tile2 != noone
			{
				if tile1.empty && tile2.empty
				{
					audio_play_sound(snWalk,0,false);
					y -= global.tileRate;
					instance_create_layer(x+64,y+64,"VFX",oVFX_arrowUp);
					alarm[0] = alarmCounter;
					isFighting = false;
				}
				else if !tile1.empty || !tile2.empty
				{
					var tile3 = collision_point(x+160,y+32,oMap_0parent,false,true);
					var tile4 = collision_point(x+160,y+96,oMap_0parent,false,true);
					if tile3.empty && tile4.empty
					{
						audio_play_sound(snWalk,0,false);
						x += global.tileRate;
						if tile1.revealed || tile2.revealed instance_create_layer(x+64,y+64,"VFX",oVFX_arrowLeft);
						alarm[0] = alarmCounter;
						isFighting = false;
					}
					else
					{
						alarm[0] = alarmCounter;
						isFighting = false;
					}
				}
			}
		}
		else if lordBottomRight != noone
		{
			var tile1 = collision_point(x+160,y+32,oMap_0parent,false,true);
			var tile2 = collision_point(x+160,y+96,oMap_0parent,false,true);
			if tile1 != noone && tile2 != noone
			{
				if tile1.empty && tile2.empty
				{
					audio_play_sound(snWalk,0,false);
					x += global.tileRate;
					if tile1.revealed || tile2.revealed instance_create_layer(x+64,y+64,"VFX",oVFX_arrowUp);
					alarm[0] = alarmCounter;
					isFighting = false;
				}
				else if !tile1.empty || !tile2.empty
				{
					var tile3 = collision_point(x+32,y+160,oMap_0parent,false,true);
					var tile4 = collision_point(x+96,y+160,oMap_0parent,false,true);
					if tile3.empty && tile4.empty
					{
						audio_play_sound(snWalk,0,false);
						y += global.tileRate;
						if tile1.revealed || tile2.revealed instance_create_layer(x+64,y+64,"VFX",oVFX_arrowLeft);
						alarm[0] = alarmCounter;
						isFighting = false;
					}
					else
					{
						alarm[0] = alarmCounter;
						isFighting = false;
					}
				}
			}
		}
		else if lordBottomLeft != noone
		{
			var tile1 = collision_point(x+32,y+160,oMap_0parent,false,true);
			var tile2 = collision_point(x+96,y+160,oMap_0parent,false,true);
			if tile1 != noone && tile2 != noone
			{
				if tile1.empty && tile2.empty
				{
					audio_play_sound(snWalk,0,false);
					y += global.tileRate;
					if tile1.revealed || tile2.revealed instance_create_layer(x+64,y+64,"VFX",oVFX_arrowUp);
					alarm[0] = alarmCounter;
					isFighting = false;
				}
				else if !tile1.empty || !tile2.empty
				{
					var tile3 = collision_point(x-32,y+32,oMap_0parent,false,true);
					var tile4 = collision_point(x-32,y+96,oMap_0parent,false,true);
					if tile3.empty && tile4.empty
					{
						audio_play_sound(snWalk,0,false);
						x -= global.tileRate;
						if tile1.revealed || tile2.revealed instance_create_layer(x+64,y+64,"VFX",oVFX_arrowLeft);
						alarm[0] = alarmCounter;
						isFighting = false;
					}
					else
					{
						alarm[0] = alarmCounter;
						isFighting = false;
					}
				}
			}
		}
		else if lordTopLeft = noone && lordTopRight = noone && lordBottomRight = noone && lordBottomLeft = noone
		{
			var tile1 = collision_point(x+32,y-32,oMap_0parent,false,true);
			var tile2 = collision_point(x+96,y-32,oMap_0parent,false,true);
			var tile3 = collision_point(x+160,y+32,oMap_0parent,false,true);
			var tile4 = collision_point(x+160,y+96,oMap_0parent,false,true);
			var tile5 = collision_point(x+32,y-160,oMap_0parent,false,true);
			var tile6 = collision_point(x+96,y-160,oMap_0parent,false,true);
			var tile7 = collision_point(x-32,y+32,oMap_0parent,false,true);
			var tile8 = collision_point(x-32,y+96,oMap_0parent,false,true);
			
			if tile1 != noone && tile2 != noone && tile1.empty && tile2.empty
			{
				audio_play_sound(snWalk,0,false);
				y -= global.tileRate;
				if tile1.revealed || tile2.revealed instance_create_layer(x+64,y+64,"VFX",oVFX_arrowUp);
				alarm[0] = alarmCounter;
				isFighting = false;
			}
			else if tile3 != noone && tile4 != noone && tile3.empty && tile4.empty
			{
				audio_play_sound(snWalk,0,false);
				x += global.tileRate;
				if tile1.revealed || tile2.revealed instance_create_layer(x+64,y+64,"VFX",oVFX_arrowRight);
				alarm[0] = alarmCounter;
				isFighting = false;
			}
			else if tile5 != noone && tile6 != noone && tile5.empty && tile6.empty
			{
				audio_play_sound(snWalk,0,false);
				y += global.tileRate;
				if tile1.revealed && tile2.revealed instance_create_layer(x+64,y+64,"VFX",oVFX_arrowDown);
				alarm[0] = alarmCounter;
				isFighting = false;
			}
			else if tile7 != noone && tile8 != noone && tile7.empty && tile8.empty
			{
				audio_play_sound(snWalk,0,false);
				x -= global.tileRate;
				if tile1.revealed && tile2.revealed instance_create_layer(x+64,y+64,"VFX",oVFX_arrowDown);
				alarm[0] = alarmCounter;
				isFighting = false;
			}
			else if tile1 = noone && tile2 = noone && tile3 = noone && tile4 = noone && tile5 = noone && tile6 = noone && tile7= noone && tile8 = noone
			{
				alarm[0] = alarmCounter;
				isFighting = false;
			}
		}
	}
}