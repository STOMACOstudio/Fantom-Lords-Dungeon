/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord2active && instance_exists(oLord2)
{
	if oLord2.thisLord_typeAttack == "MELEE"
	{
		global.currentStatusColor = c_grey;
		global.currentSelectedStatus = "Attack";
		global.currentSelectedName = "Melee";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Attack closer";
		global.currentSelectedDescription2 = "enemy with";
		global.currentSelectedDescription3 = "ATK stat";
	}
	else if oLord2.thisLord_typeAttack == "MAGIC"
	{
		global.currentStatusColor = c_blue;
		global.currentSelectedStatus = "Attack";
		global.currentSelectedName = "Magic";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Attack enemy";
		global.currentSelectedDescription2 = "around with";
		global.currentSelectedDescription3 = "MAG stat";
	}
	else if oLord2.thisLord_typeAttack == "RANGED"
	{
		global.currentStatusColor = c_grey;
		global.currentSelectedStatus = "Attack";
		global.currentSelectedName = "Ranged";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Attack farther";
		global.currentSelectedDescription2 = "enemy with";
		global.currentSelectedDescription3 = "ATK stat";
	}
}