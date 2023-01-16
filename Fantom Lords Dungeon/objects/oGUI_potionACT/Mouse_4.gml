/// @description Insert description here
// You can write your code in this editor

audio_play_sound(snPotionPop,0,false);
global.potionACT --;
instance_create_layer(mouse_x,mouse_y,"VFX",oGUI_potionACTdrop);