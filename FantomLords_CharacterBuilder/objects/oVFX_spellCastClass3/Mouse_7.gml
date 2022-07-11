/// @description Insert description here
// You can write your code in this editor

if oLord3.spellCast = 0
{
	if trap != noone
	{
		if (trap.x = oLord3.x && trap.y = oLord3.y-64) || (trap.x = oLord3.x+64 && trap.y = oLord3.y) || (trap.x = oLord3.x && trap.y = oLord3.y+64) || (trap.x = oLord3.x-64 && trap.y = oLord3.y)
		{
			oLord3.spellCast = noone;
			oLord3.thisLord_ACTpoints -= 2;
			instance_create_layer(trap.x,trap.y,"VFX",oSKILL_CLASS_Ranger);
			instance_destroy();
		}
	}
}
else if oLord3.spellCast = 2
{
	if collision_point(x,y,oLord3,0,false)
	{
		oLord3.spellCast = noone;
		oLord3.thisLord_ACTpoints -= 2;
		global.dmgLORD = oLord3.thisLord_MAG + irandom_range(-3,6);
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		instance_create_layer(lord.x,lord.y,"VFX",oSKILL_CLASS_Sunbathe);
		instance_destroy();
	}
}
else if oLord3.spellCast = 3
{
	if lord != noone && lord != oLord3
	{
		if (lord.x = oLord3.x && lord.y = oLord3.y-64) || (lord.x = oLord3.x+64 && lord.y = oLord3.y) || (lord.x = oLord3.x && lord.y = oLord3.y+64) || (lord.x = oLord3.x-64 && lord.y = oLord3.y)
		{
			oLord3.spellCast = noone;
			oLord3.thisLord_ACTpoints -= 2;
			global.dmgLORD = oLord3.thisLord_MAG + irandom_range(-3,6);
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			instance_create_layer(lord.x,lord.y,"VFX",oSKILL_CLASS_Suture);
			instance_destroy();
		}
	}
}
else if oLord3.spellCast = 5
{
	var tile = collision_point(x,y,oMap_0parent,false,true);
	if tile != noone && tile.empty = true && tile.stepped
	{
		oLord3.spellCast = noone;
		oLord3.thisLord_ACTpoints -= 2;
		instance_create_depth(oLord3.x+32,oLord3.y+32,depth-1,oSKILL_CLASS_Wizard);
		instance_create_depth(tile.x+32,tile.y+32,depth-1,oSKILL_CLASS_Wizard2);
		oLord3.x = tile.x;
		oLord3.y = tile.y;
		instance_destroy();
	}
}
else if oLord3.spellCast = 9
{
	if enemy != noone && enemy.target
	{
		oLord3.spellCast = noone;
		oLord3.thisLord_ACTpoints -= 2;
		global.dmgLORD = round((oLord3.thisLord_ATK + irandom_range(-3,6))/2);
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		instance_create_layer(enemy.x+32,enemy.y+32,"VFX",oSKILL_WEAPON_Longsword);
		if enemy.x = oLord3.x && enemy.y < oLord3.y if collision_point(enemy.x,enemy.y-64,oMap_0parent,false,true).empty enemy.y -= global.tileRate;
		if enemy.x > oLord3.x && enemy.y = oLord3.y if collision_point(enemy.x+64,enemy.y,oMap_0parent,false,true).empty enemy.x += global.tileRate;
		if enemy.x = oLord3.x && enemy.y > oLord3.y if collision_point(enemy.x,enemy.y+64,oMap_0parent,false,true).empty enemy.y += global.tileRate;
		if enemy.x < oLord3.x && enemy.y = oLord3.y if collision_point(enemy.x-64,enemy.y,oMap_0parent,false,true).empty enemy.x -= global.tileRate;
		instance_destroy();
	}
}
else if oLord3.spellCast = 10
{
	if collision_point(x,y,oLord3,0,false)
	{
		oLord3.spellCast = noone;
		oLord3.thisLord_ACTpoints -= 2;
		instance_create_layer(lord.x,lord.y,"VFX",oSKILL_CLASS_Battlecry);
		instance_destroy();
	}
}
