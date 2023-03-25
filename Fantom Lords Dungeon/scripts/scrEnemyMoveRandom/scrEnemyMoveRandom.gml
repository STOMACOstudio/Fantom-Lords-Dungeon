// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrEnemyMoveRandom(){
	
	if tile1.empty || tile2.empty || tile3.empty || tile4.empty canMove = true;
	
	if canMove
	{
		chooseMove = irandom_range(0,3);
	
		if chooseMove = 0 if tile1.empty scrEnemyWalkUp() else chooseMove = choose (1,2,3);
		if chooseMove = 1 if tile2.empty scrEnemyWalkRight() else chooseMove = choose (0,2,3);
		if chooseMove = 2 if tile3.empty scrEnemyWalkDown() else chooseMove = choose (0,1,3);
		if chooseMove = 3 if tile4.empty scrEnemyWalkLeft() else chooseMove = choose (0,1,2);
	}
	else scrEnemyForceEndTurn();
	
	
	
	//var _tile = collision_point(x,y,oMap_0parent,false,true);
	//var in_war_fog = instance_place(x, y, oMap_blocktile_WarFog) != noone;
	//in_war_fog = !_tile.revealed;
	//show_debug_message("in_war_fog: " + string(in_war_fog) );
	//if(in_war_fog) {
	//	instance_deactivate_object(id);
	//}
	
}