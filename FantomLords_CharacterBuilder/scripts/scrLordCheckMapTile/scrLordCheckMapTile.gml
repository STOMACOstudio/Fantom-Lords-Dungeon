// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrLordCheckMapTile(){
	
var instTopLeft;
instTopLeft = collision_point(x-32,y-32,oMap_blocktile,false,true)
if instTopLeft != noone
{
	instTopLeft.image_index = 1;
	instTopLeft.revealed = true;
}
var instTop;
instTop = collision_point(x+32,y-32,oMap_blocktile,false,true)
if instTop != noone
{
	instTop.image_index = 1;
	instTop.revealed = true;
}
var instTopRight;
instTopRight = collision_point(x+96,y-32,oMap_blocktile,false,true)
if instTopRight != noone
{
	instTopRight.image_index = 1;
	instTopRight.revealed = true;
}
var instRight;
instRight = collision_point(x+96,y+32,oMap_blocktile,false,true)
if instRight != noone
{
	instRight.image_index = 1;
	instRight.revealed = true;
}
var instDownRight;
instDownRight = collision_point(x+96,y+96,oMap_blocktile,false,true)
if instDownRight != noone
{
	instDownRight.image_index = 1;
	instDownRight.revealed = true;
}
var instDown;
instDown = collision_point(x+32,y+96,oMap_blocktile,false,true)
if instDown != noone
{
	instDown.image_index = 1;
	instDown.revealed = true;
}
var instDownLeft;
instDownLeft = collision_point(x-32,y+96,oMap_blocktile,false,true)
if instDownLeft != noone
{
	instDownLeft.image_index = 1;
	instDownLeft.revealed = true;
}
var instLeft;
instLeft = collision_point(x-32,y+32,oMap_blocktile,false,true)
if instLeft != noone
{
	instLeft.image_index = 1;
	instLeft.revealed = true;
}

}