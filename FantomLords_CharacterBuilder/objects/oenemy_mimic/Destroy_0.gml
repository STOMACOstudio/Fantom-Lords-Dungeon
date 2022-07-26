/// @description Insert description here
// You can write your code in this editor

global.scoreAdd = string(scoreAdd);
score += scoreAdd;

instance_create_layer(oGUI_score.x+112,oGUI_score.y,"Instances",oGUI_printScoreAdd);
instance_create_layer(x,y,"Instances",oCollectible_GoldS,value);

if isSelected
{
	global.currentSelectedName = "none";
	global.currentSelectedSprite = "none";
	global.currentSelectedLIF = 0;
	global.currentSelectedLIFmax = 0;
	global.currentSelectedATK = 0;
	global.currentSelectedDEF = 0;
	global.currentSelectedMAG = 0;
	global.currentSelectedStatus = "none";
	global.currentSelectedColor = c_white;
}

if revealed global.revealdEnemies --;
