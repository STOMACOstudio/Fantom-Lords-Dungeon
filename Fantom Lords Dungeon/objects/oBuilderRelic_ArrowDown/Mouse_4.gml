/// @description Insert description here
// You can write your code in this editor

if global.relic > 0 global.relic --;
else global.relic = global.relicMAX;

image_blend = c_yellow;
audio_play_sound(snClick,0,false);