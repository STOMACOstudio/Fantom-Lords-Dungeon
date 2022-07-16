/// @description Insert description here
// You can write your code in this editor

oManagerCombat.combatPhase = 0;

audio_stop_sound(sn2_BossBattle1Loop);
audio_play_sound(sn2_BossBattle1Victory,0,false);

global.scoreAdd = string(scoreAdd);
score += scoreAdd;

instance_create_layer(oGUI_score.x+112,oGUI_score.y,"Instances",oGUI_printScoreAdd);
instance_create_layer(x,y,"Instances",oDoor);
instance_create_layer(x+64,y,"Instances",choose(oCollectible_StatGem,oCollectible_PotionACT,oCollectible_Potion,oCollectible_GoldS,oCollectible_KeyBronze));
instance_create_layer(x,y+64,"Instances",choose(oCollectible_StatGem,oCollectible_PotionACT,oCollectible_Potion,oCollectible_GoldS,oCollectible_KeyBronze));
instance_create_layer(x+64,y+64,"Instances",choose(oCollectible_StatGem,oCollectible_PotionACT,oCollectible_Potion,oCollectible_GoldS,oCollectible_KeyBronze));

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

global.bossBattle ++;