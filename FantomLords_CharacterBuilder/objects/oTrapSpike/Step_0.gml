/// @description Insert description here
// You can write your code in this editor

var collisionLord = collision_point(x,y,oLord0Parent,false,true);

if collisionLord != noone
{
	if !damage
	{
		var trapDamage = round((collisionLord.thisLord_LIF)/2);
		global.dmgLORD = trapDamage;
		collisionLord.thisLord_LIF -= trapDamage;
		instance_create_layer(collisionLord.x+32,collisionLord.y+32,"VFX",oGUI_printDMGlord)
		image_alpha = 1;
		image_speed = 0;
		image_index = 8;
		audio_play_sound(snAttack,0,false);
		damage = true;
	}
}
else
{
	if !audio_is_playing(snTrapUnload) && image_alpha > 0 && image_index = 8 audio_play_sound(snTrapUnload,0,false);
	image_speed = -1;
	damage = false;
}