/// @description Insert description here
// You can write your code in this editor

thisLocked = false;
thisLord_name = oLordStats.lord1name;
thisLord_LIF = oLordStats.lord1LIF;
thisLord_LIFmax = oLordStats.lord1LIFmax;
thisLord_ATK = oLordStats.lord1ATK;
thisLord_ATKmax = oLordStats.lord1ATKmax;
thisLord_DEF = oLordStats.lord1DEF;
thisLord_DEFmax = oLordStats.lord1DEFmax;
thisLord_MAG = oLordStats.lord1MAG;
thisLord_MAGmax = oLordStats.lord1MAGmax;
thisLord_ACT = oLordStats.lord1ACT + 30;
thisLord_ACTmax = oLordStats.lord1ACTmax + 30;
thisLord_ACTpoints = round((thisLord_ACT)/10);
if thisLord_ACTpoints < 1 thisLord_ACTpoints = 1;
thisLord_ACTpointsMAX = round((thisLord_ACT)/10);
if thisLord_ACTpointsMAX < 1 thisLord_ACTpointsMAX = 1;
sprite_index = oLordStats.lord1sprite;
image_xscale /= 5;
image_yscale /= 5;