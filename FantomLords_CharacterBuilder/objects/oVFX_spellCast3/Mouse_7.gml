/// @description Insert description here
// You can write your code in this editor

tile = collision_point(mouse_x,mouse_y,oMap_0parent,false,true);
enemy = collision_point(x,y,oEnemy0_Father,false,true);

if oLord3.spellCast = 0 //FIREBALL
{
	if tile != noone && tile.stepped
	{
		oLord3.spellCast = noone;
		oLord3.thisLord_ACTpoints -= 2;
		global.dmgLORD = oLord3.thisLord_MAG + irandom_range(-3,6);
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		instance_create_layer(tile.x+32,tile.y+32,"VFX",oSKILL_WEAPON_FireBall);
		instance_destroy();
	}
}
else if oLord3.spellCast = 2 //Poison
{
		if enemy != noone
	{
		if enemy.x = oLord3.x && enemy.y = oLord3.y-64 enemy.target = true;
		else if enemy.x = oLord3.x+64 && enemy.y = oLord3.y enemy.target = true;
		else if enemy.x = oLord3.x && enemy.y = oLord3.y+64 enemy.target = true;
		else if enemy.x = oLord3.x-64 && enemy.y = oLord3.y enemy.target = true;
		else enemy.target = false;
		if enemy.target = true
		{
			oLord3.spellCast = noone;
			oLord3.thisLord_ACTpoints -= 2;
			instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_Poison);
			instance_destroy();
		}
	}
}
else if oLord3.spellCast = 3 //SOUL SYPHON
{
		if enemy != noone && enemy.target
		{
			var struct = {targetLord : oLord3};
			global.castLord = oLord3;
			oLord3.spellCast = noone;
			oLord3.thisLord_ACTpoints -= 2;
			global.dmgLORD = oLord3.thisLord_MAG + irandom_range(-3,1)
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_SoulSyphon,struct);
			instance_destroy();
		}
}
else if oLord3.spellCast = 4 //Slay
{
		if enemy != noone && enemy.target && enemy.thisLIF = enemy.thisLIFmax 
	{
		global.dmgLORD = oLord3.thisLord_ATK*2
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		oLord3.spellCast = noone;
		oLord3.thisLord_ACTpoints -= 2;
		instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_Slay);
		instance_destroy();
	}
}
else if oLord3.spellCast = 7 //BLADE WHIRL
{
		if collision_point(x,y,oLord3,false,true)
		{
			var struct = {targetLord : oLord3};
			global.castLord = oLord3;
			oLord3.spellCast = noone;
			oLord3.thisLord_ACTpoints -= 2;
			global.dmgLORD = oLord3.thisLord_ATK + irandom_range(-3,1);
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			instance_create_layer(oLord3.x+32,oLord3.y+32,"VFX",oSKILL_WEAPON_BladeWhirl,struct);
			instance_destroy();
		}
}
else if oLord3.spellCast = 8 //CLOSE SHOT
{
	if enemy != noone
	{
		if enemy.x = oLord3.x && enemy.y = oLord3.y-64 enemy.target = true;
		else if enemy.x = oLord3.x+64 && enemy.y = oLord3.y enemy.target = true;
		else if enemy.x = oLord3.x && enemy.y = oLord3.y+64 enemy.target = true;
		else if enemy.x = oLord3.x-64 && enemy.y = oLord3.y enemy.target = true;
		else enemy.target = false;
		
		if enemy.target = true
		{
			oLord3.spellCast = noone;
			oLord3.thisLord_ACTpoints -= 2;
			global.dmgLORD = round((oLord3.thisLord_ATK + irandom_range(-3,6))/2);
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_Closeshot);
			instance_destroy();
		}
	}
}
else if oLord3.spellCast = 9 //BASH
{
	if enemy != noone && enemy.target
	{
		oLord3.spellCast = noone;
		oLord3.thisLord_ACTpoints -= 2;
		global.dmgLORD = round((oLord3.thisLord_ATK + irandom_range(-3,6))/2);
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_Longsword);
		
		if enemy.x = oLord3.x && enemy.y < oLord3.y && collision_point(enemy.x+16,enemy.y-32,oMap_0parent,false,true).empty
		{
			enemy.y -= global.tileRate;
			enemy.bashed = true;
		}
		else if enemy.x > oLord3.x && enemy.y = oLord3.y && collision_point(enemy.x+96,enemy.y+16,oMap_0parent,false,true).empty
		{
			enemy.x += global.tileRate;
			enemy.bashed = true;
		}
		else if enemy.x = oLord3.x && enemy.y > oLord3.y && collision_point(enemy.x+16,enemy.y+96,oMap_0parent,false,true).empty
		{
			enemy.y += global.tileRate;
			enemy.bashed = true;
		}
		else if enemy.x < oLord3.x && enemy.y = oLord3.y && collision_point(enemy.x-32,enemy.y+16,oMap_0parent,false,true).empty
		{
			enemy.x -= global.tileRate;
			enemy.bashed = true;
		}
		
		instance_destroy();
	}
}
else if oLord3.spellCast = 10 //MOONBLAST
{

	if mouse_x < oLord3.x && mouse_y > oLord3.y && mouse_y < oLord3.y+64
	{
		global.dmgLORD = round(oLord3.thisLord_MAG + irandom_range(-3,6));
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		oLord3.spellCast = noone;
		oLord3.thisLord_ACTpoints -= 2;
		var struct = {image_angle : 90, hspeed : -2, dir : 0, castLord : oLord3};
		instance_create_depth(oLord3.x,oLord3.y+32,depth-1,oSKILL_WEAPON_Moonblast,struct);
		instance_destroy();
	}
	else if mouse_x > oLord3.x && mouse_x < oLord3.x+64 && mouse_y < oLord3.y
	{
		global.dmgLORD = round(oLord3.thisLord_MAG + irandom_range(-3,6));
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		oLord3.spellCast = noone;
		oLord3.thisLord_ACTpoints -= 2;
		var struct = {image_angle : 00, vspeed : -2, dir : 1, castLord : oLord3};
		instance_create_depth(oLord3.x+32,oLord3.y,depth-1,oSKILL_WEAPON_Moonblast,struct);
		instance_destroy();
	}
	else if mouse_x > oLord3.x && mouse_y > oLord3.y && mouse_y <oLord3.y+64
	{
		global.dmgLORD = round(oLord3.thisLord_MAG + irandom_range(-3,6));
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		oLord3.spellCast = noone;
		oLord3.thisLord_ACTpoints -= 2;
		var struct = {image_angle : -90, hspeed : 2, dir : 2, castLord : oLord3};
		instance_create_depth(oLord3.x+64,oLord3.y+32,depth-1,oSKILL_WEAPON_Moonblast,struct);
		instance_destroy();
	}
	else if mouse_x > oLord3.x && mouse_x < oLord3.x+64 && mouse_y > oLord3.y+64
	{
		global.dmgLORD = round(oLord3.thisLord_MAG + irandom_range(-3,6));
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		oLord3.spellCast = noone;
		oLord3.thisLord_ACTpoints -= 2;
		var struct = {image_angle : 180, vspeed : 2, dir : 3, castLord : oLord3};
		instance_create_depth(oLord3.x+32,oLord3.y+64,depth-1,oSKILL_WEAPON_Moonblast,struct);
		instance_destroy();
	}
}
else if oLord3.spellCast = 11 //HEAL SONG
{
	if collision_point(x,y,oLord3,false,true)
	{
		global.dmgLORD = round(oLord3.thisLord_MAG/2);
		var struct = { noteColor : c_lime};
		oLord3.spellCast = noone;
		oLord3.thisLord_ACTpoints -= 2;
		audio_play_sound(sn_SKILL_HealSong,0,false);
		with oLord0Parent instance_create_layer(x+32,y+32,"VFX",oSKILL_WEAPON_HealSong);
		instance_create_layer(oLord3.x+32,oLord3.y+32,"VFX",oVFX_Notemaker, struct);
		instance_destroy();
	}
}
else if oLord3.spellCast = 13 //DRAIN SLASH
{
		if enemy != noone && enemy.target
		{
			global.castLord = oLord3;
			oLord3.spellCast = noone;
			oLord3.thisLord_ACTpoints -= 2;
			global.dmgLORD = oLord3.thisLord_ATK + irandom_range(-3,1)
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_DrainSlash);
			instance_destroy();
		}
}
else if oLord3.spellCast = 14 //STORM
{
		if collision_point(x,y,oLord3,false,true)
		{
			oLord3.spellCast = noone;
			oLord3.thisLord_ACTpoints -= 2;
			global.dmgLORD = oLord3.thisLord_MAG + irandom_range(-3,1);
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			audio_play_sound(sn_SKILL_Storm,0,false);
			with oEnemy0_Father if revealed instance_create_layer(x+32,y+32,"VFX",oSKILL_WEAPON_Storm);
			instance_destroy();
		}
}