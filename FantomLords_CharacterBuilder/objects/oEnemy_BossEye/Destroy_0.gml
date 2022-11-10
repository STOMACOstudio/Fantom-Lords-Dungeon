/// @description Insert description here
// You can write your code in this editor

oManagerCombat.combatPhase = 0;

global.scoreAdd = string(scoreAdd);
score += scoreAdd;

instance_create_layer(oGUI_score.x+112,oGUI_score.y,"Instances",oGUI_printScoreAdd);
instance_create_layer(x,y,"Instances",oEnemy_BossEye2);

if isSelected
{
	scrEnemyResetVars();
}

global.bossBattle ++;