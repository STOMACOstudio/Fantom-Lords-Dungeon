/// @description Insert description here
// You can write your code in this editor

if global.background > 0 global.background --;
else global.background = global.backgroundMAX;

image_blend = c_yellow;
audio_play_sound(snClick,0,false);