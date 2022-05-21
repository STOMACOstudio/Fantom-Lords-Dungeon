/// @description Insert description here
// You can write your code in this editor

tile = collision_point(mouse_x,mouse_y,oMap_0parent,false,true);
enemy = collision_point(mouse_x,mouse_y,oEnemy0_Father,false,true);

if oLord2.spellCast = 0
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
			instance_create_layer(enemy.x+32,enemy.y+32,"VFX",oSKILL_WEAPON_Closeshot);
			instance_destroy();
		}
	}
}
else if oLord2.spellCast = 9
{
	if enemy != noone && enemy.target
	{
		oLord2.spellCast = noone;
		oLord2.thisLord_ACTpoints -= 2;
		global.dmgLORD = round((oLord2.thisLord_ATK + irandom_range(-3,6))/2);
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		instance_create_layer(enemy.x+32,enemy.y+32,"VFX",oSKILL_WEAPON_Longsword);
		
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
else if oLord2.spellCast = 13 //DRAIN SLASH
{
		if enemy != noone && enemy.target
		{
			global.castLord = oLord2;
			oLord2.spellCast = noone;
			oLord2.thisLord_ACTpoints -= 2;
			global.dmgLORD = oLord2.thisLord_ATK + irandom_range(-3,1)
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			instance_create_layer(enemy.x+32,enemy.y+32,"VFX",oSKILL_WEAPON_DrainSlash);
			instance_destroy();
		}
}

/*var enemy = collision_point(x,y,oEnemy0_Father,false,false)
if enemy != noone && enemy.target = true
{
	if oLord2.thisLord_typeAttack = "MELEE"
	{
		var dmgLORD = (global.dmgLORD + irandom_range(-3,3)) - enemy.thisDEF;
	}
	else if oLord2.thisLord_typeAttack = "RANGED"
	{
		var dmgLORD = (round(global.dmgLORD/2) + irandom_range(-3,3)) - enemy.thisDEF;
	}
	else if oLord2.thisLord_typeAttack = "MAGIC"
	{
		var dmgLORD = (global.dmgLORD + irandom_range(-3,3)) - enemy.thisMAG;
	}
	
	if dmgLORD < 0 dmgLORD = 0;
	global.dmgLORD = string(dmgLORD);
	
	if dmgLORD > 0
	{
		if oLord2.thisLord_typeAttack = "MELEE" || oLord2.thisLord_typeAttack = "RANGED"
		{
			audio_play_sound(snAttack,0,false);
			instance_create_layer(enemy.x+32,enemy.y+32,"VFX",oVFX_attack);
		}
		else if oLord2.thisLord_typeAttack = "MAGIC"
		{
			audio_play_sound(snAttackMag,0,false);
			instance_create_layer(enemy.x+32,enemy.y+32,"VFX",oVFX_attackMag);
		}
	}
	
	instance_create_layer(enemy.x+irandom_range(8,56),enemy.y+irandom_range(8,56),"VFX",oGUI_printDMGlord);
	
	enemy.thisLIF -= dmgLORD;
	oLord2.thisLord_ACTpoints --;
}
	
instance_destroy();