/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord4active
{
	thisLocked = false;
	thisLord_name = oLordStats.lord4name;
	thisLord_LIF = oLordStats.lord4LIF;
	thisLord_LIFmax = oLordStats.lord4LIFmax;
	thisLord_ATK = oLordStats.lord4ATK;
	thisLord_ATKmax = oLordStats.lord4ATKmax;
	thisLord_DEF = oLordStats.lord4DEF;
	thisLord_DEFmax = oLordStats.lord4DEFmax;
	thisLord_MAG = oLordStats.lord4MAG;
	thisLord_MAGmax = oLordStats.lord4MAGmax;
	thisLord_ACT = oLordStats.lord4ACT;
	thisLord_ACTmax = oLordStats.lord4ACTmax;
	thisLord_ACTpoints = round((thisLord_ACT)/5);
	if thisLord_ACTpoints < 2 thisLord_ACTpoints = 2;
	thisLord_ACTpointsMAX = round((thisLord_ACT)/5);
	if thisLord_ACTpointsMAX < 2 thisLord_ACTpointsMAX = 2;
	thisLord_typeAttack = oLordStats.lord4typeAttack;
	thisLord_skillClassArmor = oLordStats.lord4skillClassArmor;
	thisLord_skillWeapon = oLordStats.lord4skillWeapon;
	sprite_index = oLordStats.lord4sprite;
	image_xscale /= 5;
	image_yscale /= 5;
	dmgLORD = 0;
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
	
}
else instance_destroy();