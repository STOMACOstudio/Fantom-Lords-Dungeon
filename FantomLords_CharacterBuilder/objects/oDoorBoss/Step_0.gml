/// @description Insert description here
// You can write your code in this editor

if instance_exists(oLord1)
{
	if oLordStats.lord1active && collision_rectangle(x-96,y-96,x+160,y+160,oLord1,false,true) != noone lord1 = 0;
	else lord1 = 1;
}
else lord1 = 0;
if instance_exists(oLord2)
{
	if oLordStats.lord2active && collision_rectangle(x-96,y-96,x+160,y+160,oLord2,false,true) != noone lord2 = 0;
	else lord2 = 1;
}
else lord2 = 0;
if instance_exists(oLord3)
{
	if oLordStats.lord3active && collision_rectangle(x-96,y-96,x+160,y+160,oLord3,false,true) != noone lord3 = 0;
	else lord3 = 1;
}
else lord3 = 0;
if instance_exists(oLord4)
{
	if oLordStats.lord4active && collision_rectangle(x-96,y-96,x+160,y+160,oLord4,false,true) != noone lord4 = 0;
	else lord4 = 1;
}
else lord4 = 0;

nextRoom = lord1 + lord2 + lord3 + lord4;

if room != Room4_Boss
{
	if global.roomCondition = "NO CONDITION" && !open open = true;
	else if global.roomCondition = "KILL ALL ENEMIES" && !open
	{
		var enemies = instance_number(oEnemy_Goblin) + instance_number(oEnemy_Eye);
		if enemies = 0 open = true;
	}
	else if global.roomCondition = "REMOVE GARBAGE"  && !open
	{
		var garbage = instance_number(oEnemy_Barrell);
		if garbage = 0 open = true;
		else open = false;
	}
	else if global.roomCondition = "EXPLORATION"  && !open
	{
		if global.tileNumber <= instance_number(oMap_blocktileBlocked) open = true;
	}
}
else open = true;

if open image_index = 1;
else image_index = 0;

if open image_index = 1;
else image_index = 0;
