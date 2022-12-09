/// @description Insert description here
// You can write your code in this editor

audio_play_sound(sn_SKILL_SpiritArrow,0,false);

move_towards_point(xDir,yDir,0);

image_angle = direction;

speed = 6;

var struct = { direction  : direction+15 }
instance_create_depth(x,y,depth,oSKILL_WEAPON_SpiritArrow2,struct);
var struct = {  direction  : direction-15 }
instance_create_depth(x,y,depth,oSKILL_WEAPON_SpiritArrow2,struct);

done = false;

global.hasControl = false;

makeImpact = true;