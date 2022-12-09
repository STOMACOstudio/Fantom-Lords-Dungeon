/// @description Insert description here
// You can write your code in this editor

global.hasControl = true;

with (oSKILL_CLASS_Beam_hit) 
{
	instance_destroy();
}

audio_stop_sound(sn_SKILL_Beam);

instance_destroy();