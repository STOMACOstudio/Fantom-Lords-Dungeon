/// @description Insert description here
// You can write your code in this editor

if room != Room4_BossPrison
{
	if !filled && empty
	{
		var filling = irandom_range(0,10);
		if filling >= 6
		{
			var chest = irandom_range(0,9);
			if chest > 8 instance_create_layer(x,y,"Instances",oTreasureChest_Bronze);
			else instance_create_layer(x,y,"Instances",choose(oEnemy_Bat,oEnemy_Skeleton,oEnemy_Shade,oEnemy_Barrell,oTrapSpike));
		}
		filled = true;
	}
}