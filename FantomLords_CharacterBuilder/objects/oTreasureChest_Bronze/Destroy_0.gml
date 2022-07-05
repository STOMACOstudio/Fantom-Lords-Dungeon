/// @description Insert description here
// You can write your code in this editor

if isMimic = 11 instance_create_depth(x,y,depth,oEnemy_Mimic);
else
{
	instance_create_layer(x,y,"Instances",choose(oCollectible_StatGem,oCollectible_Potion,oCollectible_GoldS,oCollectible_KeyBronze));

	var choose1 = irandom_range(0,1);
	var choose2 = irandom_range(0,1);
	var choose3 = irandom_range(0,1);
	var choose4 = irandom_range(0,1);

	if choose1 = 1
	{
		var instTop = collision_point(x+32,y-32,oMap_0parent,false,true)
		if instTop != noone
		{
			if instTop.empty && instTop.revealed instance_create_layer(instTop.x,instTop.y,"Instances",choose(oCollectible_StatGem,oCollectible_Potion,oCollectible_GoldS,oCollectible_KeyBronze));
		}
	}
	if choose2 = 1
	{
		var instRight = collision_point(x+96,y+32,oMap_0parent,false,true)
		if instRight != noone
		{
			if instRight.empty && instRight.revealed instance_create_layer(instRight.x,instRight.y,"Instances",choose(oCollectible_StatGem,oCollectible_Potion,oCollectible_GoldS,oCollectible_KeyBronze));
		}
	}
	if choose3 = 1
	{
		var instDown = collision_point(x+32,y+96,oMap_0parent,false,true)
		if instDown != noone
		{
			if instDown.empty && instDown.revealed instance_create_layer(instDown.x,instDown.y,"Instances",choose(oCollectible_StatGem,oCollectible_Potion,oCollectible_GoldS,oCollectible_KeyBronze));
		}
	}
	if choose4 = 1
	{
		var instLeft = collision_point(x-32,y+32,oMap_0parent,false,true)
		if instLeft != noone
		{
			if instLeft.empty && instLeft.revealed instance_create_layer(instLeft.x,instLeft.y,"Instances",choose(oCollectible_StatGem,oCollectible_Potion,oCollectible_GoldS,oCollectible_KeyBronze));
		}
	}
}

if isSelected
{
	global.currentSelectedName = "none";
	global.currentSelectedSprite = "none";
	global.currentSelectedImageIndex = 0;
	global.currentSelectedLIF = 0;
	global.currentSelectedLIFmax = 0;
	global.currentSelectedATK = 0;
	global.currentSelectedDEF = 0;
	global.currentSelectedMAG = 0;
	global.currentSelectedDescription1 = "none";
	global.currentSelectedDescription2 = "none";
	global.currentSelectedDescription3 = "none";
}