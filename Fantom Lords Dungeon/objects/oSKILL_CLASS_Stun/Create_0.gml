/// @description Insert description here
// You can write your code in this editor

land = choose(true,false);

audio_play_sound(sn_SKILL_Stun,0,false);

dmg = global.dmgLORD;

target0enemy = collision_point(x,y,oEnemy0_Father,false,true);

done = false;

global.hasControl = false;