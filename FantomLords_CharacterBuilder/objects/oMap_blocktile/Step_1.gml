/// @description Insert description here
// You can write your code in this editor

if collision_rectangle(x,y,x+60,y+60,oLord0Parent,false,true) || collision_rectangle(x,y,x+60,y+60,oEnemy0_Father,false,true)
{
	empty = false;
	stepped = true;
}
else empty = true;

if stepped image_index = 1;