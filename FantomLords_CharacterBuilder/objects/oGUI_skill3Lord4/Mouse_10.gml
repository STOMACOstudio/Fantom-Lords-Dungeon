/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord4active && instance_exists(oLord4)
{
	global.currentStatusColor = c_white;
	global.currentSelectedStatus = "Weapon Skill";
	
	if oLord4.thisLord_skillWeapon = 0
	{
		global.currentSelectedName = "Fireball";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Long range";
		global.currentSelectedDescription2 = "area spell";
		global.currentSelectedDescription3 = "using MAG";
	}
	else if oLord4.thisLord_skillWeapon = 2
	{
		global.currentSelectedName = "Poison";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Inflict";
		global.currentSelectedDescription2 = "POISON to";
		global.currentSelectedDescription3 = "target";
	}
	else if oLord4.thisLord_skillWeapon = 3
	{
		global.currentSelectedName = "Soul Syphon";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "MAG attack";
		global.currentSelectedDescription2 = "if kills enemy";
		global.currentSelectedDescription3 = "gives gemstone";
	}
	else if oLord4.thisLord_skillWeapon = 4
	{
		global.currentSelectedName = "Slay";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Double damage";
		global.currentSelectedDescription2 = "if enemy has";
		global.currentSelectedDescription3 = "full health";
	}
	else if oLord4.thisLord_skillWeapon = 6
	{
		global.currentSelectedName = "Revenge";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Higher damage";
		global.currentSelectedDescription2 = "if Lord LIF";
		global.currentSelectedDescription3 = "is low";
	}
	else if oLord4.thisLord_skillWeapon = 7
	{
		global.currentSelectedName = "Blade Whirl";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Deals damage";
		global.currentSelectedDescription2 = "at everyone";
		global.currentSelectedDescription3 = "around";
	}
	else if oLord4.thisLord_skillWeapon = 8
	{
		global.currentSelectedName = "Close Shot";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Shoots an arrow";
		global.currentSelectedDescription2 = "at close range";
		global.currentSelectedDescription3 = "using ATK stat";
	}
	else if oLord4.thisLord_skillWeapon = 9
	{
		global.currentSelectedName = "Bash";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Close attack";
		global.currentSelectedDescription2 = "that can push";
		global.currentSelectedDescription3 = "enemy away";
	}
	else if oLord4.thisLord_skillWeapon = 10
	{
		global.currentSelectedName = "Moon Blast";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Wide attack";
		global.currentSelectedDescription2 = "that uses";
		global.currentSelectedDescription3 = "MAG stat";
	}
	else if oLord4.thisLord_skillWeapon = 11
	{
		global.currentSelectedName = "Heal Song";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Heals all";
		global.currentSelectedDescription2 = "lords by a";
		global.currentSelectedDescription3 = "small amount";
	}
	else if oLord4.thisLord_skillWeapon = 13
	{
		global.currentSelectedName = "Drain Slash";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Hit close";
		global.currentSelectedDescription2 = "enemy and";
		global.currentSelectedDescription3 = "steals LIF";
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
}