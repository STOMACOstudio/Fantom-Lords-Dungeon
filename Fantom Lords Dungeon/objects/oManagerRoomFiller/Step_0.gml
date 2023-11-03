///// @description Insert description here
//// You can write your code in this editor

//if !isDoorMade
//{
//	var doorPlace = instance_find(oMap_blocktile, irandom(instance_number(oMap_blocktile) - 1));
//	if doorPlace.empty
//	{
//		if global.roomCounter = 3*global.bossBattle instance_create_layer(doorPlace.x,doorPlace.y,"Instances",oDoorBoss);
//		else instance_create_layer(doorPlace.x,doorPlace.y,"Instances",oDoor);
//		isDoorMade = true;
//	}
//}
//else
//{
//	//global.roomCondition = choose( "NO CONDITION" , "FIND THE KEY" , "KILL ALL ENEMIES" , "EXPLORATION" , "REMOVE GARBAGE" /*, "PAY WITH GOLD"*/ );
//	global.roomCondition = "NO CONDITION";
//	instance_destroy();
//}