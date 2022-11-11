/// @description Insert description here
// You can write your code in this editor

audio_play_sound(sn2_BossBattle1Victory,0,false);
instance_create_layer(x+64,y,"Instances",choose(oCollectible_StatGem,oCollectible_PotionACT,oCollectible_Potion,oCollectible_GoldS,oCollectible_KeyBronze));
instance_create_layer(x,y+64,"Instances",choose(oCollectible_StatGem,oCollectible_PotionACT,oCollectible_Potion,oCollectible_GoldS,oCollectible_KeyBronze));
instance_create_layer(x+64,y+64,"Instances",choose(oCollectible_StatGem,oCollectible_PotionACT,oCollectible_Potion,oCollectible_GoldS,oCollectible_KeyBronze));
global.hasControl = true;