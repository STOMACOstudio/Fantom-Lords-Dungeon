
// enemy_on_map_collision(self);
//

function check_fight_end() {
	show_debug_message("---> check_fight_end()");
	var enemies = get_all_enemies();
	var revealed_enemies = array_filter(enemies, function(element, index) {
		var is_obstacle = element.obstacle;
		var revealed = element.revealed;
		return revealed && !is_obstacle;
	});
	global.revealdEnemies = array_length(revealed_enemies);
	// if the last enemy calls destroy(), 
	// and then calls this function, 
	// they will be the last enemy on stage,
	// this will bring issues if called from other sites rather than monster.destroy()
	if(global.revealdEnemies <= 1 ) { 
		show_debug_message("---> fight ended!");
		global.fightMode = false;
		global.combatActive = false;
	}
}

function enemy_on_map_collision(enemy) {
	show_debug_message("---> enemy_on_map_collision()");
	enemy.revealed = true;
	if(enemy.obstacle == true) { return; }
	oManagerCombat.combat_start();
}

// starts the turn of an enemy, if any, if no other enemies are still on their turn
function next_enemy_turn() {
	show_debug_message("---> next_enemy_turn()");
	var enemies = get_all_enemies();
	var enemies_on_queue = array_filter(enemies, function(element, index) {
		var ended_turn = element.turnCompelete;
		var is_obstacle = element.obstacle;
		var revealed = element.revealed;
		return revealed && !is_obstacle && !ended_turn;
	});
	if(array_length(enemies_on_queue) > 0) {
		show_debug_message("---> more enemies have yet to end their actions...");
		var next_enemy = enemies_on_queue[0];
		enemy_turn_start_action(next_enemy);
		// next_turn
	} else {
		show_debug_message("---> no more enemy actions! starting lord turn...");
		start_player_turn();
		// end_enemy_turn
	}
	// oManagerCombat.combatPhase = 1;	
}

function enemy_turn_start_action(enemy) {
	show_debug_message("---> enemy_turn_start_action()");
	enemy.isFighting = true;
}

function enemy_turn_end_action(enemy) {
	show_debug_message("---> enemy_turn_end_action()");
	enemy.actions = 0;
	enemy.isFighting = false;
	if(enemy.poison) {
		global.dmgENEMY = round(enemy.thisLIFmax/10);
		audio_play_sound(sn_SKILL_Poison,0,false);
		instance_create_layer(x + irandom_range(8,56), y + irandom_range(8,56), "VFX", oGUI_printDMGenemy);
		enemy.thisLIF -= round(enemy.thisLIFmax/10);
	}
	if(enemy.weaken > 0) {
		if(enemy.weaken > 1) {
			enemy.weaken--;
		} else if(weaken == 1) {
			enemy.weaken--;
			enemy.thisATK = enemy.thisATKmax;
			enemy.thisDEF = enemy.thisDEFmax;
			enemy.thisMAG = enemy.thisMAGmax;
		}
	}
	enemy.turnCompelete = true;
	// oManagerCombat.combatPhase = 1;
	next_enemy_turn();
}

function get_all_enemies() {
	show_debug_message("---> get_all_enemies()");
	var enemies = [];
	for (var i = 0; i < instance_number(oEnemy0_Father); i++;) {
		array_push(enemies, instance_find(oEnemy0_Father, i));
	}
	return enemies;
}

function start_player_turn() {
	show_debug_message("---> start_player_turn()");
	reset_enemy_combat();
	reset_lords_combat();
	oManagerCombat.combatPhase = 0
	// fightStart = 0; //contatore di debug
	//	fightEnd = 0; //contatore di debug
	//	i  = 0; //reset del contatore dei nemici
	//	combatPhase = 0; //turno del giocatore
	instance_create_layer(512,224,"VFX",oVFX_YourTurn);
}

function reset_enemy_combat() {
	show_debug_message("---> reset_enemy_combat()");
	with (oEnemy0_Father) {
		turnCompelete = false;
		isFighting = false;
	}
}

function reset_lords_combat() {
	show_debug_message("---> reset_lords_combat()");
	if(instance_exists(oLord1)) {
		if(oLord1.stun > 0) {
			oLord1.stun--;
		} else {
			oLord1.thisLord_ACTpoints = oLord1.thisLord_ACTpointsMAX;
		}
	}
	if(instance_exists(oLord2)) {
		if(oLord2.stun > 0) {
			oLord2.stun--;
		} else {
			oLord2.thisLord_ACTpoints = oLord2.thisLord_ACTpointsMAX;
		}
	}
	if(instance_exists(oLord3)) {
		if(oLord3.stun > 0) {
			oLord3.stun--;
		} else {
			oLord3.thisLord_ACTpoints = oLord3.thisLord_ACTpointsMAX;
		}
	}
	if(instance_exists(oLord4)) {
		if(oLord4.stun > 0) {
			oLord4.stun--;
		} else {
			oLord4.thisLord_ACTpoints = oLord4.thisLord_ACTpointsMAX;
		}
	}
}