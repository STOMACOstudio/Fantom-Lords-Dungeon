/// @description Insert description here
// You can write your code in this editor

image_xscale += 0.02;
image_yscale += 0.02;
image_alpha += 0.05;

instance_create_depth(x+irandom_range(-16,16),y,depth+1,oSKILL_WEAPON_SoulSyphon2,struct);

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
	
	global.hasControl = true;
	instance_destroy();
}