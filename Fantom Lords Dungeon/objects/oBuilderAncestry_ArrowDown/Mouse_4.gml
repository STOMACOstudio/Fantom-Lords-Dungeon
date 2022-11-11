/// @description Insert description here
// You can write your code in this editor

if global.ancestry > 0 global.ancestry --;
else global.ancestry = global.ancestryMAX;

image_blend = c_yellow;
audio_play_sound(snClick,0,false);