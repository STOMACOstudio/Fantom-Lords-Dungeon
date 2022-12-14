/// @description Insert description here
// You can write your code in this editor

tile = collision_point(mouse_x,mouse_y,oMap_0parent,false,true);
enemy = collision_point(x,y,oEnemy0_Father,false,true);
lord = collision_point(x,y,oLord0Parent,false,true);

if oLord3.thisLord_ascend
{
	if (oLord3.spellCast = 1) //Matchup
	{
		var targetEnemy = (collision_point(x,y,oEnemy0_Father,false,true));
		
		if (targetEnemy != noone && targetEnemy != obstacle)
		{
			global.castLord = oLord3;
			oLord3.spellCast = noone;
			oLord3.thisLord_ACTpoints -= 2;
			
			audio_play_sound(sn_SKILL_Matchup,0,false);
				
			var atk = targetEnemy.thisATK;
			var def = targetEnemy.thisDEF;
			var mag = targetEnemy.thisMAG;
			
			if (atk >= def && atk >= mag)
			{
				var struct1 = { choice : "def" , buff : oLord3.thisLord_MAG };
				var struct2 = { choice : "atk" , debuff : oLord3.thisLord_MAG };
				
				instance_create_layer(oLord3.x+32,oLord3.y+32,"VFX",oSKILL_WEAPON_Matchup1,struct1);
				instance_create_layer(targetEnemy.x+targetEnemy.sprite_width/2,targetEnemy.y+targetEnemy.sprite_height/2,"VFX",oSKILL_WEAPON_Matchup2,struct2);
			}
			else if (def >= atk && def >= mag)
			{
				var struct1 = { choice : "atk" , buff : oLord3.thisLord_MAG };
				var struct2 = { choice : "def" , debuff : oLord3.thisLord_MAG };
				
				instance_create_layer(oLord3.x+32,oLord3.y+32,"VFX",oSKILL_WEAPON_Matchup1,struct1);
				instance_create_layer(targetEnemy.x+targetEnemy.sprite_width/2,targetEnemy.y+targetEnemy.sprite_height/2,"VFX",oSKILL_WEAPON_Matchup2,struct2);
			}
			else if (mag >= atk && mag >= def)
			{
				var struct1 = { choice : "mag" ,  buff : oLord3.thisLord_MAG };
				var struct2 = { choice : "mag" ,  debuff : oLord3.thisLord_MAG };
				
				instance_create_layer(oLord3.x+32,oLord3.y+32,"VFX",oSKILL_WEAPON_Matchup1,struct1);
				instance_create_layer(targetEnemy.x+targetEnemy.sprite_width/2,targetEnemy.y+targetEnemy.sprite_height/2,"VFX",oSKILL_WEAPON_Matchup2,struct2);
			}
				
			instance_destroy();
		}
	}
	else if (oLord3.spellCast = 2) //Spirit Arrows
	{
		if ((collision_point(x,y,oEnemy0_Father,false,true) && collision_point(x,y,oEnemy0_Father,false,true).revealed))
		{
			var struct = { xDir : mouse_x,
						   yDir : mouse_y };
						   
			global.dmgLORD = (oLord3.thisLord_MAG + irandom_range(-3,6));
			if global.dmgLORD <= 0 global.dmgLORD = 1;				   
			oLord3.spellCast = noone;
			oLord3.thisLord_ACTpoints -= 2;
			instance_create_layer(oLord3.x+oLord3.sprite_width/2,oLord3.y+oLord3.sprite_height/2,"VFX",oSKILL_WEAPON_SpiritArrow, struct);
			instance_destroy();
		}
	}
	else if (oLord3.spellCast = 6) //Royal Buff
	{
		if collision_point(x,y,oLord0Parent,0,false)
		{
			oLord3.spellCast = noone;
			oLord3.thisLord_ACTpoints -= 2;
			instance_create_layer(lord.x+32,lord.y+32,"VFX",oSKILL_WEAPON_RoyalBuff);
			instance_destroy();
		}
	}
	else if (oLord3.spellCast = 9) //Double Strike
	{
		if (enemy != noone && enemy.target)
		{
			global.dmgLORD = (oLord3.thisLord_ATK + oLord3.thisLord_ACT + irandom_range(-4,4));
			if global.dmgLORD <= 0 global.dmgLORD = 1;				   
			oLord3.spellCast = noone;
			oLord3.thisLord_ACTpoints -= 2;
			instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_DoubleStrike);
			instance_destroy();
		}
	}
	else if (oLord3.spellCast = 11) //Agility
	{
		if (collision_point(x,y,oLord3,false,true))
		{
			global.castLord = oLord3;
			oLord3.spellCast = noone;
			oLord3.thisLord_ACTpoints -= 2;
			instance_create_layer(oLord3.x+32,oLord3.y+32,"VFX",oSKILL_WEAPON_Agility);
			instance_destroy();
		}
	}	
	else if oLord3.spellCast = 12 //Incense
	{
			if collision_point(x,y,oLord3,false,true)
			{
				global.castLord = oLord3;
				oLord3.spellCast = noone;
				oLord3.thisLord_ACTpoints -= 2;
				global.dmgLORD = round(oLord3.thisLord_MAG/2);
				if global.dmgLORD <= 0 global.dmgLORD = 1;
				
				audio_play_sound(sn_SKILL_Incense,0,false);
				
				#region target
				instance_create_layer(oLord3.x+32,oLord3.y+32,"VFX",oSKILL_WEAPON_Incense);
				instance_create_layer(oLord3.x-32,oLord3.y-32,"VFX",oSKILL_WEAPON_Incense);
				instance_create_layer(oLord3.x+32,oLord3.y-32,"VFX",oSKILL_WEAPON_Incense);
				instance_create_layer(oLord3.x+96,oLord3.y-32,"VFX",oSKILL_WEAPON_Incense);
				instance_create_layer(oLord3.x+96,oLord3.y+32,"VFX",oSKILL_WEAPON_Incense);
				instance_create_layer(oLord3.x+96,oLord3.y+96,"VFX",oSKILL_WEAPON_Incense);
				instance_create_layer(oLord3.x+32,oLord3.y+96,"VFX",oSKILL_WEAPON_Incense);
				instance_create_layer(oLord3.x-32,oLord3.y+96,"VFX",oSKILL_WEAPON_Incense);
				instance_create_layer(oLord3.x-32,oLord3.y+32,"VFX",oSKILL_WEAPON_Incense);
				#endregion
				
				instance_destroy();
			}
	}
	else if (oLord3.spellCast = 13) //Tower
	{
		if (collision_point(x,y,oLord3,false,true))
		{
			global.castLord = oLord3;
			oLord3.spellCast = noone;
			oLord3.thisLord_ACTpoints -= 2;
			var struct = { buff : oLord3.thisLord_MAG };
			instance_create_layer(oLord3.x+32,oLord3.y+32,"VFX",oSKILL_WEAPON_Tower,struct);
			instance_destroy();
		}
	}	
}
else
{
	if oLord3.spellCast = 0 //FIREBALL
	{
		if tile != noone && tile.stepped
		{
			oLord3.spellCast = noone;
			oLord3.thisLord_ACTpoints -= 2;
			global.dmgLORD = oLord3.thisLord_MAG + irandom_range(-3,6);
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			instance_create_layer(tile.x+32,tile.y+32,"VFX",oSKILL_WEAPON_FireBall);
			instance_destroy();
		}
	}
	else if oLord3.spellCast = 1 //Hydrobolt
	{
		if (collision_point(x,y,oEnemy0_Father,false,true) && collision_point(x,y,oEnemy0_Father,false,true).revealed)
		{
			var struct = { xDir : mouse_x,
						   yDir : mouse_y };
			global.dmgLORD = oLord3.thisLord_MAG + irandom_range(-3,6);
			if global.dmgLORD <= 0 global.dmgLORD = 1;				   
			oLord3.spellCast = noone;
			oLord3.thisLord_ACTpoints -= 2;
			instance_create_layer(oLord3.x+oLord3.sprite_width/2,oLord3.y+oLord3.sprite_height/2,"VFX",oSKILL_WEAPON_Hydrobolt, struct);
			instance_destroy();
		}
	}
	else if oLord3.spellCast = 2 //Poison
	{
			if enemy != noone
		{
			if enemy.x = oLord3.x && enemy.y = oLord3.y-64 enemy.target = true;
			else if enemy.x = oLord3.x+64 && enemy.y = oLord3.y enemy.target = true;
			else if enemy.x = oLord3.x && enemy.y = oLord3.y+64 enemy.target = true;
			else if enemy.x = oLord3.x-64 && enemy.y = oLord3.y enemy.target = true;
			else enemy.target = false;
			if enemy.target = true
			{
				oLord3.spellCast = noone;
				oLord3.thisLord_ACTpoints -= 2;
				instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_Poison);
				instance_destroy();
			}
		}
	}
	else if oLord3.spellCast = 3 //SOUL SYPHON
	{
			if enemy != noone && enemy.target
			{
				var struct = {targetLord : oLord3};
				global.castLord = oLord3;
				oLord3.spellCast = noone;
				oLord3.thisLord_ACTpoints -= 2;
				global.dmgLORD = oLord3.thisLord_MAG + irandom_range(-3,1)
				if global.dmgLORD <= 0 global.dmgLORD = 1;
				instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_SoulSyphon,struct);
				instance_destroy();
			}
	}
	else if oLord3.spellCast = 4 //Slay
	{
			if enemy != noone && enemy.target && enemy.thisLIF = enemy.thisLIFmax 
		{
			global.dmgLORD = oLord3.thisLord_ATK*2
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			oLord3.spellCast = noone;
			oLord3.thisLord_ACTpoints -= 2;
			instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_Slay);
			instance_destroy();
		}
	}
	else if oLord3.spellCast = 5 //QUAKE
	{
			if collision_point(x,y,oLord3,false,true)
			{
				global.castLord = oLord3;
				oLord3.spellCast = noone;
				oLord3.thisLord_ACTpoints -= 2;
				global.dmgLORD = oLord3.thisLord_MAG + irandom_range(-3,1);
				if global.dmgLORD <= 0 global.dmgLORD = 1;
				audio_play_sound(sn_SKILL_Quake,0,false);
				instance_create_layer(oLord3.x+32,oLord3.y-32,"VFX",oSKILL_WEAPON_Quake);
				instance_create_layer(oLord3.x+96,oLord3.y+32,"VFX",oSKILL_WEAPON_Quake);
				instance_create_layer(oLord3.x+32,oLord3.y+96,"VFX",oSKILL_WEAPON_Quake);
				instance_create_layer(oLord3.x-32,oLord3.y+32,"VFX",oSKILL_WEAPON_Quake);
				instance_create_layer(oLord3.x+32,oLord3.y-96,"VFX",oSKILL_WEAPON_Quake);
				instance_create_layer(oLord3.x+160,oLord3.y+32,"VFX",oSKILL_WEAPON_Quake);
				instance_create_layer(oLord3.x+32,oLord3.y+160,"VFX",oSKILL_WEAPON_Quake);
				instance_create_layer(oLord3.x-96,oLord3.y+32,"VFX",oSKILL_WEAPON_Quake);
				instance_destroy();
			}
	}
	else if oLord3.spellCast = 6 //Revenge
	{
		if enemy != noone
		{
			global.dmgLORD = oLord3.thisLord_LIFmax - oLord3.thisLord_LIF;
			oLord3.spellCast = noone;
			oLord3.thisLord_ACTpoints -= 2;
			instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_Revenge);
			instance_destroy();
		}
	}
	else if oLord3.spellCast = 7 //BLADE WHIRL
	{
			if collision_point(x,y,oLord3,false,true)
			{
				var struct = {targetLord : oLord3};
				global.castLord = oLord3;
				oLord3.spellCast = noone;
				oLord3.thisLord_ACTpoints -= 2;
				global.dmgLORD = oLord3.thisLord_ATK + irandom_range(-3,1);
				if global.dmgLORD <= 0 global.dmgLORD = 1;
				instance_create_layer(oLord3.x+32,oLord3.y+32,"VFX",oSKILL_WEAPON_BladeWhirl,struct);
				instance_destroy();
			}
	}
	else if oLord3.spellCast = 8 //CLOSE SHOT
	{
		if enemy != noone
		{
			if enemy.x = oLord3.x && enemy.y = oLord3.y-64 enemy.target = true;
			else if enemy.x = oLord3.x+64 && enemy.y = oLord3.y enemy.target = true;
			else if enemy.x = oLord3.x && enemy.y = oLord3.y+64 enemy.target = true;
			else if enemy.x = oLord3.x-64 && enemy.y = oLord3.y enemy.target = true;
			else enemy.target = false;
		
			if enemy.target = true
			{
				oLord3.spellCast = noone;
				oLord3.thisLord_ACTpoints -= 2;
				global.dmgLORD = round((oLord3.thisLord_ATK + irandom_range(-3,6))/2);
				if global.dmgLORD <= 0 global.dmgLORD = 1;
				instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_Closeshot);
				instance_destroy();
			}
		}
	}
	else if oLord3.spellCast = 9 //BASH
	{
		if enemy != noone && enemy.target
		{
			oLord3.spellCast = noone;
			oLord3.thisLord_ACTpoints -= 2;
			global.dmgLORD = round((oLord3.thisLord_ATK + irandom_range(-3,6))/2);
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_Longsword);
		
			if enemy.x = oLord3.x && enemy.y < oLord3.y && collision_point(enemy.x+16,enemy.y-32,oMap_0parent,false,true).empty
			{
				enemy.y -= global.tileRate;
				enemy.bashed = true;
			}
			else if enemy.x > oLord3.x && enemy.y = oLord3.y && collision_point(enemy.x+96,enemy.y+16,oMap_0parent,false,true).empty
			{
				enemy.x += global.tileRate;
				enemy.bashed = true;
			}
			else if enemy.x = oLord3.x && enemy.y > oLord3.y && collision_point(enemy.x+16,enemy.y+96,oMap_0parent,false,true).empty
			{
				enemy.y += global.tileRate;
				enemy.bashed = true;
			}
			else if enemy.x < oLord3.x && enemy.y = oLord3.y && collision_point(enemy.x-32,enemy.y+16,oMap_0parent,false,true).empty
			{
				enemy.x -= global.tileRate;
				enemy.bashed = true;
			}
		
			instance_destroy();
		}
	}
	else if oLord3.spellCast = 10 //MOONBLAST
	{

		if mouse_x < oLord3.x && mouse_y > oLord3.y && mouse_y < oLord3.y+64
		{
			global.dmgLORD = round(oLord3.thisLord_MAG + irandom_range(-3,6));
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			oLord3.spellCast = noone;
			oLord3.thisLord_ACTpoints -= 2;
			var struct = {image_angle : 90, hspeed : -2, dir : 0, castLord : oLord3};
			instance_create_depth(oLord3.x,oLord3.y+32,depth-1,oSKILL_WEAPON_Moonblast,struct);
			instance_destroy();
		}
		else if mouse_x > oLord3.x && mouse_x < oLord3.x+64 && mouse_y < oLord3.y
		{
			global.dmgLORD = round(oLord3.thisLord_MAG + irandom_range(-3,6));
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			oLord3.spellCast = noone;
			oLord3.thisLord_ACTpoints -= 2;
			var struct = {image_angle : 00, vspeed : -2, dir : 1, castLord : oLord3};
			instance_create_depth(oLord3.x+32,oLord3.y,depth-1,oSKILL_WEAPON_Moonblast,struct);
			instance_destroy();
		}
		else if mouse_x > oLord3.x && mouse_y > oLord3.y && mouse_y <oLord3.y+64
		{
			global.dmgLORD = round(oLord3.thisLord_MAG + irandom_range(-3,6));
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			oLord3.spellCast = noone;
			oLord3.thisLord_ACTpoints -= 2;
			var struct = {image_angle : -90, hspeed : 2, dir : 2, castLord : oLord3};
			instance_create_depth(oLord3.x+64,oLord3.y+32,depth-1,oSKILL_WEAPON_Moonblast,struct);
			instance_destroy();
		}
		else if mouse_x > oLord3.x && mouse_x < oLord3.x+64 && mouse_y > oLord3.y+64
		{
			global.dmgLORD = round(oLord3.thisLord_MAG + irandom_range(-3,6));
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			oLord3.spellCast = noone;
			oLord3.thisLord_ACTpoints -= 2;
			var struct = {image_angle : 180, vspeed : 2, dir : 3, castLord : oLord3};
			instance_create_depth(oLord3.x+32,oLord3.y+64,depth-1,oSKILL_WEAPON_Moonblast,struct);
			instance_destroy();
		}
	}
	else if oLord3.spellCast = 11 //HEAL SONG
	{
		if collision_point(x,y,oLord3,false,true)
		{
			global.dmgLORD = round(oLord3.thisLord_MAG/2);
			var struct = { noteColor : c_lime};
			oLord3.spellCast = noone;
			oLord3.thisLord_ACTpoints -= 2;
			audio_play_sound(sn_SKILL_HealSong,0,false);
			with oLord0Parent instance_create_layer(x+32,y+32,"VFX",oSKILL_WEAPON_HealSong);
			instance_create_layer(oLord3.x+32,oLord3.y+32,"VFX",oVFX_Notemaker, struct);
			instance_destroy();
		}
	}
	else if oLord3.spellCast = 12 //MAGIC MISSILE
	{
		if (collision_point(x,y,oEnemy0_Father,false,true) && collision_point(x,y,oEnemy0_Father,false,true).revealed)
		{
			var struct = { xDir : mouse_x,
						   yDir : mouse_y };
			global.dmgLORD = round((oLord3.thisLord_MAG + irandom_range(-3,6))/2);
			if global.dmgLORD <= 0 global.dmgLORD = 1;				   
			oLord3.spellCast = noone;
			oLord3.thisLord_ACTpoints -= 2;
			instance_create_layer(oLord3.x+oLord3.sprite_width/2,oLord3.y+oLord3.sprite_height/2,"VFX",oSKILL_WEAPON_Missile, struct);
			instance_destroy();
		}
	}
	else if oLord3.spellCast = 13 //DRAIN SLASH
	{
			if enemy != noone && enemy.target
			{
				global.castLord = oLord3;
				oLord3.spellCast = noone;
				oLord3.thisLord_ACTpoints -= 2;
				global.dmgLORD = oLord3.thisLord_ATK + irandom_range(-3,1)
				if global.dmgLORD <= 0 global.dmgLORD = 1;
				instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_WEAPON_DrainSlash);
				instance_destroy();
			}
	}
	else if oLord3.spellCast = 14 //STORM
	{
			if collision_point(x,y,oLord3,false,true)
			{
				oLord3.spellCast = noone;
				oLord3.thisLord_ACTpoints -= 2;
				global.dmgLORD = oLord3.thisLord_MAG + irandom_range(-3,1);
				if global.dmgLORD <= 0 global.dmgLORD = 1;
				audio_play_sound(sn_SKILL_Storm,0,false);
				with oEnemy0_Father if revealed instance_create_layer(x+32,y+32,"VFX",oSKILL_WEAPON_Storm);
				instance_destroy();
			}
	}
	else if oLord3.spellCast = 15 //SWAP
	{
		if swap1 = noone && collision_point(x,y,oEnemy0_Father,false,true)
		{
			swap1 = collision_point(x,y,oEnemy0_Father,false,true);
			instance_create_layer(swap1.x,swap1.y,"VFX",oSKILL_WEAPON_SwapSelection);
		}
		else if swap1 != noone  && collision_point(x,y,oEnemy0_Father,false,true) swap2 = collision_point(x,y,oEnemy0_Father,false,true);
		if swap1 != noone && swap2 != noone
		{
			oLord3.spellCast = noone;
			oLord3.thisLord_ACTpoints -= 2;
			instance_create_depth(swap1.x+32,swap1.y+32,depth-1,oSKILL_WEAPON_Swap);
			instance_create_depth(swap2.x+32,swap2.y+32,depth-1,oSKILL_WEAPON_Swap2);
			swap1.x = oSKILL_WEAPON_Swap2.x-32;
			swap1.y = oSKILL_WEAPON_Swap2.y-32;
			swap2.x = oSKILL_WEAPON_Swap.x-32;
			swap2.y = oSKILL_WEAPON_Swap.y-32;
			instance_destroy();
		}
	}
	else if oLord3.spellCast = 16 //SCOUT
	{
		if mouse_y < 504
		{
			var struct = { xDir : mouse_x,
						   yDir : mouse_y };			   
			oLord3.spellCast = noone;
			oLord3.thisLord_ACTpoints -= 2;
			instance_create_layer(oLord3.x+oLord3.sprite_width/2,oLord3.y+oLord3.sprite_height/2,"VFX",oSKILL_WEAPON_Scout, struct);
			instance_destroy();
		}
	}
}