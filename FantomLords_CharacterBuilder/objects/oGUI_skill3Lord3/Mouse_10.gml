/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord3active && instance_exists(oLord3)
{
	global.currentStatusColor = c_white;
	global.currentSelectedStatus = "Weapon Skill";
	
	if oLord3.thisLord_skillWeapon = 0
	{
		global.currentSelectedName = "Fireball";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Long range";
		global.currentSelectedDescription2 = "area spell";
		global.currentSelectedDescription3 = "using MAG";
	}
	else if oLord3.thisLord_skillWeapon = 1
	{
		global.currentSelectedName = "Hydrobolt";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Shoot a long";
		global.currentSelectedDescription2 = "range MAG";
		global.currentSelectedDescription3 = "bullet";
	}
	else if oLord3.thisLord_skillWeapon = 2
	{
		global.currentSelectedName = "Poison";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Inflict";
		global.currentSelectedDescription2 = "POISON to";
		global.currentSelectedDescription3 = "target";
	}
	else if oLord3.thisLord_skillWeapon = 3
	{
		global.currentSelectedName = "Soul Syphon";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "MAG attack";
		global.currentSelectedDescription2 = "kills grant";
		global.currentSelectedDescription3 = "a precious relic";
	}
	else if oLord3.thisLord_skillWeapon = 4
	{
		global.currentSelectedName = "Slay";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Double damage";
		global.currentSelectedDescription2 = "if enemy has";
		global.currentSelectedDescription3 = "full health";
	}
	else if oLord3.thisLord_skillWeapon = 5
	{
		global.currentSelectedName = "Quake";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Deals MAG";
		global.currentSelectedDescription2 = "damage to all";
		global.currentSelectedDescription3 = "the nearby";
	}
	else if oLord3.thisLord_skillWeapon = 6
	{
		global.currentSelectedName = "Revenge";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Higher damage";
		global.currentSelectedDescription2 = "if Lord LIF";
		global.currentSelectedDescription3 = "is low";
	}
	else if oLord3.thisLord_skillWeapon = 7
	{
		global.currentSelectedName = "Blade Whirl";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Deals ATK damage";
		global.currentSelectedDescription2 = "Around the Lord";
		global.currentSelectedDescription3 = "";
	}
	else if oLord3.thisLord_skillWeapon = 8
	{
		global.currentSelectedName = "Close Shot";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Shoots an arrow";
		global.currentSelectedDescription2 = "at close range";
		global.currentSelectedDescription3 = "using ATK stat";
	}
	else if oLord3.thisLord_skillWeapon = 9
	{
		global.currentSelectedName = "Bash";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Close attack";
		global.currentSelectedDescription2 = "that can push";
		global.currentSelectedDescription3 = "enemy away";
	}
	else if oLord3.thisLord_skillWeapon = 10
	{
		global.currentSelectedName = "Moon Blast";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Wide attack";
		global.currentSelectedDescription2 = "that uses";
		global.currentSelectedDescription3 = "MAG stat";
	}
	else if oLord3.thisLord_skillWeapon = 11
	{
		global.currentSelectedName = "Heal Song";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Heals all";
		global.currentSelectedDescription2 = "lords by a";
		global.currentSelectedDescription3 = "small amount";
	}
	else if oLord3.thisLord_skillWeapon = 12
	{
		global.currentSelectedName = "Magic Missile";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Shoots a long";
		global.currentSelectedDescription2 = "piercing MAG";
		global.currentSelectedDescription3 = "bullet";
	}
	else if oLord3.thisLord_skillWeapon = 13
	{
		global.currentSelectedName = "Drain Slash";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Hit nearby";
		global.currentSelectedDescription2 = "enemies and";
		global.currentSelectedDescription3 = "steal LIF";
	}
	else if oLord1.thisLord_skillWeapon = 14
	{
		global.currentSelectedName = "Storm";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Randomly hits";
		global.currentSelectedDescription2 = "all enemies";
		global.currentSelectedDescription3 = "at once";
	}
	else if oLord3.thisLord_skillWeapon = 15
	{
		global.currentSelectedName = "Swap";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Swaps position";
		global.currentSelectedDescription2 = "of two targets";
		global.currentSelectedDescription3 = "";
	}
	else if oLord3.thisLord_skillWeapon = 16
	{
		global.currentSelectedName = "Scout";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Partially";
		global.currentSelectedDescription2 = "reveals the";
		global.currentSelectedDescription3 = "map";
	}
}