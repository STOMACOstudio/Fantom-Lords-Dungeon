/// @description Insert description here
// You can write your code in this editor

if thisLocked && thisLord_ACTpoints >= 2 && global.hasControl
{
	if instance_exists(oVFX_spellCast4)
	{
		spellCast = -1;
		instance_destroy(oVFX_spellCast4);
	}
	else
	{
		spellCast = thisLord_skillWeapon;
		if !instance_exists(oVFX_spellCast4) instance_create_layer(mouse_x,mouse_y,"VFX",oVFX_spellCast4);
		else instance_destroy(oVFX_spellCast4);
	}
}