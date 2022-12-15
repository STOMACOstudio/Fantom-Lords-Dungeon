/// @description Insert description here
// You can write your code in this editor

global.scoreAdd = string(scoreAdd);
score += scoreAdd;

global.killedEnemies ++;

instance_create_layer(oGUI_score.x+112,oGUI_score.y,"Instances",oGUI_printScoreAdd);
instance_create_layer(x,y,"Instances",choose(oCollectible_StatGem,oCollectible_PotionACT,oCollectible_Potion,oCollectible_GoldS,oCollectible_KeyBronze));

if isSelected
{
	scrEnemyResetVars();
}

if revealed global.revealdEnemies --;
