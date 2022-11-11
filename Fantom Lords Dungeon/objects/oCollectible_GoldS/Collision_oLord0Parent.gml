/// @description Insert description here
// You can write your code in this editor

score += value;
global.scoreAdd = value;
instance_create_layer(oGUI_score.x+112,oGUI_score.y,"Instances",oGUI_printScoreAdd);
instance_create_layer(other.x,other.y,"Instances",oVFX_powerUpGoldCollect);

audio_play_sound(snCollectGold,0,false);
instance_destroy();