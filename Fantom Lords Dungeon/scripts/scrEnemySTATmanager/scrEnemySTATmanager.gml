// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrEnemySTATmanager(){
	
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

}