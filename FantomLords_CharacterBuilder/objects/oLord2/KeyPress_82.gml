/// @description Insert description here
// You can write your code in this editor

if global.fightMode && thisLocked && thisLord_ACTpoints >= 2
{
	if instance_exists(oVFX_spellCast2)
	{
		spellCast = -1;
		instance_destroy(oVFX_spellCast2);
	}
	else
	{
		spellCast = thisLord_skillWeapon;
		if !instance_exists(oVFX_spellCast2) instance_create_layer(mouse_x,mouse_y,"VFX",oVFX_spellCast2);
		else instance_destroy(oVFX_spellCast2);
	}
}
