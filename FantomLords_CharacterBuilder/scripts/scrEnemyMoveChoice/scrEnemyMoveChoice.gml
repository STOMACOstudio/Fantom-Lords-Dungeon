// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrEnemyMoveChoice(){
	
	if lordTopLeft != noone || lordTopRight != noone || lordDownRight != noone || lordDownLeft != noone scrEnemyCheckForAttack();
	else if lordTopTop != noone || lordRightRight != noone || lordDownDown != noone || lordLeftLeft != noone scrEnemyCheckForAttack2();
	else if lordTopTopLeft != noone || lordTopTopRight != noone || lordRightRightTop != noone || lordRightRightDown != noone || lordDownDownRight != noone || lordDownDownLeft != noone || lordLeftLeftDown != noone || lordLeftLeftTop != noone scrEnemyCheckForAttack3();
	else if lordTopTopTop != noone || lordRightRightRight != noone || lordDownDownDown != noone || lordLeftLeftLeft != noone scrEnemyCheckForAttack4();
	else  scrEnemyMoveRandom();

}