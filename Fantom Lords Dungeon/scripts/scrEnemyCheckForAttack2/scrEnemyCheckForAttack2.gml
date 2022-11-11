// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrEnemyCheckForAttack2(){

	if tile1.empty || tile2.empty || tile3.empty || tile4.empty
	{
		
		if lordTopTop != noone && tile1.empty canMove = true;
		if lordRightRight != noone && tile2.empty canMove = true;
		if lordDownDown != noone && tile3.empty canMove = true;
		if lordLeftLeft != noone && tile4.empty canMove = true;
		
		if canMove
		{
			chooseTarget = irandom_range(0,3);

			if chooseTarget = 0 && lordTopTop != noone
			{
				if tile1.empty scrEnemyWalkUp();
				else chooseTarget = choose(1,2,3);
			}
			else if chooseTarget = 1 && lordRightRight != noone
			{
				if tile2.empty scrEnemyWalkRight();
				else chooseTarget = choose(0,2,3);
			}
			else if chooseTarget = 2 && lordDownDown != noone
			{
				if tile3.empty scrEnemyWalkDown();
				else chooseTarget = choose(0,1,3);
			}
			else if chooseTarget = 3 && lordLeftLeft != noone
			{
				if tile4.empty scrEnemyWalkLeft();
				else chooseTarget = choose(0,1,2);
			}
		}
		else scrEnemyForceEndTurn();
	}
	else scrEnemyForceEndTurn();
}
