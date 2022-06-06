/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x,y,"WarFog",oMap_blocktile_WarFog);

image_alpha = 0;
revealed = false;
empty = false;
stepped = false;

/*if image_angle = 0
{
    embellishment = irandom_range(0,10);

    if embellishment = 1 instance_create_layer(irandom_range(x+4,x+58),irandom_range(y+25,y+54),"VFX",oMap_blocktileEmbellishment1);
    else if embellishment = 2 instance_create_layer(irandom_range(x+6,x+58),y+32,"VFX",oMap_blocktileEmbellishment2);
    else if embellishment = 3 instance_create_layer(x+32,y+22,"VFX",oMap_blocktileEmbellishment3);
    else if embellishment = 4 instance_create_layer(x+32,y+34,"VFX",oMap_blocktileEmbellishment4);
    else if embellishment = 5 instance_create_layer(x+32,y+17,"VFX",oMap_blocktileEmbellishment5);
}