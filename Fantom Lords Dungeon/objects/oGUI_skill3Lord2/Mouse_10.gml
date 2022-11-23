/// @description Insert description here
// You can write your code in this editor

if (oLordStats.lord2active && instance_exists(oLord2))
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

	if instance_exists(oLord2) image_index = oLord2.thisLord_skillWeapon;

	global.currentSelectedStatus = "Weapon Skill";
	global.currentStatusColor = c_white;
	
	if (oLord2.thisLord_ascend)
	{
		if oLord2.thisLord_skillWeapon = 0
		{
			global.currentSelectedName = "Dead Hour";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Deals MAG";
			global.currentSelectedDescription2 = "damage based";
			global.currentSelectedDescription3 = "on current time";
		}
		else if oLord2.thisLord_skillWeapon = 1
		{
			global.currentSelectedName = "Matchup";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Rise and lower";
			global.currentSelectedDescription2 = "random stat on";
			global.currentSelectedDescription3 = "self and target";
		}
		else if oLord2.thisLord_skillWeapon = 2
		{
			global.currentSelectedName = "Spirit Arrows";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Strikes three";
			global.currentSelectedDescription2 = "piercing MAG";
			global.currentSelectedDescription3 = "bullets";
		}
		else if oLord2.thisLord_skillWeapon = 3
		{
			global.currentSelectedName = "Eerie Slash";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Deals both";
			global.currentSelectedDescription2 = "ATK and MAG";
			global.currentSelectedDescription3 = "damage";
		}
		else if oLord2.thisLord_skillWeapon = 4
		{
			global.currentSelectedName = "Ghosts";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Deals MAG";
			global.currentSelectedDescription2 = "damage based";
			global.currentSelectedDescription3 = "on killed enemies";
		}
		else if oLord2.thisLord_skillWeapon = 5
		{
			global.currentSelectedName = "Blizzard";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Deals area MAG";
			global.currentSelectedDescription2 = "damage and can";
			global.currentSelectedDescription3 = "block next move";
		}
		else if oLord2.thisLord_skillWeapon = 6
		{
			global.currentSelectedName = "Royal Buff";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Rise all STATS";
			global.currentSelectedDescription2 = "of target for";
			global.currentSelectedDescription3 = "one single turn";
		}
		else if oLord2.thisLord_skillWeapon = 7
		{
			global.currentSelectedName = "Lazerain";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Powerful MAG";
			global.currentSelectedDescription2 = "attack strikes";
			global.currentSelectedDescription3 = "random map tiles";
		}
		else if oLord2.thisLord_skillWeapon = 8
		{
			global.currentSelectedName = "Bloodshed";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Deals ATK";
			global.currentSelectedDescription2 = "damage and";
			global.currentSelectedDescription3 = "heals back";
		}
		else if oLord2.thisLord_skillWeapon = 9
		{
			global.currentSelectedName = "Double Strike";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Can attack";
			global.currentSelectedDescription2 = "twice the";
			global.currentSelectedDescription3 = "same target";
		}
		else if oLord2.thisLord_skillWeapon = 10
		{
			global.currentSelectedName = "Berserk";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Doubles ATK";
			global.currentSelectedDescription2 = "of target but";
			global.currentSelectedDescription3 = "can't cast";
		}
		else if oLord2.thisLord_skillWeapon = 11
		{
			global.currentSelectedName = "Agility";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Rise self";
			global.currentSelectedDescription2 = "ACT based";
			global.currentSelectedDescription3 = "on MAG";
		}
		else if oLord2.thisLord_skillWeapon = 12
		{
			global.currentSelectedName = "Incense";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Heals nearby";
			global.currentSelectedDescription2 = "allies and";
			global.currentSelectedDescription3 = "removes status";
		}
		else if oLord2.thisLord_skillWeapon = 13
		{
			global.currentSelectedName = "Tower";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Rise DEF and";
			global.currentSelectedDescription2 = "MAG but can't";
			global.currentSelectedDescription3 = "move";
		}
	}
	else
	{
		if oLord2.thisLord_skillWeapon = 0
		{
			global.currentSelectedName = "Fireball";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Long range";
			global.currentSelectedDescription2 = "area spell";
			global.currentSelectedDescription3 = "using MAG";
		}
		else if oLord2.thisLord_skillWeapon = 1
		{
			global.currentSelectedName = "Hydrobolt";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Shoot a long";
			global.currentSelectedDescription2 = "range MAG";
			global.currentSelectedDescription3 = "bullet";
		}
		else if oLord2.thisLord_skillWeapon = 2
		{
			global.currentSelectedName = "Poison";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Inflict";
			global.currentSelectedDescription2 = "POISON to";
			global.currentSelectedDescription3 = "target";
		}
		else if oLord2.thisLord_skillWeapon = 3
		{
			global.currentSelectedName = "Soul Syphon";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "MAG attack";
			global.currentSelectedDescription2 = "kills grant";
			global.currentSelectedDescription3 = "a precious relic";
		}
		else if oLord2.thisLord_skillWeapon = 4
		{
			global.currentSelectedName = "Slay";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Double damage";
			global.currentSelectedDescription2 = "if enemy has";
			global.currentSelectedDescription3 = "full health";
		}
		else if oLord2.thisLord_skillWeapon = 5
		{
			global.currentSelectedName = "Quake";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Deals MAG";
			global.currentSelectedDescription2 = "damage to all";
			global.currentSelectedDescription3 = "the nearby";
		}
		else if oLord2.thisLord_skillWeapon = 6
		{
			global.currentSelectedName = "Revenge";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Higher damage";
			global.currentSelectedDescription2 = "if Lord LIF";
			global.currentSelectedDescription3 = "is low";
		}
		else if oLord2.thisLord_skillWeapon = 7
		{
			global.currentSelectedName = "Blade Whirl";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Deals ATK damage";
			global.currentSelectedDescription2 = "Around the Lord";
			global.currentSelectedDescription3 = "";
		}
		else if oLord2.thisLord_skillWeapon = 8
		{
			global.currentSelectedName = "Close Shot";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Shoots an arrow";
			global.currentSelectedDescription2 = "at close range";
			global.currentSelectedDescription3 = "using ATK stat";
		}
		else if oLord2.thisLord_skillWeapon = 9
		{
			global.currentSelectedName = "Bash";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Close attack";
			global.currentSelectedDescription2 = "that can push";
			global.currentSelectedDescription3 = "enemy away";
		}
		else if oLord2.thisLord_skillWeapon = 10
		{
			global.currentSelectedName = "Moon Blast";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Wide attack";
			global.currentSelectedDescription2 = "that uses";
			global.currentSelectedDescription3 = "MAG stat";
		}
		else if oLord2.thisLord_skillWeapon = 11
		{
			global.currentSelectedName = "Heal Song";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Heals all";
			global.currentSelectedDescription2 = "lords by a";
			global.currentSelectedDescription3 = "small amount";
		}
		else if oLord2.thisLord_skillWeapon = 12
		{
			global.currentSelectedName = "Magic Missile";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Shoots a long";
			global.currentSelectedDescription2 = "piercing MAG";
			global.currentSelectedDescription3 = "bullet";
		}
		else if oLord2.thisLord_skillWeapon = 13
		{
			global.currentSelectedName = "Drain Slash";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Hit nearby";
			global.currentSelectedDescription2 = "enemies and";
			global.currentSelectedDescription3 = "steal LIF";
		}
		else if oLord2.thisLord_skillWeapon = 14
		{
			global.currentSelectedName = "Storm";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Randomly hits";
			global.currentSelectedDescription2 = "all enemies";
			global.currentSelectedDescription3 = "at once";
		}
		else if oLord2.thisLord_skillWeapon = 15
		{
			global.currentSelectedName = "Swap";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Swaps position";
			global.currentSelectedDescription2 = "of two targets";
			global.currentSelectedDescription3 = "";
		}
		else if oLord2.thisLord_skillWeapon = 16
		{
			global.currentSelectedName = "Scout";
			global.currentSelectedSprite = sprite_index;
			global.currentSelectedImageIndex = image_index;
			global.currentSelectedDescription1 = "Partially";
			global.currentSelectedDescription2 = "reveals the";
			global.currentSelectedDescription3 = "map";
		}
	}
}