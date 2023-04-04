/// @description Insert description here
// You can write your code in this editor

if (revealed)
{
	image_alpha = 1;
	if (!global.bestiarySandScorpionDiscovered)
	{
		global.bestiarySandScorpionDiscovered = true;
	}
}
else
{
	image_alpha = 0;
}

if (sleep > 0 || crystalized) image_speed = 0;
else image_speed = 1;

scrEnemyLIFcounter();

if isSelected && revealed
{
	scrEnemyPrintStats();
	global.currentSelectedDescription1 = "They can";
	global.currentSelectedDescription2 = "hide in the";
	global.currentSelectedDescription3 = "sand.";
	global.currentStatusColor = statusColor;
}

if isFighting && !turnComplete && actions > 0
{
	if (!stun && !crystalized && sleep = 0)
	{
		scrEnemyCheckForTiles(); //check all close lords and tiles
		canMove = false;
	
		if actions >= 2
		{
			if (lordTop != noone && lordTop.shadow = 0) || (lordRight != noone && lordRight.shadow = 0) || (lordDown != noone && lordDown.shadow = 0) || (lordLeft != noone && lordLeft.shadow = 0)
			{
				actionsRate = 2;
				dmgTYPE = thisATK;
				chooseTarget = irandom_range(0,3);
	
		if chooseTarget = 0 && lordTop != noone
		{
			lordTarget = lordTop;
			var chooseAttack = irandom_range(0,1);
			if (chooseAttack == 1) {
				attack_tail();
			}
			else
			{
				scrEnemyAttack();
			}
		}
		else if chooseTarget = 1 && lordRight != noone
		{
			lordTarget = lordRight;
			var chooseAttack = irandom_range(0,1);
			if (chooseAttack == 1) {
				attack_tail();
			}
			else
			{
				scrEnemyAttack();
			}
		}
		else if chooseTarget = 2 && lordDown != noone
		{
			lordTarget = lordDown;
			var chooseAttack = irandom_range(0,1);
			if (chooseAttack == 1) {
				attack_tail();
			}
			else
			{
				scrEnemyAttack();
			}
		}
		else if chooseTarget = 3 && lordLeft != noone
		{
			lordTarget = lordLeft;
			var chooseAttack = irandom_range(0,1);
			if (chooseAttack == 1) {
				attack_tail();
			}
			else
			{
				scrEnemyAttack();
			}
		}
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
		
			if(lordTop != noone || lordRight != noone || lordDown != noone || lordLeft != noone) { 
				// copia da qui
				enemy_turn_end_action(self);
				//scrEnemyForceEndTurn();
			} else {
				scrEnemyMoveChoice();
			}
		}
	}
	else
	{
		if stun stun = false
		if sleep > 0 sleep --;
		enemy_turn_end_action(self);
		//scrEnemyForceEndTurn();
	}
}