/// @description Insert description here
// You can write your code in this editor

if thisLocked && thisLord_ACTpoints >= 2 && global.hasControl && !berserk
{
	if instance_exists(oVFX_spellCastClass2)
	{
		spellCast = -1;
		instance_destroy(oVFX_spellCastClass2);
		oGUI_skill2Lord2.thisColor = c_white;
	}
	else
	{
		spellCast = thisLord_skillClassArmor;
		if !instance_exists(oVFX_spellCastClass2) instance_create_layer(mouse_x,mouse_y,"VFX",oVFX_spellCastClass2);
		else instance_destroy(oVFX_spellCastClass2);
		oGUI_skill2Lord2.thisColor = c_yellow;
	}
}
