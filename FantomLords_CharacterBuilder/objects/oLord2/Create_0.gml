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
	sprite_index = oLordStats.lord2sprite;
	image_xscale /= 5;
	image_yscale /= 5;
}
else instance_destroy();