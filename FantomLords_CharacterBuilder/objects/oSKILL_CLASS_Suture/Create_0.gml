/// @description Insert description here
// You can write your code in this editor

audio_play_sound(sn_SKILL_Suture,0,false);

dmg = global.dmgLORD;

targetLord = collision_point(x,y,oLord0Parent,false,true);

done = false;

global.hasControl = false;