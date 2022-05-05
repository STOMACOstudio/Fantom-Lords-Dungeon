/// @description Insert description here
// You can write your code in this editor

if oLord4.spellCast = 0
{
	if trap != noone
	{
		if (trap.x = oLord4.x && trap.y = oLord4.y-64) || (trap.x = oLord4.x+64 && trap.y = oLord4.y) || (trap.x = oLord4.x && trap.y = oLord4.y+64) || (trap.x = oLord4.x-64 && trap.y = oLord4.y)
		{
			oLord4.spellCast = noone;
			oLord4.thisLord_ACTpoints -= 2;
			instance_create_layer(trap.x,trap.y,"VFX",oSKILL_CLASS_Ranger);
			instance_destroy();
		}
	}
}
else if oLord4.spellCast = 3
{
	if lord != noone && lord != oLord4
	{
		if (lord.x = oLord4.x && lord.y = oLord4.y-64) || (lord.x = oLord4.x+64 && lord.y = oLord4.y) || (lord.x = oLord4.x && lord.y = oLord4.y+64) || (lord.x = oLord4.x-64 && lord.y = oLord4.y)
		{
			oLord4.spellCast = noone;
			oLord4.thisLord_ACTpoints -= 2;
			global.dmgLORD = oLord4.thisLord_MAG + irandom_range(-3,6);
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			instance_create_layer(lord.x,lord.y,"VFX",oSKILL_CLASS_Suture);
			instance_destroy();
		}
	}
}
else if oLord4.spellCast = 9
{
	if enemy != noone && enemy.target
	{
		oLord4.spellCast = noone;
		oLord4.thisLord_ACTpoints -= 2;
		global.dmgLORD = round((oLord4.thisLord_ATK + irandom_range(-3,6))/2);
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		instance_create_layer(enemy.x+32,enemy.y+32,"VFX",oSKILL_WEAPON_Longsword);
		if enemy.x = oLord4.x && enemy.y < oLord4.y if collision_point(enemy.x,enemy.y-64,oMap_0parent,false,true).empty enemy.y -= global.tileRate;
		if enemy.x > oLord4.x && enemy.y = oLord4.y if collision_point(enemy.x+64,enemy.y,oMap_0parent,false,true).empty enemy.x += global.tileRate;
		if enemy.x = oLord4.x && enemy.y > oLord4.y if collision_point(enemy.x,enemy.y+64,oMap_0parent,false,true).empty enemy.y += global.tileRate;
		if enemy.x < oLord4.x && enemy.y = oLord4.y if collision_point(enemy.x-64,enemy.y,oMap_0parent,false,true).empty enemy.x -= global.tileRate;
		instance_destroy();
	}
}

/*var enemy = collision_point(x,y,oEnemy0_Father,false,false)
if enemy != noone && enemy.target = true
{
	if oLord4.thisLord_typeAttack = "MELEE"
	{
		var dmgLORD = (global.dmgLORD + irandom_range(-3,3)) - enemy.thisDEF;
	}
	else if oLord4.thisLord_typeAttack = "RANGED"
	{
		var dmgLORD = (round(global.dmgLORD/2) + irandom_range(-3,3)) - enemy.thisDEF;
	}
	else if oLord4.thisLord_typeAttack = "MAGIC"
	{
		var dmgLORD = (global.dmgLORD + irandom_range(-3,3)) - enemy.thisMAG;
	}
	
	if dmgLORD < 0 dmgLORD = 0;
	global.dmgLORD = string(dmgLORD);
	
	if dmgLORD > 0
	{
		if oLord4.thisLord_typeAttack = "MELEE" || oLord4.thisLord_typeAttack = "RANGED"
		{
			audio_play_sound(snAttack,0,false);
			instance_create_layer(enemy.x+32,enemy.y+32,"VFX",oVFX_attack);
		}
		else if oLord4.thisLord_typeAttack = "MAGIC"
		{
			audio_play_sound(snAttackMag,0,false);
			instance_create_layer(enemy.x+32,enemy.y+32,"VFX",oVFX_attackMag);
		}
	}
	
	instance_create_layer(enemy.x+irandom_range(8,56),enemy.y+irandom_range(8,56),"VFX",oGUI_printDMGlord);
	
	enemy.thisLIF -= dmgLORD;
	oLord4.thisLord_ACTpoints --;
}
	
instance_destroy();*/