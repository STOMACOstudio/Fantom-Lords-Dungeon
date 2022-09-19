/// @description Insert description here
// You can write your code in this editor

audio_play_sound(sn_SKILL_Missile_shot,0,false);

move_towards_point(xDir,yDir,6);

image_angle = direction;

done = false;

global.hasControl = false;

makeImpact = true;