/// @description Insert description here
// You can write your code in this editor

global.scoreAdd = string(scoreAdd);
score += scoreAdd;

instance_create_layer(oGUI_score.x+112,oGUI_score.y,"Instances",oGUI_printScoreAdd);

var collect = irandom_range(0,10);
if collect == 10 instance_create_layer(x,y,"Instances",choose(oCollectible_StatGem,oCollectible_Potion,oCollectible_GoldS,oCollectible_KeyBronze));

if isSelected
{
	scrEnemyResetVars();
}

if revealed global.revealdEnemies --;

check_fight_end();