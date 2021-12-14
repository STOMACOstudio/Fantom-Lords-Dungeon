/// @description Insert description here
// You can write your code in this editor

if oBuilderClassArmor.classArmor < oBuilderClassArmor.classArmorMax oBuilderClassArmor.classArmor ++;
else oBuilderClassArmor.classArmor = 0;

image_blend = c_yellow;
audio_play_sound(snClick,0,false);