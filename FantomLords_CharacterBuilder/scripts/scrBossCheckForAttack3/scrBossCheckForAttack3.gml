// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrBossCheckForAttack3(){

	if tile1.empty || tile2.empty || tile3.empty || tile4.empty
	{
		
		if lordTopTopLeft != noone || lordLeftLeftTop != noone if tile1.empty || tile4.empty canMove = true;
		if lordTopTopRight != noone || lordRightRightTop != noone if tile1.empty || tile2.empty canMove = true;
		if lordRightRightDown != noone || lordDownDownRight != noone if tile2.empty || tile3.empty canMove = true;
		if lordDownDownLeft != noone || lordLeftLeftDown != noone if tile3.empty || tile4.empty canMove = true;
		
		if canMove
		{
			chooseTarget = irandom_range(0,3);

			if chooseTarget = 0
			{
				if lordTopTopLeft != noone || lordTopTopRight != noone || lordLeftLeftTop != noone || lordRightRightTop != noone
				{
					if tile1.empty scrEnemyWalkUp();
					else chooseTarget = choose(1,2,3);
				}
			}
			else if chooseTarget = 1
			{
				if lordTopTopRight != noone || lordRightRightTop != noone || lordRightRightDown != noone || lordDownDownRight != noone
				{
					if tile2.empty scrEnemyWalkRight();
					else chooseTarget = choose(0,2,3);
				}
			}
			else if chooseTarget = 2
			{
				if lordRightRightDown != noone || lordDownDownRight != noone || lordDownDownLeft != noone || lordLeftLeftDown != noone
				{
					if tile3.empty scrEnemyWalkDown();
					else chooseTarget = choose(0,1,3);
				}
			}
			else if chooseTarget = 3
			{
				if lordDownDownLeft != noone || lordLeftLeftDown != noone || lordLeftLeftTop != noone || lordTopTopLeft != noone
				{
					if tile4.empty scrEnemyWalkLeft();
					else chooseTarget = choose(0,1,2);
				}
			}
		}
		else scrEnemyForceEndTurn();
	}
	else scrEnemyForceEndTurn();
}
