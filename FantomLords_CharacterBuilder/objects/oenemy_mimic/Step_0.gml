/// @description Insert description here
// You can write your code in this editor

if revealed image_alpha = 1;
else image_alpha = 0;

if isSelected && revealed
{
	scrEnemyPrintStats();
	global.currentSelectedDescription1 = "A mimic was";
	global.currentSelectedDescription2 = "disguised as a";
	global.currentSelectedDescription3 = "bronze chest.";
}

if isFighting && !turnComplete && actions > 0
{
	scrEnemyCheckForTiles(); //check all close lords and tiles
	canMove = false;
	
	if actions >= 2
	{
		if lordTop != noone || lordRight != noone || lordDown != noone || lordLeft != noone
		{
			actionsRate = 2;
			dmgTYPE = thisATK;
			scrEnemyCheckForLords(); //choose a random lord to attack
		}
		else
		{
			actionsRate = 1;
			scrEnemyMoveChoice(); //if lord is near, move closer; else move random
		}
	}
	else
	{
		actionsRate = 1;
		
		if lordTop != noone || lordRight != noone || lordDown != noone || lordLeft != noone scrEnemyForceEndTurn();
		else scrEnemyMoveChoice();
	}
}
