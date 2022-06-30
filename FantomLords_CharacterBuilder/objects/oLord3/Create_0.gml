/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord3active
{
	thisLocked = false;
	thisLord_name = oLordStats.lord3name;
	thisLord_LIF = oLordStats.lord3LIF;
	thisLord_LIFmax = oLordStats.lord3LIFmax;
	thisLord_ATK = oLordStats.lord3ATK;
	thisLord_ATKmax = oLordStats.lord3ATKmax;
	thisLord_DEF = oLordStats.lord3DEF;
	thisLord_DEFmax = oLordStats.lord3DEFmax;
	thisLord_MAG = oLordStats.lord3MAG;
	thisLord_MAGmax = oLordStats.lord3MAGmax;
	thisLord_ACT = oLordStats.lord3ACT;
	thisLord_ACTmax = oLordStats.lord3ACTmax;
	thisLord_ACTpoints = round((thisLord_ACT)/5);
	if thisLord_ACTpoints < 2 thisLord_ACTpoints = 2;
	thisLord_ACTpointsMAX = round((thisLord_ACT)/5);
	if thisLord_ACTpointsMAX < 2 thisLord_ACTpointsMAX = 2;
	thisLord_typeAttack = oLordStats.lord3typeAttack;
	thisLord_skillClassArmor = oLordStats.lord3skillClassArmor;
	thisLord_skillWeapon = oLordStats.lord3skillWeapon;
	sprite_index = oLordStats.lord3sprite;
	image_xscale /= 5;
	image_yscale /= 5;
	dmgLORD = 0;

	#region attack and movement
	enemy = noone;
	instTopLeft = noone;
	instTop = noone;
	instTopRight = noone;
	instRight = noone;
	instDownRight = noone;
	instDown = noone;
	instDownLeft = noone;
	instLeft = noone;
	enemyTopTop = noone;
	enemyRightRight = noone;
	enemyDownDown = noone;
	enemyLeftLeft = noone;
	enemyTopLeft = noone;
	enemyTop = noone;
	enemyTopRight = noone;
	enemyRight = noone;
	enemyDownRight = noone;
	enemyDown = noone;
	enemyDownLeft = noone;
	enemyLeft = noone;
	WarFogTopLeft = noone;
	WarFogTop = noone;
	WarFogTopRight = noone;
	WarFogRight = noone;
	WarFogDownRight = noone;
	WarFogDown = noone;
	WarFogDownLeft = noone;
	WarFogLeft = noone;
	lastX = 0;
	lastY = 0;
	#endregion

	spellCast = -1;
	
	battlecry = 0;
}
else instance_destroy();