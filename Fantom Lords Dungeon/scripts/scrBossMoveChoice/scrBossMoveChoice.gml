// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrBossMoveChoice(){
	
	if lordTopLeft != noone || lordRightRightTop != noone || lordRightRightDownDown != noone || lordDownDownLeft != noone scrBossCheckForAttack();
	else if lordTopTop != noone || lordTopTopRight != noone || lordRightRightRight != noone || lordRightRightRightDown != noone || lordDownDownDown != noone || lordDownDownDownRight != noone || lordLeftLeft != noone || lordLeftLeftDown != noone scrBossCheckForAttack2();
	else if lordTopTopLeft != noone || lordTopTopRightRight != noone || lordRightRightRightTop != noone || lordRightRightRightDownDown != noone || lordDownDownDownRightRight != noone || lordDownDownDownLeft != noone || lordLeftLeftDownDown != noone || lordLeftLeftTop != noone scrBossCheckForAttack3();
	else if lordTopTopTop != noone || lordTopTopTopRight != noone || lordRightRightRightRight != noone || lordRightRightRightRightDown != noone || lordDownDownDownDown != noone || lordDownDownDownDownRight != noone || lordLeftLeftLeft != noone || lordLeftLeftLeftDown != noone scrBossCheckForAttack4();
	else  scrBossMoveRandom();

}