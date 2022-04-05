// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrBossCheckForAttack2(){

	if (tile1.empty && tile6.empty) || (tile10.empty && tile16.empty) || (tile11.empty && tile17.empty) || (tile4.empty && tile8.empty)
	{
		#region check canMove
		if lordTopTop != noone if tile1.empty && tile6.empty canMove = true;
		if lordTopTopRight != noone if tile1.empty && tile6.empty canMove = true;
		if lordRightRightRight != noone if tile10.empty && tile16.empty canMove = true;
		if lordRightRightRightDown != noone if tile10.empty && tile16.empty canMove = true;
		if lordDownDownDown != noone if tile11.empty && tile17.empty canMove = true;
		if lordDownDownDownRight != noone if tile11.empty && tile17.empty canMove = true;
		if lordLeftLeft != noone if tile4.empty && tile8.empty canMove = true;
		if lordLeftLeftDown != noone if tile4.empty && tile8.empty canMove = true;
		#endregion
		
		if canMove
		{
			chooseTarget = irandom_range(0,7);

			if chooseTarget = 0 && lordTopTop != noone
			{
				if tile1.empty && tile6.empty scrEnemyWalkUp();
				else chooseTarget = choose(1,2,3,4,5,6,7);
			}
			else if chooseTarget = 4 && lordTopTopRight != noone
			{
				if tile1.empty && tile6.empty scrEnemyWalkUp();
				else chooseTarget = choose(0,2,3,1,5,6,7);
			}
			else if chooseTarget = 1 && lordRightRightRight != noone
			{
				if tile10.empty && tile16.empty scrEnemyWalkRight();
				else chooseTarget = choose(0,2,3,4,5,6,7);
			}
			else if chooseTarget = 5 && lordRightRightRightDown != noone
			{
				if tile10.empty && tile16.empty scrEnemyWalkRight();
				else chooseTarget = choose(0,2,3,4,1,6,7);
			}
			else if chooseTarget = 2 && lordDownDownDown != noone
			{
				if tile11.empty && tile17.empty scrEnemyWalkDown();
				else chooseTarget = choose(0,1,3,4,5,6,7);
			}
			else if chooseTarget = 6 && lordDownDownDownRight != noone
			{
				if tile11.empty && tile17.empty scrEnemyWalkDown();
				else chooseTarget = choose(0,1,3,4,5,2,7);
			}
			else if chooseTarget = 3 && lordLeftLeft != noone
			{
				if tile4.empty && tile8.empty scrEnemyWalkLeft();
				else chooseTarget = choose(0,1,2,4,5,6,7);
			}
			else if chooseTarget = 7 && lordLeftLeftDown != noone
			{
				if tile4.empty && tile8.empty scrEnemyWalkLeft();
				else chooseTarget = choose(0,1,2,4,5,6,3);
			}
		}
		else scrEnemyForceEndTurn();
	}
	else scrEnemyForceEndTurn();
}
