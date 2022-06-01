/// @description Insert description here
// You can write your code in this editor

if revealed image_alpha = 1;
else image_alpha = 0;

if isSelected && revealed
{
	global.currentSelectedName = thisName;
	global.currentSelectedSprite = sprite_index;
	global.currentSelectedImageIndex = image_index;
	global.currentSelectedLIF = thisLIF;
	global.currentSelectedLIFmax = thisLIFmax;
	global.currentSelectedATK = thisATK;
	global.currentSelectedDEF = thisDEF;
	global.currentSelectedMAG = thisMAG;
	global.currentSelectedDescription1 = "This thing";
	global.currentSelectedDescription2 = "is blocking";
	global.currentSelectedDescription3 = "the way!";
}

if isFighting && !turnComplete
{
	turnCompelete = true;
	isFighting = false;
	oManagerCombat.combatPhase = 1;
}