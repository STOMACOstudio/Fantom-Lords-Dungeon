/// @description Insert description here
// You can write your code in this editor

tile = collision_point(mouse_x,mouse_y,oMap_0parent,false,true);
enemy = collision_point(x,y,oEnemy0_Father,false,true);

if oLord2.spellCast = 0 //FIREBALL
{
	if tile != noone && tile.stepped
	{
		oLord2.spellCast = noone;
		oLord2.thisLord_ACTpoints -= 2;
		global.dmgLORD = oLord2.thisLord_MAG + irandom_range(-3,6);
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		instance_create_layer(tile.x+32,tile.y+32,"VFX",oSKILL_WEAPON_FireBall);
		instance_destroy();
	}
}
else if oLord2.spellCast = 1 //Hydrobolt
{
	var struct = { xDir : mouse_x,
				   yDir : mouse_y };
	global.dmgLORD = oLord2.thisLord_MAG + irandom_range(-3,6);
	if global.dmgLORD <= 0 global.dmgLORD = 1;				   
	oLord2.spellCast = noone;
	oLord2.thisLord_ACTpoints -= 2;
	instance_create_layer(oLord2.x+oLord2.sprite_width/2,oLord2.y+oLord2.sprite_height/2,"VFX",oSKILL_WEAPON_Hydrobolt, struct);
	instance_destroy();
}
else if oLord2.spellCast = 2 //Poison
{
		if enemy != noone
	{
		if enemy.x = oLord2.x && enemy.y = oLord2.y-64 enemy.target = true;
		else if enemy.x = oLord2.x+64 && enemy.y = oLord2.y enemy.target = true;
		else if enemy.x = oLord2.x && enemy.y = oLord2.y+64 enemy.target = true;
		else if enemy.x = oLord2.x-64 && enemy.y = oLord2.y enemy.target = true;
		else enemy.target = false;
		if enemy.target = true
		{
			oLord2.spellCast = noone;
			oLord2.thisLord_ACTpoints -= 2;
			instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_Poison);
			instance_destroy();
		}
	}
}
else if oLord2.spellCast = 3 //SOUL SYPHON
{
		if enemy != noone && enemy.target
		{
			var struct = {targetLord : oLord2};
			global.castLord = oLord2;
			oLord2.spellCast = noone;
			oLord2.thisLord_ACTpoints -= 2;
			global.dmgLORD = oLord2.thisLord_MAG + irandom_range(-3,1)
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_SoulSyphon,struct);
			instance_destroy();
		}
}
else if oLord2.spellCast = 4 //Slay
{
		if enemy != noone && enemy.target && enemy.thisLIF = enemy.thisLIFmax 
	{
		global.dmgLORD = oLord2.thisLord_ATK*2
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		oLord2.spellCast = noone;
		oLord2.thisLord_ACTpoints -= 2;
		instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_Slay);
		instance_destroy();
	}
}
else if oLord2.spellCast = 6 //Revenge
{
	if enemy != noone
	{
		global.dmgLORD = oLord2.thisLord_LIFmax - oLord2.thisLord_LIF;
		oLord2.spellCast = noone;
		oLord2.thisLord_ACTpoints -= 2;
		instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_Revenge);
		instance_destroy();
	}
}
else if oLord2.spellCast = 7 //BLADE WHIRL
{
		if collision_point(x,y,oLord2,false,true)
		{
			var struct = {targetLord : oLord2};
			global.castLord = oLord2;
			oLord2.spellCast = noone;
			oLord2.thisLord_ACTpoints -= 2;
			global.dmgLORD = oLord2.thisLord_ATK + irandom_range(-3,1);
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			instance_create_layer(oLord2.x+32,oLord2.y+32,"VFX",oSKILL_WEAPON_BladeWhirl,struct);
			instance_destroy();
		}
}
else if oLord2.spellCast = 8 //CLOSE SHOT
{
	if enemy != noone
	{
		if enemy.x = oLord2.x && enemy.y = oLord2.y-64 enemy.target = true;
		else if enemy.x = oLord2.x+64 && enemy.y = oLord2.y enemy.target = true;
		else if enemy.x = oLord2.x && enemy.y = oLord2.y+64 enemy.target = true;
		else if enemy.x = oLord2.x-64 && enemy.y = oLord2.y enemy.target = true;
		else enemy.target = false;
		
		if enemy.target = true
		{
			oLord2.spellCast = noone;
			oLord2.thisLord_ACTpoints -= 2;
			global.dmgLORD = round((oLord2.thisLord_ATK + irandom_range(-3,6))/2);
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_Closeshot);
			instance_destroy();
		}
	}
}
else if oLord2.spellCast = 9 //BASH
{
	if enemy != noone && enemy.target
	{
		oLord2.spellCast = noone;
		oLord2.thisLord_ACTpoints -= 2;
		global.dmgLORD = round((oLord2.thisLord_ATK + irandom_range(-3,6))/2);
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_Longsword);
		
		if enemy.x = oLord2.x && enemy.y < oLord2.y && collision_point(enemy.x+16,enemy.y-32,oMap_0parent,false,true).empty
		{
			enemy.y -= global.tileRate;
			enemy.bashed = true;
		}
		else if enemy.x > oLord2.x && enemy.y = oLord2.y && collision_point(enemy.x+96,enemy.y+16,oMap_0parent,false,true).empty
		{
			enemy.x += global.tileRate;
			enemy.bashed = true;
		}
		else if enemy.x = oLord2.x && enemy.y > oLord2.y && collision_point(enemy.x+16,enemy.y+96,oMap_0parent,false,true).empty
		{
			enemy.y += global.tileRate;
			enemy.bashed = true;
		}
		else if enemy.x < oLord2.x && enemy.y = oLord2.y && collision_point(enemy.x-32,enemy.y+16,oMap_0parent,false,true).empty
		{
			enemy.x -= global.tileRate;
			enemy.bashed = true;
		}
		
		instance_destroy();
	}
}
else if oLord2.spellCast = 10 //MOONBLAST
{

	if mouse_x < oLord2.x && mouse_y > oLord2.y && mouse_y < oLord2.y+64
	{
		global.dmgLORD = round(oLord2.thisLord_MAG + irandom_range(-3,6));
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		oLord2.spellCast = noone;
		oLord2.thisLord_ACTpoints -= 2;
		var struct = {image_angle : 90, hspeed : -2, dir : 0, castLord : oLord2};
		instance_create_depth(oLord2.x,oLord2.y+32,depth-1,oSKILL_WEAPON_Moonblast,struct);
		instance_destroy();
	}
	else if mouse_x > oLord2.x && mouse_x < oLord2.x+64 && mouse_y < oLord2.y
	{
		global.dmgLORD = round(oLord2.thisLord_MAG + irandom_range(-3,6));
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		oLord2.spellCast = noone;
		oLord2.thisLord_ACTpoints -= 2;
		var struct = {image_angle : 00, vspeed : -2, dir : 1, castLord : oLord2};
		instance_create_depth(oLord2.x+32,oLord2.y,depth-1,oSKILL_WEAPON_Moonblast,struct);
		instance_destroy();
	}
	else if mouse_x > oLord2.x && mouse_y > oLord2.y && mouse_y <oLord2.y+64
	{
		global.dmgLORD = round(oLord2.thisLord_MAG + irandom_range(-3,6));
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		oLord2.spellCast = noone;
		oLord2.thisLord_ACTpoints -= 2;
		var struct = {image_angle : -90, hspeed : 2, dir : 2, castLord : oLord2};
		instance_create_depth(oLord2.x+64,oLord2.y+32,depth-1,oSKILL_WEAPON_Moonblast,struct);
		instance_destroy();
	}
	else if mouse_x > oLord2.x && mouse_x < oLord2.x+64 && mouse_y > oLord2.y+64
	{
		global.dmgLORD = round(oLord2.thisLord_MAG + irandom_range(-3,6));
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		oLord2.spellCast = noone;
		oLord2.thisLord_ACTpoints -= 2;
		var struct = {image_angle : 180, vspeed : 2, dir : 3, castLord : oLord2};
		instance_create_depth(oLord2.x+32,oLord2.y+64,depth-1,oSKILL_WEAPON_Moonblast,struct);
		instance_destroy();
	}
	
}
else if oLord2.spellCast = 11 //HEAL SONG
{
	if collision_point(x,y,oLord2,false,true)
	{
		global.dmgLORD = round(oLord2.thisLord_MAG/2);
		var struct = { noteColor : c_lime};
		oLord2.spellCast = noone;
		oLord2.thisLord_ACTpoints -= 2;
		audio_play_sound(sn_SKILL_HealSong,0,false);
		with oLord0Parent instance_create_layer(x+32,y+32,"VFX",oSKILL_WEAPON_HealSong);
		instance_create_layer(oLord2.x+32,oLord2.y+32,"VFX",oVFX_Notemaker, struct);
		instance_destroy();
	}
}
else if oLord2.spellCast = 13 //DRAIN SLASH
{
		if enemy != noone && enemy.target
		{
			global.castLord = oLord2;
			oLord2.spellCast = noone;
			oLord2.thisLord_ACTpoints -= 2;
			global.dmgLORD = oLord2.thisLord_ATK + irandom_range(-3,1)
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_DrainSlash);
			instance_destroy();
		}
}
else if oLord2.spellCast = 14 //STORM
{
		if collision_point(x,y,oLord2,false,true)
		{
			oLord2.spellCast = noone;
			oLord2.thisLord_ACTpoints -= 2;
			global.dmgLORD = oLord2.thisLord_MAG + irandom_range(-3,1);
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			audio_play_sound(sn_SKILL_Storm,0,false);
			with oEnemy0_Father if revealed instance_create_layer(x+32,y+32,"VFX",oSKILL_WEAPON_Storm);
			instance_destroy();
		}
}