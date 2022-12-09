/// @description Insert description here
// You can write your code in this editor

var struct =
{ 
	xDir : xDir,
	yDir : yDir
}

instance_create_depth(x+irandom_range(-6,6),y+irandom_range(-6,6),depth,oSKILL_CLASS_Beam_shot, struct);

