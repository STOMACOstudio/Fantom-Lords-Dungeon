/// @description Insert description here
// You can write your code in this editor

if oManagerCombat.combatPhase = 0
{
	
	with (oLord0Parent) thisLocked = false;
	with (oLord0Parent) image_blend = c_white;
	with (oLord0FrameParent) thisLocked = false;
	with (oVFX_spellCast0father) instance_destroy();
	global.isLocked = false;
	global.isLockedSkill = false;
	
	if instance_exists(oLord1) oLord1.thisLord_ACTpoints = 0;
	if instance_exists(oLord2) oLord2.thisLord_ACTpoints = 0;
	if instance_exists(oLord3) oLord3.thisLord_ACTpoints = 0;
	if instance_exists(oLord4) oLord4.thisLord_ACTpoints = 0;
	
	oManagerCombat.combatPhase = 1;
	
	audio_play_sound(snRandomize,0,false);
	
	/*if global.ACTpointsTOT = 0
	{
		if instance_exists(oLord1) oLord1.thisLord_ACTpoints = oLord1.thisLord_ACTpointsMAX;
		if instance_exists(oLord2) oLord2.thisLord_ACTpoints = oLord2.thisLord_ACTpointsMAX;
		if instance_exists(oLord3) oLord3.thisLord_ACTpoints = oLord3.thisLord_ACTpointsMAX;
		if instance_exists(oLord4) oLord4.thisLord_ACTpoints = oLord4.thisLord_ACTpointsMAX;
	
		audio_play_sound(snRandomize,0,false);
	}*/
}