/// @description Insert description here
// You can write your code in this editor

if (global.hasControl && instance_exists(oLord2) && mouse_check_button_pressed(mb_left) && !oLord2.berserk)
{
	if oLord2.thisLocked && oLord2.thisLord_ACTpoints >= 2
	{
		if instance_exists(oVFX_spellCast0father)
		{
			oLord2.spellCast = -1;
			instance_destroy(oVFX_spellCast0father);
			oGUI_skill3Lord2.thisColor = c_white;
		}
		else
		{
			oLord2.spellCast = oLord2.thisLord_skillWeapon;
			if !instance_exists(oVFX_spellCast2) instance_create_layer(mouse_x,mouse_y,"VFX",oVFX_spellCast2);
			else instance_destroy(oVFX_spellCast2);
			oGUI_skill3Lord2.thisColor = c_yellow;
		}
	}
}

