/// @description Insert description here
// You can write your code in this editor

instance_create_depth(x+irandom_range(-32,32),y+irandom_range(-32,32),depth-1,oSKILL_CLASS_Drain2,struct);

if done = true
{
	image_alpha = 0;

	global.dmgENEMY = dmg - target0enemy.thisMAG;
	if global.dmgENEMY <= 0 global.dmgENEMY = 1;
	target0enemy.thisLIF -= global.dmgENEMY;
	if target0enemy.thisLIF <= 0
	{
		global.RNBgems ++;
		audio_play_sound(snCollectGem,0,false);
	}
	
	instance_create_layer(target0enemy.x,target0enemy.y,"VFX",oGUI_printDMGenemy);
	
	targetLord.thisLord_LIF += global.dmgENEMY;
	if targetLord.thisLord_LIF > targetLord.thisLord_LIFmax targetLord.thisLord_LIF = targetLord.thisLord_LIFmax
	instance_create_layer(targetLord.x,targetLord.y,"VFX",oGUI_printHEAL);
	
	global.hasControl = true;
	instance_destroy();
}