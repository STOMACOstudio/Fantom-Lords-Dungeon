/// @description Insert description here
// You can write your code in this editor

if !filled && empty
{
	var filling = irandom_range(0,10);
	if filling >= 8
	{
		instance_create_layer(x,y,"Instances",choose(oEnemy_Goblin,oEnemy_Barrell,oTreasureChest_Bronze,oTrapSpike));
	}
	filled = true;
}