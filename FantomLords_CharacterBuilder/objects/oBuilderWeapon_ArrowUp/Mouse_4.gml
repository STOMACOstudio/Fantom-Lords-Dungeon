/// @description Insert description here
// You can write your code in this editor

if global.weapon < global.weaponMAX global.weapon ++;
else global.weapon = 0;

image_blend = c_yellow;
audio_play_sound(snClick,0,false);