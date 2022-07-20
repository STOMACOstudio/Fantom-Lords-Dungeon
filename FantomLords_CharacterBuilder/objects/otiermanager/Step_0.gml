/// @description Insert description here
// You can write your code in this editor

if global.fantom
{
	if global.ancestry oTierMain.image_index = 6;
	else if global.armor oTierMain.image_index = 7;
	else if global.BG oTierMain.image_index = 8;
	else if global.headgear oTierMain.image_index = 9;
	else if global.relic oTierMain.image_index = 10;
	else if global.weapon oTierMain.image_index = 11;
}
else if global.ascended
{
	if global.ancestry oTierMain.image_index = 0;
	else if global.armor oTierMain.image_index = 1;
	else if global.BG oTierMain.image_index = 2;
	else if global.headgear oTierMain.image_index = 3;
	else if global.relic oTierMain.image_index = 4;
	else if global.weapon oTierMain.image_index = 5;
}