function attack_target(){
	if(dmgTYPE == thisATK) {
		dmgENEMY = (dmgTYPE + irandom_range(-3,3)) - lordTarget.thisLord_DEF;
	} else if(dmgTYPE = thisMAG) {
		dmgENEMY = (dmgTYPE + irandom_range(-3,3)) - lordTarget.thisLord_MAG;
	};
	if(dmgENEMY <= 0) {
		dmgENEMY = 1;
	}
	
	global.dmgENEMY = dmgENEMY;
	
	audio_play_sound(attackSound,0,false);
	
	instance_create_layer(lordTarget.x,lordTarget.y,"VFX",attackSprite);
	instance_create_layer(lordTarget.x+irandom_range(8,56),lordTarget.y+irandom_range(8,56),"VFX",oGUI_printDMGenemy);
	
	isFighting = false;
	lordTarget.thisLord_LIF -= dmgENEMY;
	
	if(lordTarget.thisLord_LIF <= lordTarget.thisLord_LIFmax/2 && lordTarget.thisLord_LIF > 0) {
		if(collision_point(lordTarget.x,lordTarget.y,oLord1,false,true)) {
			instance_create_layer(oGUI_LordFrame1.x+64,oGUI_LordFrame1.y+16,"VFX",oLord_Baloon3);
		} else if (collision_point(lordTarget.x,lordTarget.y,oLord2,false,true)) {
			instance_create_layer(oGUI_LordFrame2.x+64,oGUI_LordFrame2.y+16,"VFX",oLord_Baloon3);
		} else if(collision_point(lordTarget.x,lordTarget.y,oLord3,false,true)) {
			instance_create_layer(oGUI_LordFrame3.x+64,oGUI_LordFrame3.y+16,"VFX",oLord_Baloon3);
		} else if(collision_point(lordTarget.x,lordTarget.y,oLord4,false,true)) {
			instance_create_layer(oGUI_LordFrame4.x+64,oGUI_LordFrame4.y+16,"VFX",oLord_Baloon3);
		}
	}	
	alarm[0] = alarmCounter;
}

function choose_attack_target(){
	var available_lords = [];
	if(lordTop != noone) { array_push(available_lords, lordTop); }
	if(lordRight != noone) { array_push(available_lords, lordRight); }
	if(lordDown != noone) { array_push(available_lords, lordDown); }
	if(lordLeft != noone) { array_push(available_lords, lordLeft); }
	lordTarget = available_lords[irandom_range(0, array_length(available_lords) - 1)];
	attack_target();
}


function choose_movement() {
	// checks near up/down left/right
	var lord_in_xy_axis_1 = lordTopLeft != noone || lordTopRight != noone || lordDownRight != noone || lordDownLeft != noone;
	// checks one extra block ahead than original lord_in_xy_axis
	var lord_in_xy_axis_2 = lordTopTop != noone || lordRightRight != noone || lordDownDown != noone || lordLeftLeft != noone;
	// ...checks for a lord in a chess-like horse manner...
	var lord_in_xy_axis_3 = lordTopTopLeft != noone || lordTopTopRight != noone || lordRightRightTop != noone || lordRightRightDown != noone || lordDownDownRight != noone || lordDownDownLeft != noone || lordLeftLeftDown != noone || lordLeftLeftTop != noone;
	// same as lord_in_xy_axis_2, but even further
	var lord_in_xy_axis_4 = lordTopTopTop != noone || lordRightRightRight != noone || lordDownDownDown != noone || lordLeftLeftLeft != noone;
	
	if(lord_in_xy_axis_1) {
		scrEnemyCheckForAttack();
	} else if(lord_in_xy_axis_2) {
		scrEnemyCheckForAttack2();
	} else if(lord_in_xy_axis_3) {
		scrEnemyCheckForAttack3();
	} else if(lord_in_xy_axis_4) {
		scrEnemyCheckForAttack4();
	} else {
		scrEnemyMoveRandom();
	}
}

