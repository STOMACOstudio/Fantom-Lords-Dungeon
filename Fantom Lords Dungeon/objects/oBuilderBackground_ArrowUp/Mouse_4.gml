/// @description Insert description here
// You can write your code in this editor

if global.background < global.backgroundMAX global.background ++;
else global.background = 0;

image_blend = c_yellow;
audio_play_sound(snClick,0,false);