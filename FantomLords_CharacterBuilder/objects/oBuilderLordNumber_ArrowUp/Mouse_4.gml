/// @description Insert description here
// You can write your code in this editor

if global.lordNumber < global.lordNumberMAX global.lordNumber ++;
else global.lordNumber = 1;

scrLordGenerator();

image_blend = c_yellow;
audio_play_sound(snClick,0,false);