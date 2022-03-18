/// @description Insert description here
// You can write your code in this editor

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
	
	thisLocked = true;
	oGUI_LordFrame2.thisLocked = true;
	image_blend = c_yellow;
	audio_play_sound(snAddLord,0,false);
}
else
{
	thisLocked = false;
	oGUI_LordFrame2.thisLocked = false;
	image_blend = c_white;
	audio_play_sound(snRemoveLord,0,false);
}