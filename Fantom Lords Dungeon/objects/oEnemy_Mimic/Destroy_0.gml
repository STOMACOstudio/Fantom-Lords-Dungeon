/// @description Insert description here
// You can write your code in this editor

global.scoreAdd = string(scoreAdd);
score += scoreAdd;

global.killedEnemies ++;
global.bestiaryMimicKilled ++;

instance_create_layer(oGUI_score.x+112,oGUI_score.y,"Instances",oGUI_printScoreAdd);
instance_create_layer(x,y,"Instances",oCollectible_GoldS,value);

if isSelected
{
	scrEnemyResetVars();
}

if revealed global.revealdEnemies --;