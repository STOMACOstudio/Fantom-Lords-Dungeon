/// @description Insert description here
// You can write your code in this editor

audio_play_sound(sn_SKILL_Sunbathe,0,false);

dmg = global.dmgLORD;

targetLord = collision_point(x+32,y+32,oLord0Parent,false,true);

done = false;

image_alpha = 0.8;

global.hasControl = false;