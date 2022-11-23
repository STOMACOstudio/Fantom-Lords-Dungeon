/// @description Insert description here
// You can write your code in this editor

if global.hasControl && instance_exists(oLord1)
{
	if oLord1.thisLocked && oLord1.thisLord_ACTpoints >= 2
	{
		if instance_exists(oVFX_spellCast0father)
		{
			oLord1.spellCast = -1;
			instance_destroy(oVFX_spellCast0father);
			oGUI_skill2Lord1.thisColor = c_white;
		}
		else
		{
			oLord1.spellCast = oLord1.thisLord_skillClassArmor;
			if !instance_exists(oVFX_spellCastClass1) instance_create_layer(mouse_x,mouse_y,"VFX",oVFX_spellCastClass1);
			else instance_destroy(oVFX_spellCastClass1);
			oGUI_skill2Lord1.thisColor = c_yellow;
		}
	}
}

