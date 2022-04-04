/// @description Insert description here
// You can write your code in this editor

if !instance_exists(oVFX_spellCast0father) && instance_exists(oLord3) && oLord3.thisLord_ACTpoints > 0 && oLord3.thisLocked
{
	instance_create_layer(mouse_x,mouse_y,"VFX",oVFX_spellCast3);
	
	global.dmgLORD = 1000;
	
	casting = true;
}