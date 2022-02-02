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
	thisLord_ACTpoints = round((thisLord_ACT)/10);
	if thisLord_ACTpoints < 1 thisLord_ACTpoints = 1;
	thisLord_ACTpointsMAX = round((thisLord_ACT)/10);
	if thisLord_ACTpointsMAX < 1 thisLord_ACTpointsMAX = 1;
	thisLord_typeAttack = oLordStats.lord4typeAttack;
	thisLord_skillClassArmor = oLordStats.lord4skillClassArmor;
	thisLord_skillWeapon = oLordStats.lord4skillWeapon;
	sprite_index = oLordStats.lord4sprite;
	image_xscale /= 5;
	image_yscale /= 5;
}
else instance_destroy();