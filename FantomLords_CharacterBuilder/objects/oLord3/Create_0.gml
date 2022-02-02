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
	thisLord_ACTpoints = round((thisLord_ACT)/10);
	if thisLord_ACTpoints < 1 thisLord_ACTpoints = 1;
	thisLord_ACTpointsMAX = round((thisLord_ACT)/10);
	if thisLord_ACTpointsMAX < 1 thisLord_ACTpointsMAX = 1;
	thisLord_typeAttack = oLordStats.lord3typeAttack;
	thisLord_skillClassArmor = oLordStats.lord3skillClassArmor;
	thisLord_skillWeapon = oLordStats.lord3skillWeapon;
	sprite_index = oLordStats.lord3sprite;
	image_xscale /= 5;
	image_yscale /= 5;
}
else instance_destroy();