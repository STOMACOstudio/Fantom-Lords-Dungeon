/// @description Insert description here
// You can write your code in this editor


if collision_rectangle(x,y,x+60,y+60,oLord0Parent,false,true) || collision_rectangle(x,y,x+60,y+60,oEnemy0_Father,false,true)
	{
		empty = false;
	}
else if collision_rectangle(x,y,x+60,y+60,oDoor,false,true)
	{
		if oDoor.open empty = true;
		else empty = false;
	}
else if !collision_rectangle(x,y,x+60,y+60,oLord0Parent,false,true) && !collision_rectangle(x,y,x+60,y+60,oEnemy0_Father,false,true) && !collision_rectangle(x,y,x+60,y+60,oDoor,false,true) empty = true;
if collision_rectangle(x,y,x+60,y+60,oLord0Parent,false,true) && !stepped
	{
		image_index = 1;
		stepped = true;
	}
