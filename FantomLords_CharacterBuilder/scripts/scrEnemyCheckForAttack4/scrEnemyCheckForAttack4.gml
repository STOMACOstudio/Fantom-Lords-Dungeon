// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrEnemyCheckForAttack4(){

	if tile1.empty || tile2.empty || tile3.empty || tile4.empty
	{
		
		if lordTopTopTop != noone && tile1.empty canMove = true;
		if lordRightRightRight != noone && tile2.empty canMove = true;
		if lordDownDownDown != noone && tile3.empty canMove = true;
		if lordLeftLeftLeft != noone && tile4.empty canMove = true;
		
		if canMove
		{
			chooseTarget = irandom_range(0,3);

			if chooseTarget = 0 && lordTopTopTop != noone
			{
				if tile1.empty scrEnemyWalkUp();
				else chooseTarget = choose(1,2,3);
			}
			else if chooseTarget = 1 && lordRightRightRight != noone
			{
				if tile2.empty scrEnemyWalkRight();
				else chooseTarget = choose(0,2,3);
			}
			else if chooseTarget = 2 && lordDownDownDown != noone
			{
				if tile3.empty scrEnemyWalkDown();
				else chooseTarget = choose(0,1,3);
			}
			else if chooseTarget = 3 && lordLeftLeftLeft != noone
			{
				if tile4.empty scrEnemyWalkLeft();
				else chooseTarget = choose(0,1,2);
			}
		}
		else scrEnemyForceEndTurn();
	}
	else scrEnemyForceEndTurn();
}
