/// @description Insert description here
// You can write your code in this editor

if room != Room4_Boss
{
	if !filled && empty
	{
		var filling = irandom_range(0,10);
		if filling >= 6
		{
			var chest = irandom_range(0,9);
			if(chest > 8) {
				instance_create_layer(x,y,"Instances",oTreasureChest_Bronze);
			} else {
				var random_creature = choose(oEnemy_Goblin,oEnemy_Eye,oEnemy_Barrell,oTrapSpike);
				//random_creature = oEnemy_Barrell;
				instance_create_layer(x, y, "Instances", random_creature);
			}
		}
		filled = true;
	}
}