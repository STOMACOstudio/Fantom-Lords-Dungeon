// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrBossMoveRandom(){
	
	if (tile1.empty && tile6.empty) || (tile10.empty && tile16.empty) || (tile11.empty && tile17.empty) || (tile4.empty && tile8.empty) canMove = true;
	
	if canMove
	{
		chooseMove = irandom_range(0,3);
	
		if chooseMove = 0 if tile1.empty && tile6.empty scrEnemyWalkUp() else chooseMove = choose (1,2,3);
		if chooseMove = 1 if tile10.empty && tile16.empty scrEnemyWalkRight() else chooseMove = choose (0,2,3);
		if chooseMove = 2 if tile11.empty && tile17.empty scrEnemyWalkDown() else chooseMove = choose (0,1,3);
		if chooseMove = 3 if tile4.empty && tile8.empty scrEnemyWalkLeft() else chooseMove = choose (0,1,2);
	}
	else scrEnemyForceEndTurn();
	
}