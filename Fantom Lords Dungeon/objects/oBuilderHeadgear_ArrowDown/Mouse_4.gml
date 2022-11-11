/// @description Insert description here
// You can write your code in this editor

if global.headgear > 0 global.headgear --;
else global.headgear = global.headgearMAX;

image_blend = c_yellow;
audio_play_sound(snClick,0,false);