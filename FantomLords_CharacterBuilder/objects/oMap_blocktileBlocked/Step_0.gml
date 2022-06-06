/// @description Insert description here
// You can write your code in this editor

if !revealed
{
         if collision_point(x-32,y-32,oLord0Parent,false,true) revealed = true;
    else if collision_point(x+32,y-32,oLord0Parent,false,true) revealed = true;
    else if collision_point(x+96,y-32,oLord0Parent,false,true) revealed = true;
    else if collision_point(x+96,y+32,oLord0Parent,false,true) revealed = true;
    else if collision_point(x+96,y+96,oLord0Parent,false,true) revealed = true;
    else if collision_point(x+32,y+96,oLord0Parent,false,true) revealed = true;
    else if collision_point(x-32,y+96,oLord0Parent,false,true) revealed = true;
    else if collision_point(x-32,y+32,oLord0Parent,false,true) revealed = true;
}

image_blend = global.roomColor;

if revealed image_alpha = 1;