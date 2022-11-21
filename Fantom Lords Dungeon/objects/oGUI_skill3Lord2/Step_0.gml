/// @description Insert description here
// You can write your code in this editor

if mouse_x > x && mouse_x < x+32 && mouse_y > y && mouse_y < y+32 && !instance_exists(oGUI_printSkill)
{
	if instance_exists(oLord2)
	{
		if (oLord2.thisLord_ascend)
		{
			if oLord2.thisLord_skillWeapon = 0 global.printSkill = "DEAD HOUR";
			else if oLord2.thisLord_skillWeapon = 1 global.printSkill = "MATCHUP";
			else if oLord2.thisLord_skillWeapon = 2 global.printSkill = "SPIRIT ARROWS";
			else if oLord2.thisLord_skillWeapon = 3 global.printSkill = "EERIE SLASH";
			else if oLord2.thisLord_skillWeapon = 4 global.printSkill = "GHOSTS";
			else if oLord2.thisLord_skillWeapon = 5 global.printSkill = "BLIZZARD";
			else if oLord2.thisLord_skillWeapon = 6 global.printSkill = "ROYAL BUFF";
			else if oLord2.thisLord_skillWeapon = 7 global.printSkill = "LAZERAIN";
			else if oLord2.thisLord_skillWeapon = 8 global.printSkill = "BLOODSHED";
			else if oLord2.thisLord_skillWeapon = 9 global.printSkill = "DOUBLE STRIKE";
			else if oLord2.thisLord_skillWeapon = 10 global.printSkill = "BERSERK";
			else if oLord2.thisLord_skillWeapon = 11 global.printSkill = "AGILITY";
			else if oLord2.thisLord_skillWeapon = 12 global.printSkill = "INCENSE";
			else if oLord2.thisLord_skillWeapon = 13 global.printSkill = "TOWER";
		}
		else
		{
			if oLord2.thisLord_skillWeapon = 0 global.printSkill = "FIREBALL";
			else if oLord2.thisLord_skillWeapon = 1 global.printSkill = "HYDROBOLT";
			else if oLord2.thisLord_skillWeapon = 2 global.printSkill = "POISON";
			else if oLord2.thisLord_skillWeapon = 3 global.printSkill = "SOUL SIPHON";
			else if oLord2.thisLord_skillWeapon = 4 global.printSkill = "SLAY";
			else if oLord2.thisLord_skillWeapon = 5 global.printSkill = "QUAKE";
			else if oLord2.thisLord_skillWeapon = 6 global.printSkill = "REVENGE";
			else if oLord2.thisLord_skillWeapon = 7 global.printSkill = "BLADE WHIRL";
			else if oLord2.thisLord_skillWeapon = 8 global.printSkill = "CLOSE SHOT";
			else if oLord2.thisLord_skillWeapon = 9 global.printSkill = "BASH";
			else if oLord2.thisLord_skillWeapon = 10 global.printSkill = "MOON BLAST";
			else if oLord2.thisLord_skillWeapon = 11 global.printSkill = "HEAL SONG";
			else if oLord2.thisLord_skillWeapon = 12 global.printSkill = "MAGIC MISSILE";
			else if oLord2.thisLord_skillWeapon = 13 global.printSkill = "DRAIN SLASH";
			else if oLord2.thisLord_skillWeapon = 14 global.printSkill = "STORM";
			else if oLord2.thisLord_skillWeapon = 15 global.printSkill = "SWAP";
			else if oLord2.thisLord_skillWeapon = 16 global.printSkill = "SCOUT";
		}
	}

	if global.hasControl && instance_exists(oLord2) && mouse_check_button_pressed(mb_left)
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
}

if instance_exists(oLord2) image_index = oLord2.thisLord_skillWeapon;