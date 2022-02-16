/// @description Insert description here
// You can write your code in this editor

if isSelected && revealed
{
	global.currentSelectedName = thisName;
	global.currentSelectedSprite = sprite_index;
	global.currentSelectedLIF = thisLIF;
	global.currentSelectedLIFmax = thisLIFmax;
	global.currentSelectedATK = thisATK;
	global.currentSelectedDEF = thisDEF;
	global.currentSelectedMAG = thisMAG;
}

if isFighting && !turnComplete
{
	oManagerCombat.fightStart ++;
	alarm[0] = 100;
	isFighting = false;
}