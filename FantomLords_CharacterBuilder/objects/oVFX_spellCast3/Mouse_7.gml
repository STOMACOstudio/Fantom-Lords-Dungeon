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
			instance_create_layer(enemy.xenemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_Closeshot);
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