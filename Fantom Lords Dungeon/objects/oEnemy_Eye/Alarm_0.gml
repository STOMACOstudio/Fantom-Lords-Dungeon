/// @description Insert description here
// You can write your code in this editor

if actions > 0
{
	actions -= actionsRate;
	isFighting = true;
}
if actions <= 0
{
	oManagerCombat.fightEnd ++;
	turnCompelete = true;
	if poison
	{
		global.dmgENEMY = round(thisLIFmax/10);
		audio_play_sound(sn_SKILL_Poison,0,false);
		instance_create_layer(x+irandom_range(8,56),y+irandom_range(8,56),"VFX",oGUI_printDMGenemy);
		thisLIF -= round(thisLIFmax/10);
	}
	if weaken > 0
	{
		if weaken > 1 weaken --
		else if weaken = 1
		{
			weaken --;
			thisATK = thisATKmax;
			thisDEF = thisDEFmax;
			thisMAG = thisMAGmax;
		}
	}
	if (matchup > 0)
	{
		matchup --;
		if (matchup = 0)
		{
			if (matchupType = "atk") thisATK = thisATKmax;
			else if (matchupType = "def") thisDEF = thisDEFmax;
			else if (matchupType = "mag") thisMAG = thisMAGmax;
			matchupType = "none";
		}
	}
	
	next_enemy_turn();
}