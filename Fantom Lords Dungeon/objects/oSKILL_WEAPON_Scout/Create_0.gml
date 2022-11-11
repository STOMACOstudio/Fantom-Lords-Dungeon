/// @description Insert description here
// You can write your code in this editor

audio_play_sound(sn_SKILL_Scout,0,false);

move_towards_point(xDir,yDir,4);

done = false;

global.hasControl = false;

alarm[0] = 500;

lastX = 0;
lastY = 0;

thisLord_LIF = 0;