/// @description Insert description here
// You can write your code in this editor

oManagerCombat.combatPhase = 0;
global.roomType = "Prison";

global.killedEnemies ++;
global.bestiarySkeletonKingKilled ++;

audio_stop_sound(sn2_BossBattle1Loop);

global.scoreAdd = string(scoreAdd);
score += scoreAdd;

var struct = { revealed : true };

with (oEnemy_Skeleton) { instance_destroy(); }
instance_create_layer(x,y,"VFX",oVFX_BossDeath);
instance_create_layer(oGUI_score.x+112,oGUI_score.y,"Instances",oGUI_printScoreAdd);
instance_create_layer(x,y,"Instances",oDoor,struct);

if isSelected
{
	scrEnemyResetVars();
}

global.bossBattle ++;