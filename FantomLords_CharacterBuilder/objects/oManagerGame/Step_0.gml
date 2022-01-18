/// @description Insert description here
// You can write your code in this editor

var add1 = 0;
var add2 = 0;
var add3 = 0;
var add4 = 0;

if instance_exists(oLord1) add1 = oLord1.thisLord_ACTpoints;
if instance_exists(oLord2) add2 = oLord2.thisLord_ACTpoints;
if instance_exists(oLord3) add3 = oLord3.thisLord_ACTpoints;
if instance_exists(oLord4) add4 = oLord4.thisLord_ACTpoints;

global.ACTpointsTOT = add1 + add2 + add3 + add4;