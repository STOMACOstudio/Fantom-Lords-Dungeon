/// @description Insert description here
// You can write your code in this editor

if !instance_exists(oVFX_spellCast0father) && instance_exists(oLord1) && oLord1.thisLord_ACTpoints > 0 && oLord1.thisLocked
{
	instance_create_layer(mouse_x,mouse_y,"VFX",oVFX_spellCast1);
	
	if oLord1.thisLord_typeAttack = "MAGIC" global.dmgLORD = oLord1.thisLord_MAG;
	else global.dmgLORD = oLord1.thisLord_ATK;
	
	casting = true;
}