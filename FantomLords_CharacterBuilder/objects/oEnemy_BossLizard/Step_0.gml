/// @description Insert description here
// You can write your code in this editor

if isSelected && revealed
{
	scrEnemyPrintStats();
	global.currentSelectedDescription1 = "This huge";
	global.currentSelectedDescription2 = "albino bat will";
	global.currentSelectedDescription3 = "suck you dry.";
}

if isFighting && !turnComplete && actions > 0
{
	scrEnemyCheckForTiles(); //check all close lords and tiles
	canMove = false;
	
	if actions >= 2
	{
		if lordTop != noone || lordTopRight != noone || lordRightRight != noone || lordRightRightDown != noone || lordDownDownRight != noone || lordDownDown != noone || lordLeft != noone || lordDownLeft != noone
		{
			actionsRate = 2;
			dmgTYPE = thisATK;
			scrBossCheckForLords(); //choose a random lord to attack
		}
		else
		{
			actionsRate = 1;
			scrBossMoveChoice(); //if lord is near, move closer; else move random
		}
	}
	else
	{
		actionsRate = 1;
		
		if lordTop != noone || lordTopRight != noone || lordRightRight != noone || lordRightRightDown != noone || lordDownDownRight != noone || lordDownDown != noone || lordLeft != noone || lordDownLeft != noone scrEnemyForceEndTurn();
		else scrBossMoveChoice();
	}
}
