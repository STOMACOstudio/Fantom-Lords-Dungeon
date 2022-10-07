/// @description Insert description here
// You can write your code in this editor

if global.classArmor < global.classArmorMax global.classArmor ++;
else global.classArmor = 0;

image_blend = c_yellow;
audio_play_sound(snClick,0,false);