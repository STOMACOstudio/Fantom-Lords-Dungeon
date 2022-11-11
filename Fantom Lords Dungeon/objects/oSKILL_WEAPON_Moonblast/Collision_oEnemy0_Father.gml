/// @description Insert description here
// You can write your code in this editor

global.dmgENEMY = dmg - other.thisMAG;
if global.dmgENEMY <= 0 global.dmgENEMY = 1;
other.thisLIF -= global.dmgENEMY;
instance_create_layer(other.x,other.y,"VFX",oGUI_printDMGenemy);