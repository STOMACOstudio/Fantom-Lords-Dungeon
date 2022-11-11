/// @description Insert description here
// You can write your code in this editor

audio_play_sound(sn_SKILL_DrainSlash,0,false);

dmg = global.dmgLORD;
heal = 0;

target0enemy = collision_point(x,y,oEnemy0_Father,false,true);

done = false;

global.hasControl = false;