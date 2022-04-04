/// @description Insert description here
// You can write your code in this editor

if !instance_exists(oVFX_spellCast0father) && instance_exists(oLord4) && oLord4.thisLord_ACTpoints > 0 && oLord4.thisLocked
{
	instance_create_layer(mouse_x,mouse_y,"VFX",oVFX_spellCast4);
	
	global.dmgLORD = 1000;
	
	casting = true;
}