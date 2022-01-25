/// @description Insert description here
// You can write your code in this editor

other.thisLord_LIF += round(other.thisLord_LIFmax/3);
if other.thisLord_LIF > other.thisLord_LIFmax other.thisLord_LIF = other.thisLord_LIFmax;
instance_create_layer(other.x,other.y,"Instances",oVFX_powerUpLIFpotion);

audio_play_sound(snCollectPotion,0,false);
instance_destroy();