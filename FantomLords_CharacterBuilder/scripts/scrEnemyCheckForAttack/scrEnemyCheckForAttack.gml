// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrEnemyCheckForAttack(){

	if !tile1.empty && !tile2.empty && !tile3.empty && !tile4.empty && !tile5.empty && !tile6.empty && !tile7.empty && !tile8.empty scrEnemyForceEndTurn(); //if can't move, turn pass
	else
	{
		actionsRate = 1;
		
		if lordTopLeft != noone || lordTopRight != noone || lordDownLeft != noone || lordDownRight != noone
		{
			if tile1.empty || tile2.empty || tile3.empty || tile4.empty
			{
				
				if lordTopLeft != noone if tile1.empty || tile4.empty canMove = true;
				if lordTopRight != noone if tile1.empty || tile2.empty canMove = true;
				if lordDownLeft != noone if tile3.empty || tile4.empty canMove = true;
				if lordDownRight != noone if tile2.empty || tile3.empty canMove = true;
				
				if canMove
				{
					chooseTarget = irandom_range(0,3);
		
					if chooseTarget = 0 && lordTopLeft != noone
					{
						if tile1.empty || tile4.empty
						{
							chooseMove = irandom_range(0,1)
					
							if chooseMove = 0
							{
								if tile1.empty scrEnemyWalkUp();
								else chooseMove = 1
							}
							else if chooseMove = 1
							{
								if tile4.empty scrEnemyWalkLeft();
								else chooseMove = 0
							}
						}
					}
					else if chooseTarget = 1 && lordTopRight != noone
					{
						if tile1.empty || tile2.empty
						{
							chooseMove = irandom_range(0,1)
					
							if chooseMove = 0
							{
								if tile1.empty scrEnemyWalkUp();
								else chooseMove = 1
							}
							else if chooseMove = 1
							{
								if tile2.empty scrEnemyWalkRight();
								else chooseMove = 0
							}
						}
					}
					else if chooseTarget = 2 && lordDownLeft != noone
					{
						if tile3.empty || tile4.empty
						{
							chooseMove = irandom_range(0,1)
					
							if chooseMove = 0
							{
								if tile3.empty scrEnemyWalkDown();
								else chooseMove = 1
							}
							else if chooseMove = 1
							{
								if tile4.empty scrEnemyWalkLeft();
								else chooseMove = 0
							}
						}
					}
					else if chooseTarget = 3 && lordDownRight != noone
					{
						if tile2.empty || tile3.empty
						{
							chooseMove = irandom_range(0,1)
					
							if chooseMove = 0
							{
								if tile2.empty scrEnemyWalkRight();
								else chooseMove = 1
							}
							else if chooseMove = 1
							{
								if tile3.empty scrEnemyWalkDown();
								else chooseMove = 0
							}
						}
					}
				}
				else scrEnemyForceEndTurn();
			}
		}
	}
}