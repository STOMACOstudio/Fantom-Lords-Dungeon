/// @description Insert description here
// You can write your code in this editor

if !global.isLocked
{
	image_blend = c_yellow;
	global.currentSprite = sprite_index;
	global.currentName = thisLord_name;
	global.currentHealthMAX = thisLord_LIFmax;
	global.currentHealth = thisLord_LIF;
	global.currentATK = thisLord_ATK;
	global.currentDEF = thisLord_DEF;
	global.currentMAG = thisLord_MAG;
	global.currentACT = thisLord_ACT;
}