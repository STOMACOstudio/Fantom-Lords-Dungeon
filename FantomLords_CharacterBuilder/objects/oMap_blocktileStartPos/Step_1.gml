/// @description Insert description here
// You can write your code in this editor

if collision_point(x+32,y+32,oLord0Parent,false,true) ^^ collision_point(x+32,y+32,oEnemy0_Father,false,true)
empty = false;
else if !collision_point(x+32,y+32,oLord0Parent,false,true) && !collision_point(x+32,y+32,oEnemy0_Father,false,true)
empty = true;

if collision_point(x+32,y+32,oLord0Parent,false,true) && !stepped
{
	image_index = 1;
	stepped = true;
}