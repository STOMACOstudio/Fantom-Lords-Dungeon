/// @description Insert description here
// You can write your code in this editor

tile = collision_point(mouse_x,mouse_y,oMap_0parent,false,true);
enemy = collision_point(x,y,oEnemy0_Father,false,true);

if oLord1.spellCast = 0 //FIREBALL
{
	if tile != noone && tile.stepped
	{
		oLord1.spellCast = noone;
		oLord1.thisLord_ACTpoints -= 2;
		global.dmgLORD = oLord1.thisLord_MAG + irandom_range(-3,6);
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		instance_create_layer(tile.x+32,tile.y+32,"VFX",oSKILL_WEAPON_FireBall);
		instance_destroy();
	}
}
else if oLord1.spellCast = 1 //Hydrobolt
{
	if (collision_point(x,y,oEnemy0_Father,false,true) && collision_point(x,y,oEnemy0_Father,false,true).revealed)
	{
		var struct = { xDir : mouse_x,
					   yDir : mouse_y };
		global.dmgLORD = oLord1.thisLord_MAG + irandom_range(-3,6);
		if global.dmgLORD <= 0 global.dmgLORD = 1;				   
		oLord1.spellCast = noone;
		oLord1.thisLord_ACTpoints -= 2;
		instance_create_layer(oLord1.x+oLord1.sprite_width/2,oLord1.y+oLord1.sprite_height/2,"VFX",oSKILL_WEAPON_Hydrobolt, struct);
		instance_destroy();
	}
}
else if oLord1.spellCast = 2 //Poison
{
		if enemy != noone
	{
		if enemy.x = oLord1.x && enemy.y = oLord1.y-64 enemy.target = true;
		else if enemy.x = oLord1.x+64 && enemy.y = oLord1.y enemy.target = true;
		else if enemy.x = oLord1.x && enemy.y = oLord1.y+64 enemy.target = true;
		else if enemy.x = oLord1.x-64 && enemy.y = oLord1.y enemy.target = true;
		else enemy.target = false;
		if enemy.target = true
		{
			oLord1.spellCast = noone;
			oLord1.thisLord_ACTpoints -= 2;
			instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_Poison);
			instance_destroy();
		}
	}
}
else if oLord1.spellCast = 3 //SOUL SYPHON
{
		if enemy != noone && enemy.target
		{
			var struct = {targetLord : oLord1};
			global.castLord = oLord1;
			oLord1.spellCast = noone;
			oLord1.thisLord_ACTpoints -= 2;
			global.dmgLORD = oLord1.thisLord_MAG + irandom_range(-3,1)
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_SoulSyphon,struct);
			instance_destroy();
		}
}
else if oLord1.spellCast = 4 //Slay
{
		if enemy != noone && enemy.target && enemy.thisLIF = enemy.thisLIFmax 
	{
		global.dmgLORD = oLord1.thisLord_ATK*2
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		oLord1.spellCast = noone;
		oLord1.thisLord_ACTpoints -= 2;
		instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_Slay);
		instance_destroy();
	}
}
else if oLord1.spellCast = 5 //QUAKE
{
		if collision_point(x,y,oLord1,false,true)
		{
			global.castLord = oLord1;
			oLord1.spellCast = noone;
			oLord1.thisLord_ACTpoints -= 2;
			global.dmgLORD = oLord1.thisLord_MAG + irandom_range(-3,1);
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			audio_play_sound(sn_SKILL_Quake,0,false);
			instance_create_layer(oLord1.x+32,oLord1.y-32,"VFX",oSKILL_WEAPON_Quake);
			instance_create_layer(oLord1.x+96,oLord1.y+32,"VFX",oSKILL_WEAPON_Quake);
			instance_create_layer(oLord1.x+32,oLord1.y+96,"VFX",oSKILL_WEAPON_Quake);
			instance_create_layer(oLord1.x-32,oLord1.y+32,"VFX",oSKILL_WEAPON_Quake);
			instance_create_layer(oLord1.x+32,oLord1.y-96,"VFX",oSKILL_WEAPON_Quake);
			instance_create_layer(oLord1.x+160,oLord1.y+32,"VFX",oSKILL_WEAPON_Quake);
			instance_create_layer(oLord1.x+32,oLord1.y+160,"VFX",oSKILL_WEAPON_Quake);
			instance_create_layer(oLord1.x-96,oLord1.y+32,"VFX",oSKILL_WEAPON_Quake);
			instance_destroy();
		}
}
else if oLord1.spellCast = 6 //Revenge
{
	if enemy != noone
	{
		global.dmgLORD = oLord1.thisLord_LIFmax - oLord1.thisLord_LIF;
		oLord1.spellCast = noone;
		oLord1.thisLord_ACTpoints -= 2;
		instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_Revenge);
		instance_destroy();
	}
}
else if oLord1.spellCast = 7 //BLADE WHIRL
{
		if collision_point(x,y,oLord1,false,true)
		{
			var struct = {targetLord : oLord1};
			global.castLord = oLord1;
			oLord1.spellCast = noone;
			oLord1.thisLord_ACTpoints -= 2;
			global.dmgLORD = oLord1.thisLord_ATK + irandom_range(-3,1);
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			instance_create_layer(oLord1.x+32,oLord1.y+32,"VFX",oSKILL_WEAPON_BladeWhirl,struct);
			instance_destroy();
		}
}
else if oLord1.spellCast = 8 //CLOSE SHOT
{
	if enemy != noone
	{
		if enemy.x = oLord1.x && enemy.y = oLord1.y-64 enemy.target = true;
		else if enemy.x = oLord1.x+64 && enemy.y = oLord1.y enemy.target = true;
		else if enemy.x = oLord1.x && enemy.y = oLord1.y+64 enemy.target = true;
		else if enemy.x = oLord1.x-64 && enemy.y = oLord1.y enemy.target = true;
		else enemy.target = false;
		
		if enemy.target = true
		{
			var struct = { targetLord : oLord1};
			oLord1.spellCast = noone;
			oLord1.thisLord_ACTpoints -= 2;
			global.dmgLORD = round((oLord1.thisLord_ATK + irandom_range(-3,6))/2);
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_Closeshot,struct);
			instance_destroy();
		}
	}
}
else if oLord1.spellCast = 9 //BASH
{
	if enemy != noone && enemy.target
	{
		oLord1.spellCast = noone;
		oLord1.thisLord_ACTpoints -= 2;
		global.dmgLORD = round((oLord1.thisLord_ATK + irandom_range(-3,6))/2);
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_Longsword);
		
		if enemy.x = oLord1.x && enemy.y < oLord1.y && collision_point(enemy.x+16,enemy.y-32,oMap_0parent,false,true).empty
		{
			enemy.y -= global.tileRate;
			enemy.bashed = true;
		}
		else if enemy.x > oLord1.x && enemy.y = oLord1.y && collision_point(enemy.x+96,enemy.y+16,oMap_0parent,false,true).empty
		{
			enemy.x += global.tileRate;
			enemy.bashed = true;
		}
		else if enemy.x = oLord1.x && enemy.y > oLord1.y && collision_point(enemy.x+16,enemy.y+96,oMap_0parent,false,true).empty
		{
			enemy.y += global.tileRate;
			enemy.bashed = true;
		}
		else if enemy.x < oLord1.x && enemy.y = oLord1.y && collision_point(enemy.x-32,enemy.y+16,oMap_0parent,false,true).empty
		{
			enemy.x -= global.tileRate;
			enemy.bashed = true;
		}
		
		instance_destroy();
	}
}
else if oLord1.spellCast = 10 //MOONBLAST
{

	if mouse_x < oLord1.x && mouse_y > oLord1.y && mouse_y < oLord1.y+64
	{
		global.dmgLORD = round(oLord1.thisLord_MAG + irandom_range(-3,6));
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		oLord1.spellCast = noone;
		oLord1.thisLord_ACTpoints -= 2;
		var struct = {image_angle : 90, hspeed : -2, dir : 0, castLord : oLord1};
		instance_create_depth(oLord1.x,oLord1.y+32,depth-1,oSKILL_WEAPON_Moonblast,struct);
		instance_destroy();
	}
	else if mouse_x > oLord1.x && mouse_x < oLord1.x+64 && mouse_y < oLord1.y
	{
		global.dmgLORD = round(oLord1.thisLord_MAG + irandom_range(-3,6));
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		oLord1.spellCast = noone;
		oLord1.thisLord_ACTpoints -= 2;
		var struct = {image_angle : 00, vspeed : -2, dir : 1, castLord : oLord1};
		instance_create_depth(oLord1.x+32,oLord1.y,depth-1,oSKILL_WEAPON_Moonblast,struct);
		instance_destroy();
	}
	else if mouse_x > oLord1.x && mouse_y > oLord1.y && mouse_y <oLord1.y+64
	{
		global.dmgLORD = round(oLord1.thisLord_MAG + irandom_range(-3,6));
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		oLord1.spellCast = noone;
		oLord1.thisLord_ACTpoints -= 2;
		var struct = {image_angle : -90, hspeed : 2, dir : 2, castLord : oLord1};
		instance_create_depth(oLord1.x+64,oLord1.y+32,depth-1,oSKILL_WEAPON_Moonblast,struct);
		instance_destroy();
	}
	else if mouse_x > oLord1.x && mouse_x < oLord1.x+64 && mouse_y > oLord1.y+64
	{
		global.dmgLORD = round(oLord1.thisLord_MAG + irandom_range(-3,6));
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		oLord1.spellCast = noone;
		oLord1.thisLord_ACTpoints -= 2;
		var struct = {image_angle : 180, vspeed : 2, dir : 3, castLord : oLord1};
		instance_create_depth(oLord1.x+32,oLord1.y+64,depth-1,oSKILL_WEAPON_Moonblast,struct);
		instance_destroy();
	}
	
}
else if oLord1.spellCast = 11 //HEAL SONG
{
	if collision_point(x,y,oLord1,false,true)
	{
		global.dmgLORD = round(oLord1.thisLord_MAG/2);
		var struct = { noteColor : c_lime};
		oLord1.spellCast = noone;
		oLord1.thisLord_ACTpoints -= 2;
		audio_play_sound(sn_SKILL_HealSong,0,false);
		with oLord0Parent instance_create_layer(x+32,y+32,"VFX",oSKILL_WEAPON_HealSong);
		instance_create_layer(oLord1.x+32,oLord1.y+32,"VFX",oVFX_Notemaker, struct);
		instance_destroy();
	}
}
else if oLord1.spellCast = 12 //MAGIC MISSILE
{	
	if (collision_point(x,y,oEnemy0_Father,false,true) && collision_point(x,y,oEnemy0_Father,false,true).revealed)
	{
		var struct = { xDir : mouse_x,
					   yDir : mouse_y };
		global.dmgLORD = round((oLord1.thisLord_MAG + irandom_range(-3,6))/2);
		if global.dmgLORD <= 0 global.dmgLORD = 1;				   
		oLord1.spellCast = noone;
		oLord1.thisLord_ACTpoints -= 2;
		instance_create_layer(oLord1.x+oLord1.sprite_width/2,oLord1.y+oLord1.sprite_height/2,"VFX",oSKILL_WEAPON_Missile, struct);
		instance_destroy();
	}
}
else if oLord1.spellCast = 13 //DRAIN SLASH
{
		if enemy != noone && enemy.target
		{
			global.castLord = oLord1;
			oLord1.spellCast = noone;
			oLord1.thisLord_ACTpoints -= 2;
			global.dmgLORD = oLord1.thisLord_ATK + irandom_range(-3,1)
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_DrainSlash);
			instance_destroy();
		}
}
else if oLord1.spellCast = 14 //STORM
{
		if collision_point(x,y,oLord1,false,true)
		{
			oLord1.spellCast = noone;
			oLord1.thisLord_ACTpoints -= 2;
			global.dmgLORD = oLord1.thisLord_MAG + irandom_range(-3,1);
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			audio_play_sound(sn_SKILL_Storm,0,false);
			with oEnemy0_Father if revealed instance_create_layer(x+32,y+32,"VFX",oSKILL_WEAPON_Storm);
			instance_destroy();
		}
}
else if oLord1.spellCast = 15 //SWAP
{
	if swap1 = noone && collision_point(x,y,oEnemy0_Father,false,true)
	{
		swap1 = collision_point(x,y,oEnemy0_Father,false,true);
		instance_create_layer(swap1.x,swap1.y,"VFX",oSKILL_WEAPON_SwapSelection);
	}
	else if swap1 != noone  && collision_point(x,y,oEnemy0_Father,false,true) swap2 = collision_point(x,y,oEnemy0_Father,false,true);
	if swap1 != noone && swap2 != noone
	{
		oLord1.spellCast = noone;
		oLord1.thisLord_ACTpoints -= 2;
		instance_create_depth(swap1.x+32,swap1.y+32,depth-1,oSKILL_WEAPON_Swap);
		instance_create_depth(swap2.x+32,swap2.y+32,depth-1,oSKILL_WEAPON_Swap2);
		swap1.x = oSKILL_WEAPON_Swap2.x-32;
		swap1.y = oSKILL_WEAPON_Swap2.y-32;
		swap2.x = oSKILL_WEAPON_Swap.x-32;
		swap2.y = oSKILL_WEAPON_Swap.y-32;
		instance_destroy();
	}
}
else if oLord1.spellCast = 16 //SCOUT
{
	if mouse_y < 504
	{
		var struct = { xDir : mouse_x,
					   yDir : mouse_y };			   
		oLord1.spellCast = noone;
		oLord1.thisLord_ACTpoints -= 2;
		instance_create_layer(oLord1.x+oLord1.sprite_width/2,oLord1.y+oLord1.sprite_height/2,"VFX",oSKILL_WEAPON_Scout, struct);
		instance_destroy();
	}
}