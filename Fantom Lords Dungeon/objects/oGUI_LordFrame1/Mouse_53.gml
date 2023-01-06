/// @description Insert description here
// You can write your code in this editor

if global.hasControl
{
	if mouse_x > x && mouse_x < x+128 && mouse_y > y && mouse_y < y+128 && instance_exists(oLord1)
	{
		if !thisLocked
		{
			oGUI_printSelectedStatLord.locked = true;
			oGUI_printSelectedStatLord.selectedLord = 1;
			
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
			oLord1.image_blend = c_yellow;
			oLord1.thisLocked = true;
			thisLocked = true;
			audio_play_sound(snAddLord,0,false);
		}
		else
		{
			oGUI_printSelectedStatLord.locked = false;
			thisLocked = false;
			oLord1.image_blend = c_white;
			oLord1.thisLocked = false;
			audio_play_sound(snRemoveLord,0,false);
		}
	}
}
