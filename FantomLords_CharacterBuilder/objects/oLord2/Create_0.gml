/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord2active
{
	thisLocked = false;
	thisLord_name = oLordStats.lord2name;
	thisLord_LIF = oLordStats.lord2LIF;
	thisLord_LIFmax = oLordStats.lord2LIFmax;
	thisLord_ATK = oLordStats.lord2ATK;
	thisLord_ATKmax = oLordStats.lord2ATKmax;
	thisLord_DEF = oLordStats.lord2DEF;
	thisLord_DEFmax = oLordStats.lord2DEFmax;
	thisLord_MAG = oLordStats.lord2MAG;
	thisLord_MAGmax = oLordStats.lord2MAGmax;
	thisLord_ACT = oLordStats.lord2ACT;
	thisLord_ACTmax = oLordStats.lord2ACTmax;
	thisLord_ACTpoints = round((thisLord_ACT)/10);
	if thisLord_ACTpoints < 1 thisLord_ACTpoints = 1;
	thisLord_ACTpointsMAX = round((thisLord_ACT)/10);
	if thisLord_ACTpointsMAX < 1 thisLord_ACTpointsMAX = 1;
	sprite_index = oLordStats.lord2sprite;
	image_xscale /= 5;
	image_yscale /= 5;
}
else instance_destroy();