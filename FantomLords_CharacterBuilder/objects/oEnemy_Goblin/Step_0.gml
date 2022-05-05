/// @description Insert description here
// You can write your code in this editor

if revealed image_alpha = 1;
else image_alpha = 0;

/*#region bloodshed
var currentLIF = 0;

if thisLIF = thisLIFmax currentLIF = 0;
else if thisLIF >= thisLIFmax/2 && thisLIF < thisLIFmax currentLIF = 1;
else if thisLIF >= thisLIFmax/4 && thisLIF < thisLIFmax/2 currentLIF = 2;
else if thisLIF >= thisLIFmax/6 && thisLIF < thisLIFmax/4 currentLIF = 3;
else if thisLIF > thisLIFmax/8 && thisLIF < thisLIFmax/6 currentLIF = 4;
else if thisLIF <= thisLIFmax/8 currentLIF = 5;

image_index = currentLIF;
#endregion*/

if isSelected && revealed scrEnemyPrintStats();

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