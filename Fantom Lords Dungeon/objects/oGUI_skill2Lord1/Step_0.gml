/// @description Insert description here
// You can write your code in this editor

if mouse_x > x && mouse_x < x+32 && mouse_y > y && mouse_y < y+32 && !instance_exists(oGUI_printSkill)
{
	if instance_exists(oLord1)
	{
		if (oLord1.thisLord_ascend)
		{
				 if oLord1.thisLord_skillClassArmor = 0 global.printSkill = "PATH";
			else if oLord1.thisLord_skillClassArmor = 1 global.printSkill = "BLESS";
			else if oLord1.thisLord_skillClassArmor = 2 global.printSkill = "CLASH";
			else if oLord1.thisLord_skillClassArmor = 3 global.printSkill = "LIFE BREATH";
			else if oLord1.thisLord_skillClassArmor = 4 global.printSkill = "CRYSTALIZE";
			else if oLord1.thisLord_skillClassArmor = 5 global.printSkill = "HONOR";
			else if oLord1.thisLord_skillClassArmor = 6 global.printSkill = "BEAM";
			else if oLord1.thisLord_skillClassArmor = 7 global.printSkill = "DRAIN";
		}
		else
		{
				 if oLord1.thisLord_skillClassArmor = 0 global.printSkill = "DISARM";
			else if oLord1.thisLord_skillClassArmor = 1 global.printSkill = "SHADOW";
			else if oLord1.thisLord_skillClassArmor = 2 global.printSkill = "SUNBATHE";
			else if oLord1.thisLord_skillClassArmor = 3 global.printSkill = "SUTURE";
			else if oLord1.thisLord_skillClassArmor = 4 global.printSkill = "LIFESTEAL";
			else if oLord1.thisLord_skillClassArmor = 5 global.printSkill = "TELEPORT";
			else if oLord1.thisLord_skillClassArmor = 6 global.printSkill = "LULLABY";
			else if oLord1.thisLord_skillClassArmor = 7 global.printSkill = "BURDEN";
			else if oLord1.thisLord_skillClassArmor = 8 global.printSkill = "BURN";
			else if oLord1.thisLord_skillClassArmor = 9 global.printSkill = "REVIVE";
			else if oLord1.thisLord_skillClassArmor = 10 global.printSkill = "BATTLECRY";
			else if oLord1.thisLord_skillClassArmor = 11 global.printSkill = "CRUSH";
		}
	}

	if global.hasControl && instance_exists(oLord1) && mouse_check_button_pressed(mb_left)
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
}

if instance_exists(oLord1) image_index = oLord1.thisLord_skillClassArmor;