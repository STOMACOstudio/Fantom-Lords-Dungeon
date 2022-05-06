/// @description Insert description here
// You can write your code in this editor

if isSelected && revealed
{
	global.currentSelectedSprite = sprite_index;
	global.currentSelectedImageIndex = image_index;
	global.currentSelectedName = thisName;
	if gemChoice = sCollect_GemLIF
	{
		global.currentSelectedDescription1 = "Dragoness egg,";
		global.currentSelectedDescription2 = "it increases the";
		global.currentSelectedDescription3 = "Lord's LIF";
	}
	if gemChoice = sCollect_GemATK
	{
		global.currentSelectedDescription1 = "Broken sword,";
		global.currentSelectedDescription2 = "it increases the";
		global.currentSelectedDescription3 = "Lord's ATK";
	}
	if gemChoice = sCollect_GemDEF
	{
		global.currentSelectedDescription1 = "Blessed shield,";
		global.currentSelectedDescription2 = "it increases the";
		global.currentSelectedDescription3 = "Lord's DEF";
	}
	if gemChoice = sCollect_GemMAG
	{
		global.currentSelectedDescription1 = "Ancient scroll,";
		global.currentSelectedDescription2 = "it increases the";
		global.currentSelectedDescription3 = "Lord's MAG";
	}
	if gemChoice = sCollect_GemACT
	{
		global.currentSelectedDescription1 = "Gilded sextant,";
		global.currentSelectedDescription2 = "it increases the";
		global.currentSelectedDescription3 = "Lord's ACT";
	}
	if gemChoice = sCollect_GemRNB
	{
		global.currentSelectedDescription1 = "Precious stone,";
		global.currentSelectedDescription2 = "it increases all";
		global.currentSelectedDescription3 = "Lord's STATS";
	}
}