/// @description Insert description here
// You can write your code in this editor

if !global.fightMode image_index = 0;
else
{
	if oManagerCombat.combatPhase = 0 image_index = 1;
	else image_index = 2;
}
