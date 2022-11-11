/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x,y,"WarFog",oMap_blocktile_WarFog);
image_alpha = 0.8;
revealed = true;
stepped = false;
empty = true;

if global.roomType = "Prison" sprite_index = sBlockTile_1_prison;