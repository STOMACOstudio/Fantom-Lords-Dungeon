/// @description Insert description here
// You can write your code in this editor

global.scoreAdd = string(scoreAdd);
score += scoreAdd;

global.killedEnemies ++;

var struct =
{
	colorStart : c_green,
	colorEnd : c_red,
	flanMaking : oEnemy_BossEye2
}
instance_create_layer(oGUI_score.x+112,oGUI_score.y,"Instances",oGUI_printScoreAdd);
instance_create_layer(x,y,"Instances",oEnemy_BossEyeDeath,struct);

if isSelected
{
	scrEnemyResetVars();
}

check_fight_end();