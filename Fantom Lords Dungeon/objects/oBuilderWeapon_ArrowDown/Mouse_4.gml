/// @description Insert description here
// You can write your code in this editor

if global.weapon > 0 global.weapon --;
else global.weapon = global.weaponMAX;

image_blend = c_yellow;
audio_play_sound(snClick,0,false);