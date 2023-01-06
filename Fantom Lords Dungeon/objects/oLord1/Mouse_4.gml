/// @description Insert description here
// You can write your code in this editor

if global.hasControl && !collision_point(mouse_x,mouse_y,oVFX_spellCast0father,false,true)
{
	with oEnemy0_Father target = false;

	if !thisLocked && !instance_exists(oVFX_spellCast0father)
	{
		with (oLord0FrameParent)
		{
			thisLocked = false;
			image_blend = c_white;
		}
		with (oLord0Parent)
		{
			thisLocked = false;
			image_blend = c_white;
		}
	
		if instance_exists(oVFX_spellCast0father) instance_destroy(oVFX_spellCast0father);
	
		thisLocked = true;
		oGUI_printSelectedStatLord.locked = true;
		oGUI_printSelectedStatLord.selectedLord = 1;
		oGUI_LordFrame1.thisLocked = true;
		image_blend = c_yellow;
		audio_play_sound(snAddLord,0,false);
	}
	else
	{
		thisLocked = false;
		oGUI_printSelectedStatLord.locked = false;
		oGUI_LordFrame1.thisLocked = false;
		image_blend = c_white;
		audio_play_sound(snRemoveLord,0,false);
	}
}
