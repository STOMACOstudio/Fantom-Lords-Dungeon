/// @description Insert description here
// You can write your code in this editor


if other != self
{
	global.dmgENEMY = dmg - other.thisLord_MAG;
	if global.dmgENEMY <= 0 global.dmgENEMY = 1;
	other.thisLord_LIF -= global.dmgENEMY;
	instance_create_layer(other.x,other.y,"VFX",oGUI_printDMGenemy);
}