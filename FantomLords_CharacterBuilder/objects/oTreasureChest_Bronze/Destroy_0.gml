/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x,y,"Instances",choose(oCollectible_StatGem,oCollectible_Potion,oCollectible_GoldS,oCollectible_KeyBronze));

if isSelected
{
	global.currentSelectedName = "none";
	global.currentSelectedSprite = "none";
	global.currentSelectedImageIndex = 0;
	global.currentSelectedLIF = 0;
	global.currentSelectedLIFmax = 0;
	global.currentSelectedATK = 0;
	global.currentSelectedDEF = 0;
	global.currentSelectedMAG = 0;
}