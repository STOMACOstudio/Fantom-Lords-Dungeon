/// @description Insert description here
// You can write your code in this editor

if global.hasControl
{
	if thisLocked && thisLord_ACTpoints >= 2
	{
		if instance_exists(oVFX_spellCast0father)
		{
			spellCast = -1;
			instance_destroy(oVFX_spellCast0father);
		}
		else
		{
			spellCast = thisLord_skillWeapon;
			if !instance_exists(oVFX_spellCast1) instance_create_layer(mouse_x,mouse_y,"VFX",oVFX_spellCast1);
			else instance_destroy(oVFX_spellCast1);
		}
	}
}