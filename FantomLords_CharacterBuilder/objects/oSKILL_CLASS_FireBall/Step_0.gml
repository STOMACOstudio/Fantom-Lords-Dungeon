/// @description Insert description here
// You can write your code in this editor

var makeFlame = irandom_range(0,10);

if makeFlame >= 5 instance_create_layer(x+irandom_range(-64,64),y+irandom_range(-64,64),"VFX",oSKILL_CLASS_FireBallFlame);