function check_tiles() {
	lordTop = collision_point(x+32,y-32,oLord0Parent,false,true);
	lordRight = collision_point(x+96,y+32,oLord0Parent,false,true);
	lordDown = collision_point(x+32,y+96,oLord0Parent,false,true);
	lordLeft = collision_point(x-32,y+32,oLord0Parent,false,true);
	
	lordTopLeft = collision_point(x-32,y-32,oLord0Parent,false,true);
	lordTopRight = collision_point(x+96,y-32,oLord0Parent,false,true);
	lordDownLeft = collision_point(x-32,y+96,oLord0Parent,false,true);
	lordDownRight = collision_point(x+96,y+96,oLord0Parent,false,true);
	
	lordTopTop = collision_point(x+32,y-96,oLord0Parent,false,true);
	lordRightRight = collision_point(x+160,y+32,oLord0Parent,false,true);
	lordDownDown = collision_point(x+32,y+160,oLord0Parent,false,true);
	lordLeftLeft = collision_point(x-96,y+32,oLord0Parent,false,true);
	
	lordTopTopLeft = collision_point(x-32,y-96,oLord0Parent,false,true);
	lordTopTopRight = collision_point(x+96,y-96,oLord0Parent,false,true);
	lordRightRightTop = collision_point(x+160,y-32,oLord0Parent,false,true);
	lordRightRightDown = collision_point(x+160,y+96,oLord0Parent,false,true);
	lordDownDownRight = collision_point(x+96,y+160,oLord0Parent,false,true);
	lordDownDownLeft = collision_point(x-32,y+160,oLord0Parent,false,true);
	lordLeftLeftDown = collision_point(x-96,y+96,oLord0Parent,false,true);
	lordLeftLeftTop = collision_point(x-96,y-32,oLord0Parent,false,true);
	
	lordTopTopTop = collision_point(x+32,y-160,oLord0Parent,false,true);
	lordRightRightRight = collision_point(x+224,y+32,oLord0Parent,false,true);
	lordDownDownDown = collision_point(x+32,y+224,oLord0Parent,false,true);
	lordLeftLeftLeft = collision_point(x-160,y+32,oLord0Parent,false,true);
	
	tile1 = collision_point(x+32,y-32,oMap_0parent,false,true);
	tile2 = collision_point(x+96,y+32,oMap_0parent,false,true);
	tile3 = collision_point(x+32,y+96,oMap_0parent,false,true);
	tile4 = collision_point(x-32,y+32,oMap_0parent,false,true);
	tile6 = collision_point(x+96,y-32,oMap_0parent,false,true);
	tile8 = collision_point(x-32,y+96,oMap_0parent,false,true);
	tile10 = collision_point(x+160,y+32,oMap_0parent,false,true);
	tile11 = collision_point(x+32,y+160,oMap_0parent,false,true);
	tile16 = collision_point(x+160,y+96,oMap_0parent,false,true);
	tile17 = collision_point(x+96,y+160,oMap_0parent,false,true);
}

function reveal_check() {
	if (revealed) {
		image_alpha = 1;
		if(bestiary_entry != "") {
			struct_set(global, bestiary_entry, true);
		}
	} else {
		image_alpha = 0;
	}
}

function life_check() {
	if(thisLIF <= 0) {
		instance_destroy();
	}
}

function animation_check() {
	if (sleep > 0 || crystalized) {
		image_speed = 0;
	} else { 
		image_speed = 1;
	}
}

function enemy_stats_check() {
	if(isSelected && revealed) {
		scrEnemyPrintStats();
		global.currentSelectedDescription1 = battle_description[0];
		global.currentSelectedDescription2 = battle_description[1];
		global.currentSelectedDescription3 = battle_description[2];
		global.currentStatusColor = statusColor;
	}
}

function action_check() {
	if(!isFighting) { return; };
	if(turnComplete == true) { return; };
	if(actions == 0) { return; };
	var can_do_action = !stun && !crystalized && sleep = 0;
	if(can_do_action) {
		check_tiles(); //check all close lords and tiles
		var lord_is_adjacent  = (
				(lordTop != noone && lordTop.shadow = 0) ||
				(lordRight != noone && lordRight.shadow = 0) ||
				(lordDown != noone && lordDown.shadow = 0) ||
				(lordLeft != noone && lordLeft.shadow = 0)
		);
		canMove = false;
		if(actions >= 2) {
			if(lord_is_adjacent){
				actionsRate = 2;
				dmgTYPE = attack_type;
				choose_attack_target(); //choose a random lord to attack
			} else {
				actionsRate = 1;
				choose_movement(); //if lord is near, move closer; else move random
			}
		} else {
			actionsRate = 1;
			if(lord_is_adjacent) {
				//if(lordTop != noone || lordRight != noone || lordDown != noone || lordLeft != noone) { 
				// copia da qui
				enemy_turn_end_action(self);
				//scrEnemyForceEndTurn();
			} else {
				choose_movement();
			}
		}
	} else {
		if(stun) { stun = false; }; 
		if(sleep > 0) { sleep -= 1 };
		enemy_turn_end_action(self);
		//scrEnemyForceEndTurn();
	}
}

function step() {
	life_check();
	reveal_check();
	animation_check();
	scrEnemyLIFcounter();
	enemy_stats_check();
	action_check();
}