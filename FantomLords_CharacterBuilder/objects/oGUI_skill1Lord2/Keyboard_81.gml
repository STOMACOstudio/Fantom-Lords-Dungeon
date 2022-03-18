/// @description Insert description here
// You can write your code in this editor

if !instance_exists(oVFX_spellCast0father) && instance_exists(oLord2) && oLord2.thisLord_ACTpoints > 0 && oLord2.thisLocked
{
	instance_create_layer(mouse_x,mouse_y,"VFX",oVFX_spellCast2);
	
	if oLord2.thisLord_typeAttack = "MAGIC" global.dmgLORD = oLord2.thisLord_MAG;
	else global.dmgLORD = oLord2.thisLord_ATK;
	
	casting = true;
}