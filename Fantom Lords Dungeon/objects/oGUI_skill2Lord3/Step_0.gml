/// @description Insert description here
// You can write your code in this editor

if mouse_x > x && mouse_x < x+32 && mouse_y > y && mouse_y < y+32 && !instance_exists(oGUI_printSkill)
{
	if instance_exists(oLord3)
	{
		if oLord3.thisLord_skillClassArmor = 0 global.printSkill = "DISARM";
		else if oLord3.thisLord_skillClassArmor = 1 global.printSkill = "SHADOW";
		else if oLord3.thisLord_skillClassArmor = 2 global.printSkill = "SUNBATHE";
		else if oLord3.thisLord_skillClassArmor = 3 global.printSkill = "SUTURE";
		else if oLord3.thisLord_skillClassArmor = 4 global.printSkill = "LIFESTEAL";
		else if oLord3.thisLord_skillClassArmor = 5 global.printSkill = "BLAST";
		else if oLord3.thisLord_skillClassArmor = 6 global.printSkill = "SONG";
		else if oLord3.thisLord_skillClassArmor = 7 global.printSkill = "BURDEN";
		else if oLord3.thisLord_skillClassArmor = 8 global.printSkill = "BURN";
		else if oLord3.thisLord_skillClassArmor = 9 global.printSkill = "REVIVE";
		else if oLord3.thisLord_skillClassArmor = 10 global.printSkill = "BATTLECRY";
		else if oLord3.thisLord_skillClassArmor = 11 global.printSkill = "CRUSH";
	}

	if global.hasControl && instance_exists(oLord3) && mouse_check_button_pressed(mb_left)
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
}

if instance_exists(oLord3) image_index = oLord3.thisLord_skillClassArmor;