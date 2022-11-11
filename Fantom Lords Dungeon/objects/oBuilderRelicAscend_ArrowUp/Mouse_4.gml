/// @description Insert description here
// You can write your code in this editor

if global.relic < global.relicMAX global.relic ++;
else global.relic = 0;

image_blend = c_yellow;
audio_play_sound(snClick,0,false);