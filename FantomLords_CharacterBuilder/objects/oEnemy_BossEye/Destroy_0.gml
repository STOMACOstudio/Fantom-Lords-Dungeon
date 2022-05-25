/// @description Insert description here
// You can write your code in this editor

oManagerCombat.combatPhase = 0;

global.scoreAdd = string(scoreAdd);
score += scoreAdd;

instance_create_layer(oGUI_score.x+112,oGUI_score.y,"Instances",oGUI_printScoreAdd);
instance_create_layer(x,y,"Instances",oEnemy_BossEyeManager);
instance_create_layer(x,y,"Instances",oEnemy_Eye);
instance_create_layer(x+64,y,"Instances",oEnemy_Eye);
instance_create_layer(x,y+64,"Instances",oEnemy_Eye);
instance_create_layer(x+64,y+64,"Instances",oEnemy_Eye);

if isSelected
{
	global.currentSelectedName = "none";
	global.currentSelectedSprite = "none";
	global.currentSelectedLIF = 0;
	global.currentSelectedLIFmax = 0;
	global.currentSelectedATK = 0;
	global.currentSelectedDEF = 0;
	global.currentSelectedMAG = 0;
}

global.bossBattle ++;