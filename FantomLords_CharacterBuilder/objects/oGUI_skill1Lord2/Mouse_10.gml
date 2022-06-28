/// @description Insert description here
// You can write your code in this editor

if oLord2.thisLord_typeAttack == "MELEE"
{
	global.currentSelectedName = "Melee Attack";
	global.currentSelectedSprite = sprite_index;
	global.currentSelectedImageIndex = image_index;
	global.currentSelectedDescription1 = "Attack closer";
	global.currentSelectedDescription2 = "enemy with";
	global.currentSelectedDescription3 = "ATK stat";
}
else if oLord2.thisLord_typeAttack == "MAGIC"
{
	global.currentSelectedName = "Magic Attack";
	global.currentSelectedSprite = sprite_index;
	global.currentSelectedImageIndex = image_index;
	global.currentSelectedDescription1 = "Attack enemy";
	global.currentSelectedDescription2 = "around with";
	global.currentSelectedDescription3 = "MAG stat";
}
else if oLord2.thisLord_typeAttack == "RANGED"
{
	global.currentSelectedName = "Ranged Attack";
	global.currentSelectedSprite = sprite_index;
	global.currentSelectedImageIndex = image_index;
	global.currentSelectedDescription1 = "Attack farther";
	global.currentSelectedDescription2 = "enemy with";
	global.currentSelectedDescription3 = "ATK stat";
}