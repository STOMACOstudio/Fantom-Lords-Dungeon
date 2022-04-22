/// @description Insert description here
// You can write your code in this editor

var collisionLord = collision_point(x,y,oLord0Parent,false,true);

if collisionLord != noone
{
	depth = 0
	
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
	depth = startDepth
	if !audio_is_playing(snTrapUnload) && image_alpha > 0 && image_index = 8 audio_play_sound(snTrapUnload,0,false);
	image_speed = -1;
	damage = false;
}

var collisionRanger1 = collision_rectangle(x-48,y-48,x+96,y+96,oLord1,false,true);
var collisionRanger2 = collision_rectangle(x-48,y-48,x+96,y+96,oLord2,false,true);
var collisionRanger3 = collision_rectangle(x-48,y-48,x+96,y+96,oLord3,false,true);
var collisionRanger4 = collision_rectangle(x-48,y-48,x+96,y+96,oLord4,false,true);

if collisionRanger1 != noone && collisionRanger1.thisLord_skillClassArmor = 0 && image_alpha = 0
{
	image_alpha = 1;
	instance_create_layer(collisionRanger1.x+32,collisionRanger1.y+16,"VFX",oVFX_TrapRevealed);
}	
if collisionRanger2 != noone && collisionRanger2.thisLord_skillClassArmor = 0 && image_alpha = 0
{
	image_alpha = 1;
	instance_create_layer(collisionRanger2.x+32,collisionRanger2.y+16,"VFX",oVFX_TrapRevealed);
}	
if collisionRanger3 != noone && collisionRanger3.thisLord_skillClassArmor = 0 && image_alpha = 0
{
	image_alpha = 1;
	instance_create_layer(collisionRanger3.x+32,collisionRanger3.y+16,"VFX",oVFX_TrapRevealed);
}	
if collisionRanger4 != noone && collisionRanger4.thisLord_skillClassArmor = 0 && image_alpha = 0
{
	image_alpha = 1;
	instance_create_layer(collisionRanger4.x+32,collisionRanger4.y+16,"VFX",oVFX_TrapRevealed);
}
