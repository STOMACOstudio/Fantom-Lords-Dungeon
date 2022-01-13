/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord1active && !oLordStats.lord2active  && !oLordStats.lord3active && !oLordStats.lord4active global.ACTpointsTOT = oLord1.thisLord_ACTpoints;
else if oLordStats.lord2active && !oLordStats.lord3active && !oLordStats.lord4active global.ACTpointsTOT = oLord1.thisLord_ACTpoints + oLord2.thisLord_ACTpoints;
else if oLordStats.lord3active && !oLordStats.lord4active global.ACTpointsTOT = oLord1.thisLord_ACTpoints + oLord2.thisLord_ACTpoints + oLord3.thisLord_ACTpoints;
else if oLordStats.lord4active global.ACTpointsTOT = oLord1.thisLord_ACTpoints + oLord2.thisLord_ACTpoints + oLord3.thisLord_ACTpoints + oLord4.thisLord_ACTpoints;