// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrBossCheckForAttack(){

	if !tile1.empty && !tile6.empty && !tile10.empty && !tile16.empty && !tile11.empty && !tile17.empty && !tile8.empty && !tile4.empty scrEnemyForceEndTurn(); //if can't move, turn pass
	else
	{
		actionsRate = 1;
		
		if lordTopLeft != noone || lordRightRightTop != noone || lordRightRightDownDown != noone || lordDownDownLeft != noone
		{
			if tile1.empty && tile6.empty if lordTopLeft != noone || lordRightRightTop != noone canMove = true;			
			if tile10.empty && tile16.empty if lordRightRightTop != noone || lordRightRightDownDown != noone canMove = true;
			if tile11.empty && tile17.empty if lordRightRightDownDown != noone || lordDownDownLeft != noone canMove = true;
			if tile14.empty && tile8.empty if lordDownDownLeft != noone || lordTopLeft != noone canMove = true;
			
			if canMove
			{
				chooseTarget = irandom_range(0,3);
		
				if chooseTarget = 0
				{
					if lordTopLeft != noone
					{
						if (tile1.empty && tile6.empty) || (tile4.empty && tile8.empty)
						{
							chooseMove = irandom_range(0,1)
					
							if chooseMove = 0
							{
								if tile1.empty && tile6.empty scrEnemyWalkUp();
								else chooseMove = 1
							}
							else if chooseMove = 1
							{
								if tile4.empty && tile8.empty scrEnemyWalkLeft();
								else chooseMove = 0
							}
						}
					}
				}
				else if chooseTarget = 1
				{
					if lordRightRightTop != noone
					{
						if (tile1.empty && tile6.empty) || (tile10.empty && tile16.empty)
						{
							chooseMove = irandom_range(0,1)
					
							if chooseMove = 0
							{
								if tile1.empty && tile6.empty scrEnemyWalkUp();
								else chooseMove = 1
							}
							else if chooseMove = 1
							{
								if tile10.empty && tile16.empty scrEnemyWalkRight();
								else chooseMove = 0
							}
						}
					}
				}
				else if chooseTarget = 2
				{
					if lordRightRightDownDown != noone
					{
						if (tile11.empty && tile17.empty) || (tile10.empty && tile16.empty)
						{
							chooseMove = irandom_range(0,1)
					
							if chooseMove = 0
							{
								if tile11.empty && tile17.empty scrEnemyWalkDown();
								else chooseMove = 1
							}
							else if chooseMove = 1
							{
								if tile10.empty && tile16.empty scrEnemyWalkRight();
								else chooseMove = 0
							}
						}
					}
				}
				else if chooseTarget = 3
				{
					if lordDownDownLeft != noone
					{
						if (tile11.empty && tile17.empty) || (tile4.empty && tile8.empty)
						{
							chooseMove = irandom_range(0,1)
					
							if chooseMove = 0
							{
								if tile11.empty && tile17.empty scrEnemyWalkDown();
								else chooseMove = 1
							}
							else if chooseMove = 1
							{
								if tile4.empty && tile8.empty scrEnemyWalkLeft();
								else chooseMove = 0
							}
						}
					}
				}
			}
			else scrEnemyForceEndTurn();
	}
}
