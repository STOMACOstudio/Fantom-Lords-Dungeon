/// @description Insert description here
// You can write your code in this editor

audio_play_sound(sn_SKILL_Berserk,0,false);

targetLord = collision_point(x,y,oLord0Parent,false,true);
targetEnemy = collision_point(x,y,oEnemy0_Father,false,true);

done = false;

global.hasControl = false;