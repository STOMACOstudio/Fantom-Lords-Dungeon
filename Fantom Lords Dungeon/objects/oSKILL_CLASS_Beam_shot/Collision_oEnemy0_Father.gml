/// @description Insert description here
// You can write your code in this editor

instance_create_layer(other.x+other.sprite_width/2+irandom_range(-24,24),other.y+other.sprite_height/2+irandom_range(-24,24),"VFX",oSKILL_CLASS_Beam_hit);

var dmg = irandom_range(0,3);
global.dmgENEMY = dmg;
other.thisLIF -= global.dmgENEMY;
instance_create_layer(other.x+irandom_range(-24,24),other.y+irandom_range(-24,24),"VFX",oGUI_printDMGenemy);

instance_destroy();