/// @description Insert description here
// You can write your code in this editor

if mouse_x > x && mouse_x < x+32 && mouse_y > y && mouse_y < y+32 && !instance_exists(oGUI_printSkill)
{
	if instance_exists(oLord3)
	{
		if oLord3.thisLord_skillWeapon = 0 global.printSkill = "FIREBALL";
		else if oLord3.thisLord_skillWeapon = 1 global.printSkill = "HYDROBOLT";
		else if oLord3.thisLord_skillWeapon = 2 global.printSkill = "POISON VIAL";
		else if oLord3.thisLord_skillWeapon = 3 global.printSkill = "SOUL SIPHON";
		else if oLord3.thisLord_skillWeapon = 4 global.printSkill = "SLAY";
		else if oLord3.thisLord_skillWeapon = 5 global.printSkill = "STONE SHIELD";
		else if oLord3.thisLord_skillWeapon = 6 global.printSkill = "EXORCISM";
		else if oLord3.thisLord_skillWeapon = 7 global.printSkill = "DOUBLE STRIKE";
		else if oLord3.thisLord_skillWeapon = 8 global.printSkill = "CLOSE SHOT";
		else if oLord3.thisLord_skillWeapon = 9 global.printSkill = "BASH";
		else if oLord3.thisLord_skillWeapon = 10 global.printSkill = "MOON POWER";
		else if oLord3.thisLord_skillWeapon = 11 global.printSkill = "HEALING SONG";
		else if oLord3.thisLord_skillWeapon = 12 global.printSkill = "MAGIC MISSILE";
		else if oLord3.thisLord_skillWeapon = 13 global.printSkill = "DRAIN SLASH";
		else if oLord3.thisLord_skillWeapon = 14 global.printSkill = "STORM";
		else if oLord3.thisLord_skillWeapon = 15 global.printSkill = "SCRY";
		else if oLord3.thisLord_skillWeapon = 16 global.printSkill = "HUNT";
	}
	
	if global.hasControl && instance_exists(oLord3) && mouse_check_button_pressed(mb_left)
	{
		if oLord3.thisLocked && oLord3.thisLord_ACTpoints >= 2
		{
			if instance_exists(oVFX_spellCast0father)
			{
				oLord3.spellCast = -1;
				instance_destroy(oVFX_spellCast0father);
				oGUI_skill3Lord3.thisColor = c_white;
			}
			else
			{
				oLord3.spellCast = oLord3.thisLord_skillWeapon;
				if !instance_exists(oVFX_spellCast3) instance_create_layer(mouse_x,mouse_y,"VFX",oVFX_spellCast3);
				else instance_destroy(oVFX_spellCast3);
				oGUI_skill3Lord3.thisColor = c_yellow;
			}
		}
	}
}

image_index = oLord3.thisLord_skillWeapon;