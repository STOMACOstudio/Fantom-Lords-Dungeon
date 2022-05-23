/// @description Insert description here
// You can write your code in this editor

if oLord2.spellCast = 0
{
	if trap != noone
	{
		if (trap.x = oLord2.x && trap.y = oLord2.y-64) || (trap.x = oLord2.x+64 && trap.y = oLord2.y) || (trap.x = oLord2.x && trap.y = oLord2.y+64) || (trap.x = oLord2.x-64 && trap.y = oLord2.y)
		{
			oLord2.spellCast = noone;
			oLord2.thisLord_ACTpoints -= 2;
			instance_create_layer(trap.x,trap.y,"VFX",oSKILL_CLASS_Ranger);
			instance_destroy();
		}
	}
}
else if oLord2.spellCast = 2
{
	if collision_point(x,y,oLord2,0,false)
	{
		oLord2.spellCast = noone;
		oLord2.thisLord_ACTpoints -= 2;
		global.dmgLORD = oLord2.thisLord_MAG + irandom_range(-3,6);
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		instance_create_layer(lord.x,lord.y,"VFX",oSKILL_CLASS_Sunbathe);
		instance_destroy();
	}
}
else if oLord2.spellCast = 3
{
	if lord != noone && lord != oLord2
	{
		if (lord.x = oLord2.x && lord.y = oLord2.y-64) || (lord.x = oLord2.x+64 && lord.y = oLord2.y) || (lord.x = oLord2.x && lord.y = oLord2.y+64) || (lord.x = oLord2.x-64 && lord.y = oLord2.y)
		{
			oLord2.spellCast = noone;
			oLord2.thisLord_ACTpoints -= 2;
			global.dmgLORD = oLord2.thisLord_MAG + irandom_range(-3,6);
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			instance_create_layer(lord.x,lord.y,"VFX",oSKILL_CLASS_Suture);
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
		if enemy.x = oLord2.x && enemy.y < oLord2.y if collision_point(enemy.x,enemy.y-64,oMap_0parent,false,true).empty enemy.y -= global.tileRate;
		if enemy.x > oLord2.x && enemy.y = oLord2.y if collision_point(enemy.x+64,enemy.y,oMap_0parent,false,true).empty enemy.x += global.tileRate;
		if enemy.x = oLord2.x && enemy.y > oLord2.y if collision_point(enemy.x,enemy.y+64,oMap_0parent,false,true).empty enemy.y += global.tileRate;
		if enemy.x < oLord2.x && enemy.y = oLord2.y if collision_point(enemy.x-64,enemy.y,oMap_0parent,false,true).empty enemy.x -= global.tileRate;
		instance_destroy();
	}
}
else if oLord2.spellCast = 10
{
	if collision_point(x,y,oLord2,0,false)
	{
		oLord2.spellCast = noone;
		oLord2.thisLord_ACTpoints -= 2;
		instance_create_layer(lord.x,lord.y,"VFX",oSKILL_CLASS_Battlecry);
		instance_destroy();
	}
}
