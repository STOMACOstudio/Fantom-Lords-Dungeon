/// @description Insert description here
// You can write your code in this editor

if done = true
{
	image_alpha = 0;
	
	if targetLord != noone
	{
		targetLord.thisLord_LIF += dmg;
		if targetLord.thisLord_LIF > targetLord.thisLord_LIFmax targetLord.thisLord_LIF = targetLord.thisLord_LIFmax
		instance_create_layer(targetLord.x,targetLord.y,"VFX",oGUI_printDMGlord);
	}
	
	instance_destroy();
}
