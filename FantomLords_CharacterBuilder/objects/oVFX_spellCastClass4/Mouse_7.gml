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
else if oLord4.spellCast = 2
{
	if collision_point(x,y,oLord4,0,false)
	{
		oLord4.spellCast = noone;
		oLord4.thisLord_ACTpoints -= 2;
		global.dmgLORD = oLord4.thisLord_MAG + irandom_range(-3,6);
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		instance_create_layer(lord.x,lord.y,"VFX",oSKILL_CLASS_Sunbathe);
		instance_destroy();
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
else if oLord4.spellCast = 10
{
	if collision_point(x,y,oLord4,0,false)
	{
		oLord4.spellCast = noone;
		oLord4.thisLord_ACTpoints -= 2;
		instance_create_layer(lord.x,lord.y,"VFX",oSKILL_CLASS_Battlecry);
		instance_destroy();
	}
}
