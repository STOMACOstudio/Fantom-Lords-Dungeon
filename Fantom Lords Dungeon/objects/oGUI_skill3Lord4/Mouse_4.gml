/// @description Insert description here
// You can write your code in this editor

if global.hasControl && instance_exists(oLord4) && mouse_check_button_pressed(mb_left) && !oLord1.berserk
{
	if oLord4.thisLocked && oLord4.thisLord_ACTpoints >= 2
	{
		if instance_exists(oVFX_spellCast0father)
		{
			oLord4.spellCast = -1;
			instance_destroy(oVFX_spellCast0father);
			oGUI_skill3Lord4.thisColor = c_white;
		}
		else
		{
			oLord4.spellCast = oLord4.thisLord_skillWeapon;
			if !instance_exists(oVFX_spellCast4) instance_create_layer(mouse_x,mouse_y,"VFX",oVFX_spellCast4);
			else instance_destroy(oVFX_spellCast4);
			oGUI_skill3Lord4.thisColor = c_yellow;
		}
	}
}