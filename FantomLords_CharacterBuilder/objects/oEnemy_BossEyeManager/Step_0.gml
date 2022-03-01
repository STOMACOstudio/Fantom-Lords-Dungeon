/// @description Insert description here
// You can write your code in this editor

if instance_number(oEnemy_Eye) <= 0
{
	instance_create_layer(514,64,"Instances",oDoor);
	instance_destroy();
}