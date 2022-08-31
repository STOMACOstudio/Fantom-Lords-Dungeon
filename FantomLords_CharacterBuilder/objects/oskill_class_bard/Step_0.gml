/// @description Insert description here
// You can write your code in this editor

if done = true
{
	image_alpha = 0;
	
	if isHit && target0enemy.sleep = 0 target0enemy.sleep = irandom_range(2,5);
	else instance_create_layer(target0enemy.x,target0enemy.y,"VFX",oGUI_printMiss);
	
	global.hasControl = true;
	instance_destroy();
}