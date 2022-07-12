/// @description Insert description here
// You can write your code in this editor

if oLord1.thisLord_skillWeapon = 0
{
	global.currentSelectedName = "Fireball";
	global.currentSelectedSprite = sprite_index;
	global.currentSelectedImageIndex = image_index;
	global.currentSelectedDescription1 = "Long range";
	global.currentSelectedDescription2 = "area spell";
	global.currentSelectedDescription3 = "using MAG";
}
else if oLord1.thisLord_skillWeapon = 3
{
	global.currentSelectedName = "Soul Syphon";
	global.currentSelectedSprite = sprite_index;
	global.currentSelectedImageIndex = image_index;
	global.currentSelectedDescription1 = "MAG attack";
	global.currentSelectedDescription2 = "if kills enemy";
	global.currentSelectedDescription3 = "gives gemstone";
}
else if oLord1.thisLord_skillWeapon = 8
{
	global.currentSelectedName = "Close Shot";
	global.currentSelectedSprite = sprite_index;
	global.currentSelectedImageIndex = image_index;
	global.currentSelectedDescription1 = "Shoots an arrow";
	global.currentSelectedDescription2 = "at close range";
	global.currentSelectedDescription3 = "using ATK stat";
}
else if oLord1.thisLord_skillWeapon = 9
{
	global.currentSelectedName = "Bash";
	global.currentSelectedSprite = sprite_index;
	global.currentSelectedImageIndex = image_index;
	global.currentSelectedDescription1 = "Close attack";
	global.currentSelectedDescription2 = "that can push";
	global.currentSelectedDescription3 = "enemy away";
}
else if oLord1.thisLord_skillWeapon = 10
{
	global.currentSelectedName = "Moon Blast";
	global.currentSelectedSprite = sprite_index;
	global.currentSelectedImageIndex = image_index;
	global.currentSelectedDescription1 = "Wide attack";
	global.currentSelectedDescription2 = "that uses";
	global.currentSelectedDescription3 = "MAG stat";
}
else if oLord1.thisLord_skillWeapon = 13
{
	global.currentSelectedName = "Drain Slash";
	global.currentSelectedSprite = sprite_index;
	global.currentSelectedImageIndex = image_index;
	global.currentSelectedDescription1 = "Hit close";
	global.currentSelectedDescription2 = "enemy and";
	global.currentSelectedDescription3 = "steals LIF";
}