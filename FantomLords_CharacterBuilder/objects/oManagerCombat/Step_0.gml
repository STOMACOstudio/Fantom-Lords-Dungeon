/// @description Insert description here
// You can write your code in this editor

if combatPhase = 1
{
	if i >= (instance_number(oEnemy0_Father) - 1)
	{
		with (oEnemy0_Father)
		{
			turnCompelete = false;
			isFighting = false;
		}
		
		if instance_exists(oLord1) oLord1.thisLord_ACTpoints = oLord1.thisLord_ACTpointsMAX;
		if instance_exists(oLord2) oLord2.thisLord_ACTpoints = oLord2.thisLord_ACTpointsMAX;
		if instance_exists(oLord3) oLord3.thisLord_ACTpoints = oLord3.thisLord_ACTpointsMAX;
		if instance_exists(oLord4) oLord4.thisLord_ACTpoints = oLord4.thisLord_ACTpointsMAX;
		
		fightStart = 0;
		fightEnd = 0;
		i  = 0;
		draw_i = i;
		combatPhase = 0;
	}
	else
	{
		enemy[i] = instance_find(oEnemy0_Father,i);
		whosfighting = string(enemy[i]);
		draw_i = i;
		if enemy[i].revealed && !enemy[i].isFighting && !enemy[i].turnComplete
		{
			enemy[i].isFighting = true;
			if i < (instance_number(oEnemy0_Father) - 1) i++;
			combatPhase = 2;
		}
		else
		{
			if i < (instance_number(oEnemy0_Father) - 1) i++;
		}
	}
}