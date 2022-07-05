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
	oManagerCombat.combatPhase = 1;
}