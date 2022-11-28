/// @description Insert description here
// You can write your code in this editor

dmg = global.dmgLORD;

image_alpha = 0.7;

targetLord = collision_point(x,y,oLord0Parent,false,true);
targetEnemy = collision_point(x,y,oEnemy0_Father,false,true);

done = false;

global.hasControl = false;

alarm[0] = 100;