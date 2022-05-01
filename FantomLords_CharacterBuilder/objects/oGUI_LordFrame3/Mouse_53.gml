/// @description Insert description here
// You can write your code in this editor

if global.hasControl
{
	if mouse_x > x && mouse_x < x+128 && mouse_y > y && mouse_y < y+128 && instance_exists(oLord3)
	{
		if !thisLocked
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
			oLord3.image_blend = c_yellow;
			oLord3.thisLocked = true;
			thisLocked = true;
			audio_play_sound(snAddLord,0,false);
		}
		else
		{
			thisLocked = false;
			oLord3.image_blend = c_white;
			oLord3.thisLocked = false;
			audio_play_sound(snRemoveLord,0,false);
		}
	}
}
