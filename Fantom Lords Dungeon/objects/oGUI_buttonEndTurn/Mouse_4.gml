/// @description Insert description here
// You can write your code in this editor

if oManagerCombat.combatPhase = 0 && global.hasControl && global.fightMode = true && !instance_exists(oGUI_printScoreSubtract)
{
	with (oLord0Parent)
	{
		thisLocked = false;
		image_blend = c_white;
		if battlecry > 0
		{
			battlecry --;
			if battlecry = 0 thisLord_ATK = thisLord_ATKmax;
		}
		if burden > 0
		{
			burden --;
			if burden = 0 thisLord_DEF = thisLord_DEFmax;
		}
		if shadow > 0 shadow --;
		if weaken > 0
		{
			weaken --;
			if weaken = 0
			{
				thisLord_ATK = thisLord_ATKmax;
				thisLord_DEF = thisLord_DEFmax;
				thisLord_MAG = thisLord_MAGmax;
			}
		}
		if stun > 0 stun --;
		if (tower > 0)
		{
			tower --;
			if (tower = 0)
			{
				thisLord_MAG = thisLord_MAGmax;
				thisLord_DEF = thisLord_DEFmax;
			}
		}
	}
	with (oLord0FrameParent) thisLocked = false;
	with (oVFX_spellCast0father) instance_destroy();
	with (oEnemy0_Father)
	{
		turnCompelete = false;
		isFighting = false;
		actions = actionsMax;
	}
	global.isLocked = false;
	global.isLockedSkill = false;
	
	if instance_exists(oLord1) oLord1.thisLord_ACTpoints = 0;
	if instance_exists(oLord2) oLord2.thisLord_ACTpoints = 0;
	if instance_exists(oLord3) oLord3.thisLord_ACTpoints = 0;
	if instance_exists(oLord4) oLord4.thisLord_ACTpoints = 0;
	
	alarm[0] = 25;
	isNext = true;
	
	instance_create_layer(oGUI_score.x+112,oGUI_score.y,"Instances",oGUI_printScoreSubtract);
	if (score >= global.scoreEndTurn)
	{
		score -= global.scoreEndTurn;
	}
	else
	{
		score = 0;
	}
	
	audio_play_sound(snRandomize,0,false);
}