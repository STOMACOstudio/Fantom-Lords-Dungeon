/// @description Insert description here
// You can write your code in this editor

audio_play_sound(sn_SKILL_LifeBreath,0,false);

dmg = global.dmgLORD;

targetLord = collision_point(x+32,y+32,oLord0Parent,false,true);

done = false;

global.hasControl = false;