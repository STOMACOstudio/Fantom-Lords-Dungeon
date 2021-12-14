/// @description Insert description here
// You can write your code in this editor

oBuilderClassArmor.classArmor = irandom_range(0,oBuilderClassArmor.classArmorMax);
global.ancestry = irandom_range(0,global.ancestryMAX);
global.weapon = irandom_range(0,global.weaponMAX);
global.headgear = irandom_range(0,global.headgearMAX);
global.relic = irandom_range(0,global.relicMAX);
global.background = irandom_range(0,global.backgroundMAX);

image_blend = c_yellow;
audio_play_sound(snRandomize,0,false);