/// @description Insert description here
// You can write your code in this editor

if isSelected && revealed && collision_point(x,y,oEnemy0_Father,false,true) = noone
{
	global.currentSelectedSprite = sprite_index;
	global.currentSelectedImageIndex = image_index;
	global.currentSelectedName = thisName;
	global.currentSelectedDescription1 = "Drop a";
	global.currentSelectedDescription2 = "bronze key";
	global.currentSelectedDescription3 = "to open";
}

var tile = collision_point(x,y,oMap_blocktile,false,true);

if tile.stepped
{
	image_alpha = 1;
	revealed = true;
}
else
{
	image_alpha = 0;
	revealed = true;
}
