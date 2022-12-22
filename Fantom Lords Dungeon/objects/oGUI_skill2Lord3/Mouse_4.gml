/// @description Insert description here
// You can write your code in this editor

if (global.hasControl && instance_exists(oLord3) && mouse_check_button_pressed(mb_left) && !oLord3.berserk)
{
	if oLord3.thisLocked && oLord3.thisLord_ACTpoints >= 2
	{
		if instance_exists(oVFX_spellCast0father)
		{
			oLord3.spellCast = -1;
			instance_destroy(oVFX_spellCast0father);
			oGUI_skill2Lord3.thisColor = c_white;
		}
		else
		{
			oLord3.spellCast = oLord3.thisLord_skillClassArmor;
			if !instance_exists(oVFX_spellCastClass3) instance_create_layer(mouse_x,mouse_y,"VFX",oVFX_spellCastClass3);
			else instance_destroy(oVFX_spellCastClass3);
			oGUI_skill2Lord3.thisColor = c_yellow;
		}
	}
}