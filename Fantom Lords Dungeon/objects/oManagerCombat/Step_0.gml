/// @description Insert description here
// You can write your code in this editor


// enemy on_map_collision
	// call combat_start()

// on_enemy_death ()
	// call check_combat_end ()

// combat_start ()
	// checks if fightMode is false
	// if not, start fight (create ovFX combat start)
	// start_player_turn()

// on_player_turn_end()
	// start_enemy_turn()

// start_enemy_turn()
	// start_enemy_action() (gets an enemy, and makes them do their action for this turn)

// end_enemy_turn()
	// start_player_turn()

// on enemy_action_end ()
	// check_enemy_turn_end ()

// check_enemy_turn_end ()
	// if enemies still have actions:
		// start_enemy_action() (gets an enemy, and makes them do their action for this turn)
	// else
		// end_enemy_turn()

exit;


if combatPhase = 0
{
	if i2 < instance_number(oEnemy0_Father) //check for revealed enemies
	{
		enemy2[i2] = instance_find(oEnemy0_Father,i2); //array con gli id di ogni nemico
		if enemy2[i2].revealed && !enemy2[i2].obstacle
		{
			if(global.fightMode = false) {
				with(oEnemy0_Father) {
					if(!revealed && !instance_exists(oVFX_Combat)) {
						instance_create_layer(512,224,"VFX",oVFX_Combat);
					}
				}
				// with oEnemy0_Father if !revealed && !instance_exists(oVFX_Combat) instance_create_layer(512,224,"VFX",oVFX_Combat);
			}
		}
		else //se il nemico non è rivelato
		{
			i2++;
		}
	}
	else
	{
		global.fightMode = false;
		i2 = 0;
	}
}
else if combatPhase = 1
{
	i2 = 0;
	global.fightMode = true;
	if i >= instance_number(oEnemy0_Father) //se tutti i nemici sono stati iterati
	{
		with (oEnemy0_Father) //resetta le variabili di tutti i nemici
		{
			turnCompelete = false;
			isFighting = false;
		}
		
		//reset dei punti azioni dei lord
		if instance_exists(oLord1)
		{
			if oLord1.stun > 0 oLord1.stun--;
			else oLord1.thisLord_ACTpoints = oLord1.thisLord_ACTpointsMAX;
		}
		if instance_exists(oLord2)
		{
			if oLord2.stun > 0 oLord2.stun--;
			else oLord2.thisLord_ACTpoints = oLord2.thisLord_ACTpointsMAX;
		}
		if instance_exists(oLord3)
		{
			if oLord3.stun > 0 oLord3.stun--;
			else oLord3.thisLord_ACTpoints = oLord3.thisLord_ACTpointsMAX;
		}
		if instance_exists(oLord4)
		{
			if oLord4.stun > 0 oLord4.stun--;
			else oLord4.thisLord_ACTpoints = oLord4.thisLord_ACTpointsMAX;
		}
		instance_create_layer(512,224,"VFX",oVFX_YourTurn);
		
		fightStart = 0; //contatore di debug
		fightEnd = 0; //contatore di debug
		i  = 0; //reset del contatore dei nemici
		combatPhase = 0; //turno del giocatore
	}
	else //se non tutti i nemici sono stati iterati
	{
		enemy[i] = instance_find(oEnemy0_Father,i); //array con gli id di ogni nemico
		whosfighting = string(enemy[i]); //variabile di debug
		if enemy[i].revealed && !enemy[i].obstacle && !enemy[i].isFighting && !enemy[i].turnComplete //check se il nemico è rivelato sula mappa, non sta né combattendo né ha combattuto
		{
			enemy[i].isFighting = true; //inizializza le azioni del nemico scelto
			if i < instance_number(oEnemy0_Father) i++; //aggiorna la i
			combatPhase = 2; //break del ciclo (vedi in cima combatPhase = 1)
		}
		else //se il nemico non è rivelato o ha già attaccato...
		{
			if(i < instance_number(oEnemy0_Father)) {
				i++; //...check il nemico successivo
			}
		}
	}
}