/// @description Insert description here
// You can write your code in this editor

if instance_exists(oLord1) lord1 = 1;
else lord1 = 0;
if instance_exists(oLord2) lord2 = 1;
else lord2 = 0;
if instance_exists(oLord3) lord3 = 1;
else lord3 = 0;
if instance_exists(oLord4) lord4 = 1;
else lord4 = 0;

nextRoom = lord1 + lord2 + lord3 + lord4;

if global.roomCondition = "NO CONDITION" && open != true open = true;
else if global.roomCondition = "KILL ALL ENEMIES"
{
	var enemies = instance_number(oEnemy_Goblin);
	if enemies = 0 open = true;
}
else if global.roomCondition = "REMOVE GARBAGE"
{
	var garbage = instance_number(oEnemy_Barrell);
	if garbage = 0 open = true;
	else open = false;
}
else if global.roomCondition = "EXPLORATION"
{
	return;
}