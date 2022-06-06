/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x,y,"WarFog",oMap_blocktile_WarFog);
image_alpha = 0;
revealed = false;
stepped = false;
empty = true;
filled = false;

makeChest = irandom_range(0,10);