/// @description Insert description here
// You can write your code in this editor

 if !isDoorMade
{
	var doorPlace = instance_find(oMap_blocktile, irandom(instance_number(oMap_blocktile) - 1));
	if doorPlace.empty
	{
		instance_create_layer(doorPlace.x,doorPlace.y,"Instances",oDoor);
		isDoorMade = true;
	}
}