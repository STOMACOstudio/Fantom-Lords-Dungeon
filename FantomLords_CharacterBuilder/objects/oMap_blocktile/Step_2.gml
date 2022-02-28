/// @description Insert description here
// You can write your code in this editor

if room != Room4_Boss
{
	if !filled && empty
	{
		var filling = irandom_range(0,10);
		if filling >= 8
		{
			var chest = irandom_range(0,9);
			if chest = 9 instance_create_layer(x,y,"Instances",oTreasureChest_Bronze);
			else instance_create_layer(x,y,"Instances",choose(oEnemy_Goblin,oEnemy_Eye,oEnemy_Barrell,oTrapSpike));
		}
		filled = true;
	}
}