// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrEnemyForceEndTurn(){
	
	actions = 0;
	//isFighting = false;
	//oManagerCombat.fightEnd ++;
	if poison
	{
		global.dmgENEMY = round(thisLIFmax/10);
		audio_play_sound(sn_SKILL_Poison,0,false);
		instance_create_layer(x+irandom_range(8,56),y+irandom_range(8,56),"VFX",oGUI_printDMGenemy);
		thisLIF -= round(thisLIFmax/10);
	}
	turnCompelete = true;
	oManagerCombat.combatPhase = 1;

}