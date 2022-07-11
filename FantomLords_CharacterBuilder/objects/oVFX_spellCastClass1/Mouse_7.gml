/// @description Insert description here
// You can write your code in this editor

if oLord1.spellCast = 0
{
	if trap != noone
	{
		if (trap.x = oLord1.x && trap.y = oLord1.y-64) || (trap.x = oLord1.x+64 && trap.y = oLord1.y) || (trap.x = oLord1.x && trap.y = oLord1.y+64) || (trap.x = oLord1.x-64 && trap.y = oLord1.y)
		{
			oLord1.spellCast = noone;
			oLord1.thisLord_ACTpoints -= 2;
			instance_create_layer(trap.x,trap.y,"VFX",oSKILL_CLASS_Ranger);
			instance_destroy();
		}
	}
}
else if oLord1.spellCast = 2
{
	if collision_point(x,y,oLord1,0,false)
	{
		oLord1.spellCast = noone;
		oLord1.thisLord_ACTpoints -= 2;
		global.dmgLORD = oLord1.thisLord_MAG + irandom_range(-3,6);
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		instance_create_layer(lord.x,lord.y,"VFX",oSKILL_CLASS_Sunbathe);
		instance_destroy();
	}
}
else if oLord1.spellCast = 3
{
	if lord != noone && lord != oLord1
	{
		if (lord.x = oLord1.x && lord.y = oLord1.y-64) || (lord.x = oLord1.x+64 && lord.y = oLord1.y) || (lord.x = oLord1.x && lord.y = oLord1.y+64) || (lord.x = oLord1.x-64 && lord.y = oLord1.y)
		{
			oLord1.spellCast = noone;
			oLord1.thisLord_ACTpoints -= 2;
			global.dmgLORD = oLord1.thisLord_MAG + irandom_range(-3,6);
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			instance_create_layer(lord.x,lord.y,"VFX",oSKILL_CLASS_Suture);
			instance_destroy();
		}
	}
}
else if oLord1.spellCast = 5
{
	var tile = collision_point(x,y,oMap_0parent,false,true);
	if tile != noone && tile.empty = true && tile.stepped
	{
		oLord1.spellCast = noone;
		oLord1.thisLord_ACTpoints -= 2;
		instance_create_depth(oLord1.x+32,oLord1.y+32,depth-1,oSKILL_CLASS_Wizard);
		instance_create_depth(tile.x+32,tile.y+32,depth-1,oSKILL_CLASS_Wizard2);
		oLord1.x = tile.x;
		oLord1.y = tile.y;
		instance_destroy();
	}
}
else if oLord1.spellCast = 9
{
	if enemy != noone && enemy.target
	{
		oLord1.spellCast = noone;
		oLord1.thisLord_ACTpoints -= 2;
		global.dmgLORD = round((oLord1.thisLord_ATK + irandom_range(-3,6))/2);
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		instance_create_layer(enemy.x+32,enemy.y+32,"VFX",oSKILL_WEAPON_Longsword);
		if enemy.x = oLord1.x && enemy.y < oLord1.y if collision_point(enemy.x,enemy.y-64,oMap_0parent,false,true).empty enemy.y -= global.tileRate;
		if enemy.x > oLord1.x && enemy.y = oLord1.y if collision_point(enemy.x+64,enemy.y,oMap_0parent,false,true).empty enemy.x += global.tileRate;
		if enemy.x = oLord1.x && enemy.y > oLord1.y if collision_point(enemy.x,enemy.y+64,oMap_0parent,false,true).empty enemy.y += global.tileRate;
		if enemy.x < oLord1.x && enemy.y = oLord1.y if collision_point(enemy.x-64,enemy.y,oMap_0parent,false,true).empty enemy.x -= global.tileRate;
		instance_destroy();
	}
}
else if oLord1.spellCast = 10
{
	if collision_point(x,y,oLord1,0,false)
	{
		oLord1.spellCast = noone;
		oLord1.thisLord_ACTpoints -= 2;
		instance_create_layer(lord.x,lord.y,"VFX",oSKILL_CLASS_Battlecry);
		instance_destroy();
	}
}
