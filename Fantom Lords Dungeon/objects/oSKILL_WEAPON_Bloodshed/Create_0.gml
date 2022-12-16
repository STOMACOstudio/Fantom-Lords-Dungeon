/// @description Insert description here
// You can write your code in this editor

audio_play_sound(sn_SKILL_Bloodshed,0,false);

dmg = global.dmgLORD;

target1enemy = collision_point(x-64,y-64,oEnemy0_Father,false,true);
target1lord = collision_point(x-64,y-64,oLord0Parent,false,true);
target2enemy = collision_point(x,y-64,oEnemy0_Father,false,true);
target2lord = collision_point(x,y-64,oLord0Parent,false,true);
target3enemy = collision_point(x+64,y-64,oEnemy0_Father,false,true);
target3lord = collision_point(x+64,y-64,oLord0Parent,false,true);
target4enemy = collision_point(x+64,y,oEnemy0_Father,false,true);
target4lord = collision_point(x+64,y,oLord0Parent,false,true);
target5enemy = collision_point(x+64,y+64,oEnemy0_Father,false,true);
target5lord = collision_point(x+64,y+64,oLord0Parent,false,true);
target6enemy = collision_point(x,y+64,oEnemy0_Father,false,true);
target6lord = collision_point(x,y+64,oLord0Parent,false,true);
target7enemy = collision_point(x-64,y+64,oEnemy0_Father,false,true);
target7lord = collision_point(x-64,y+64,oLord0Parent,false,true);
target8enemy = collision_point(x-64,y,oEnemy0_Father,false,true);
target8lord = collision_point(x-64,y,oLord0Parent,false,true);

done = false;

global.hasControl = false;

alarm[0] = 100;