/// @description Insert description here
// You can write your code in this editor

if revealed image_alpha = 1;
else image_alpha = 0;

scrEnemyLIFcounter();

if isSelected && revealed
{
	scrEnemyPrintStats();
	global.currentSelectedDescription1 = "A mimic was";
	global.currentSelectedDescription2 = "disguised as a";
	global.currentSelectedDescription3 = "bronze chest.";
	global.currentStatusColor = statusColor;
}

if isFighting && !turnComplete && actions > 0
{
	scrEnemyCheckForTiles(); //check all close lords and tiles
	canMove = false;
	
	if actions >= 2
	{
		if (lordTop != noone && lordTop.shadow = 0) || (lordRight != noone && lordRight.shadow = 0) || (lordDown != noone && lordDown.shadow = 0) || (lordLeft != noone && lordLeft.shadow = 0)
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