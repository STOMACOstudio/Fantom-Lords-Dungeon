/// @description Insert description here
// You can write your code in this editor

tile = collision_point(mouse_x,mouse_y,oMap_0parent,false,true);
enemy = collision_point(x,y,oEnemy0_Father,false,true);

if oLord4.spellCast = 0 //FIREBALL
{
	if tile != noone && tile.stepped
	{
		oLord4.spellCast = noone;
		oLord4.thisLord_ACTpoints -= 2;
		global.dmgLORD = oLord4.thisLord_MAG + irandom_range(-3,6);
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		instance_create_layer(tile.x+32,tile.y+32,"VFX",oSKILL_WEAPON_FireBall);
		instance_destroy();
	}
}
else if oLord4.spellCast = 3 //SOUL SYPHON
{
		if enemy != noone && enemy.target
		{
			var struct = {targetLord : oLord4};
			global.castLord = oLord4;
			oLord4.spellCast = noone;
			oLord4.thisLord_ACTpoints -= 2;
			global.dmgLORD = oLord4.thisLord_MAG + irandom_range(-3,1)
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_SoulSyphon,struct);
			instance_destroy();
		}
}
else if oLord4.spellCast = 8 //CLOSE SHOT
{
	if enemy != noone
	{
		if enemy.x = oLord4.x && enemy.y = oLord4.y-64 enemy.target = true;
		else if enemy.x = oLord4.x+64 && enemy.y = oLord4.y enemy.target = true;
		else if enemy.x = oLord4.x && enemy.y = oLord4.y+64 enemy.target = true;
		else if enemy.x = oLord4.x-64 && enemy.y = oLord4.y enemy.target = true;
		else enemy.target = false;
		
		if enemy.target = true
		{
			oLord4.spellCast = noone;
			oLord4.thisLord_ACTpoints -= 2;
			global.dmgLORD = round((oLord4.thisLord_ATK + irandom_range(-3,6))/2);
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_Closeshot);
			instance_destroy();
		}
	}
}
else if oLord4.spellCast = 9 //BASH
{
	if enemy != noone && enemy.target
	{
		oLord4.spellCast = noone;
		oLord4.thisLord_ACTpoints -= 2;
		global.dmgLORD = round((oLord4.thisLord_ATK + irandom_range(-3,6))/2);
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_Longsword);
		
		if enemy.x = oLord4.x && enemy.y < oLord4.y && collision_point(enemy.x+16,enemy.y-32,oMap_0parent,false,true).empty
		{
			enemy.y -= global.tileRate;
			enemy.bashed = true;
		}
		else if enemy.x > oLord4.x && enemy.y = oLord4.y && collision_point(enemy.x+96,enemy.y+16,oMap_0parent,false,true).empty
		{
			enemy.x += global.tileRate;
			enemy.bashed = true;
		}
		else if enemy.x = oLord4.x && enemy.y > oLord4.y && collision_point(enemy.x+16,enemy.y+96,oMap_0parent,false,true).empty
		{
			enemy.y += global.tileRate;
			enemy.bashed = true;
		}
		else if enemy.x < oLord4.x && enemy.y = oLord4.y && collision_point(enemy.x-32,enemy.y+16,oMap_0parent,false,true).empty
		{
			enemy.x -= global.tileRate;
			enemy.bashed = true;
		}
		
		instance_destroy();
	}
}
else if oLord4.spellCast = 10 //MOONBLAST
{

	if mouse_x < oLord4.x && mouse_y > oLord4.y && mouse_y < oLord4.y+64
	{
		global.dmgLORD = round(oLord4.thisLord_MAG + irandom_range(-3,6));
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		oLord4.spellCast = noone;
		oLord4.thisLord_ACTpoints -= 2;
		var struct = {image_angle : 90, hspeed : -2, dir : 0, castLord : oLord4};
		instance_create_depth(oLord4.x,oLord4.y+32,depth-1,oSKILL_WEAPON_Moonblast,struct);
		instance_destroy();
	}
	else if mouse_x > oLord4.x && mouse_x < oLord4.x+64 && mouse_y < oLord4.y
	{
		global.dmgLORD = round(oLord4.thisLord_MAG + irandom_range(-3,6));
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		oLord4.spellCast = noone;
		oLord4.thisLord_ACTpoints -= 2;
		var struct = {image_angle : 00, vspeed : -2, dir : 1, castLord : oLord4};
		instance_create_depth(oLord4.x+32,oLord4.y,depth-1,oSKILL_WEAPON_Moonblast,struct);
		instance_destroy();
	}
	else if mouse_x > oLord4.x && mouse_y > oLord4.y && mouse_y <oLord4.y+64
	{
		global.dmgLORD = round(oLord4.thisLord_MAG + irandom_range(-3,6));
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		oLord4.spellCast = noone;
		oLord4.thisLord_ACTpoints -= 2;
		var struct = {image_angle : -90, hspeed : 2, dir : 2, castLord : oLord4};
		instance_create_depth(oLord4.x+64,oLord4.y+32,depth-1,oSKILL_WEAPON_Moonblast,struct);
		instance_destroy();
	}
	else if mouse_x > oLord4.x && mouse_x < oLord4.x+64 && mouse_y > oLord4.y+64
	{
		global.dmgLORD = round(oLord4.thisLord_MAG + irandom_range(-3,6));
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		oLord4.spellCast = noone;
		oLord4.thisLord_ACTpoints -= 2;
		var struct = {image_angle : 180, vspeed : 2, dir : 3, castLord : oLord4};
		instance_create_depth(oLord4.x+32,oLord4.y+64,depth-1,oSKILL_WEAPON_Moonblast,struct);
		instance_destroy();
	}
	
}
else if oLord4.spellCast = 13 //DRAIN SLASH
{
		if enemy != noone && enemy.target
		{
			global.castLord = oLord4;
			oLord4.spellCast = noone;
			oLord4.thisLord_ACTpoints -= 2;
			global.dmgLORD = oLord4.thisLord_ATK + irandom_range(-3,1)
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_DrainSlash);
			instance_destroy();
		}
}