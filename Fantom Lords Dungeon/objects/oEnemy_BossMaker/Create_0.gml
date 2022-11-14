/// @description Insert description here
// You can write your code in this editor

if (global.roomType = "Sewers")
{
	instance_create_layer(x,y,"Instances", choose(oEnemy_BossLizard,oEnemy_BossEye));
}
else if (global.roomType = "Prison")
{
	instance_create_layer(x,y,"Instances", choose(oEnemy_BossShadeKing,oEnemy_BossSkeletonKing));
}
instance_destroy();