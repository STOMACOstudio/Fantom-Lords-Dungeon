/// @description Insert description here
// You can write your code in this editor

#region bloodshed
var currentLIF = 0;

if thisLIF = thisLIFmax currentLIF = 0;
else if thisLIF >= thisLIFmax/2 && thisLIF < thisLIFmax currentLIF = 1;
else if thisLIF > thisLIFmax/4 && thisLIF < thisLIFmax/2 currentLIF = 2;
else if thisLIF > thisLIFmax/6 && thisLIF < thisLIFmax/4 currentLIF = 3;
else if thisLIF > thisLIFmax/8 && thisLIF < thisLIFmax/6 currentLIF = 4;
else if thisLIF <= thisLIFmax/8 currentLIF = 5;

image_index = currentLIF;
#endregion

if revealed
{
	lordTop1 = collision_point(x+32,y-32,oLord0Parent,false,true);
	lordTop2 = collision_point(x+96,y-32,oLord0Parent,false,true);
	lordRight1 = collision_point(x+160,y+32,oLord0Parent,false,true);
	lordRight2 = collision_point(x+160,y+96,oLord0Parent,false,true);
	lordDown1 = collision_point(x+32,y+160,oLord0Parent,false,true);
	lordDown2 = collision_point(x+96,y+160,oLord0Parent,false,true);
	lordLeft1 = collision_point(x-32,y+32,oLord0Parent,false,true);
	lordLeft2 = collision_point(x-32,y+96,oLord0Parent,false,true);
}

if isSelected && revealed
{
	global.currentSelectedName = thisName;
	global.currentSelectedSprite = sprite_index;
	global.currentSelectedLIF = thisLIF;
	global.currentSelectedLIFmax = thisLIFmax;
	global.currentSelectedATK = thisMAG;
	global.currentSelectedDEF = thisDEF;
	global.currentSelectedMAG = thisMAG;
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
			dmgTYPE = thisMAG;
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
