/// @description Insert description here
// You can write your code in this editor


//if combatPhase = 0 turno del giocatore

if combatPhase = 1
{
	if i >= instance_number(oEnemy0_Father) //se tutti i nemici sono stati iterati
	{
		with (oEnemy0_Father) //resetta le variabili di tutti i nemici
		{
			turnCompelete = false;
			isFighting = false;
		}
		
		//reset dei punti azioni dei lord
		if instance_exists(oLord1) oLord1.thisLord_ACTpoints = oLord1.thisLord_ACTpointsMAX;
		if instance_exists(oLord2) oLord2.thisLord_ACTpoints = oLord2.thisLord_ACTpointsMAX;
		if instance_exists(oLord3) oLord3.thisLord_ACTpoints = oLord3.thisLord_ACTpointsMAX;
		if instance_exists(oLord4) oLord4.thisLord_ACTpoints = oLord4.thisLord_ACTpointsMAX;
		
		fightStart = 0; //contatore di debug
		fightEnd = 0; //contatore di debug
		i  = 0; //reset del contatore dei nemici
		draw_i = i; //variabile di debug per vedere "i" a schermo
		combatPhase = 0; //turno del giocatore
	}
	else //se non tutti i nemici sono stati iterati
	{
		enemy[i] = instance_find(oEnemy0_Father,i); //array con gli id di ogni nemico
		whosfighting = string(enemy[i]); //variabile di debug
		draw_i = i; //funzione di debug
		if enemy[i].revealed && !enemy[i].isFighting && !enemy[i].turnComplete //check se il nemico è rivelatot sula mappa, non sta né combattendo né ha combattuto
		{
			enemy[i].isFighting = true; //inizializza le azioni del nemico scelto
			if i < instance_number(oEnemy0_Father) i++; //aggiorna la i
			combatPhase = 2; //break del ciclo (vedi in cima combatPhase = 1)
		}
		else //se il nemico non è rivelato o ha già attaccato...
		{
			if i < instance_number(oEnemy0_Father) i++; //...check il nemico successivo
		}
	}
}