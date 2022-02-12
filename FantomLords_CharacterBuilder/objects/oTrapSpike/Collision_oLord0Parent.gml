/// @description Insert description here
// You can write your code in this editor

if !damage
{
	image_alpha = 1;
	image_speed = 4;
}

if image_index = 8 && !damage
{
	other.thisLord_LIF -= round((other.thisLord_LIF)/2);
	damage = true;
}