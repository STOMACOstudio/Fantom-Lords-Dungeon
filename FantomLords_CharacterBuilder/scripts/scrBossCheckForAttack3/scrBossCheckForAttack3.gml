// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrBossCheckForAttack3(){

	if (tile1.empty && tile6.empty) || (tile10.empty && tile16.empty) || (tile11.empty && tile17.empty) || (tile4.empty && tile8.empty)
	{
		
		#region check canMove
		if lordTopTopLeft != noone if (tile1.empty && tile6.empty) || (tile4.empty && tile8.empty) canMove = true;
		if lordTopTopRightRight != noone if (tile1.empty && tile6.empty) || (tile10.empty && tile16.empty) canMove = true;
		if lordRightRightRightTop != noone if (tile1.empty && tile6.empty) || (tile10.empty && tile16.empty) canMove = true;
		if lordRightRightRightDownDown != noone if (tile11.empty && tile17.empty) || (tile10.empty && tile16.empty) canMove = true;
		if lordDownDownDownRightRight != noone if (tile11.empty && tile17.empty) || (tile10.empty && tile16.empty) canMove = true;
		if lordDownDownDownLeft != noone if (tile11.empty && tile17.empty) || (tile4.empty && tile8.empty) canMove = true;
		if lordLeftLeftTop != noone if (tile1.empty && tile6.empty) || (tile4.empty && tile8.empty) canMove = true;
		if lordLeftLeftDownDown != noone if (tile11.empty && tile17.empty) || (tile4.empty && tile8.empty) canMove = true;
		#endregion
		
		if canMove
		{
			chooseTarget = irandom_range(0,3);
			
			if chooseTarget = 0
			{
				if lordTopTopLeft != noone || lordLeftLeftTop != noone
				{
					chooseMove = irandom_range(0,1);
					if chooseMove = 0
					{
						if tile1.empty && tile6.empty scrEnemyWalkUp();
						else chooseMove = 1;
					}
					else if chooseMove = 1
					{
						if tile4.empty && tile8.empty scrEnemyWalkLeft();
						else chooseMove = 0;
					}
				}
				else chooseTarget = choose(1,2,3);
			}
			else if chooseTarget = 1
			{
				if lordTopTopRightRight != noone || lordRightRightRightTop != noone
				{
					chooseMove = irandom_range(0,1);
					if chooseMove = 0
					{
						if tile1.empty && tile6.empty scrEnemyWalkUp();
						else chooseMove = 1;
					}
					else if chooseMove = 1
					{
						if tile10.empty && tile16.empty scrEnemyWalkRight();
						else chooseMove = 0;
					}
				}
				else chooseTarget = choose(0,2,3);
			}
			else if chooseTarget = 2
			{
				if lordRightRightRightDownDown != noone || lordDownDownDownRightRight != noone
				{
					chooseMove = irandom_range(0,1);
					if chooseMove = 0
					{
						if tile11.empty && tile17.empty scrEnemyWalkDown();
						else chooseMove = 1;
					}
					else if chooseMove = 1
					{
						if tile10.empty && tile16.empty scrEnemyWalkRight();
						else chooseMove = 0;
					}
				}
				else chooseTarget = choose(0,1,3);
			}
			else if chooseTarget = 3
			{
				if lordDownDownDownLeft != noone || lordLeftLeftDownDown != noone
				{
					chooseMove = irandom_range(0,1);
					if chooseMove = 0
					{
						if tile11.empty && tile17.empty scrEnemyWalkDown();
						else chooseMove = 1;
					}
					else if chooseMove = 1
					{
						if tile8.empty && tile4.empty scrEnemyWalkLeft();
						else chooseMove = 0;
					}
				}
				else chooseTarget = choose(0,1,3);
			}
		}
		else scrEnemyForceEndTurn();
	}
	else scrEnemyForceEndTurn();
}
