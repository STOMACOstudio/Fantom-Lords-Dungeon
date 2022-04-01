// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrEnemyCheckForTiles(){
	
	lordTop = collision_point(x+32,y-32,oLord0Parent,false,true);
	lordRight = collision_point(x+96,y+32,oLord0Parent,false,true);
	lordDown = collision_point(x+32,y+96,oLord0Parent,false,true);
	lordLeft = collision_point(x-32,y+32,oLord0Parent,false,true);
	
	lordTopLeft = collision_point(x-32,y-32,oLord0Parent,false,true);
	lordTopRight = collision_point(x+96,y-32,oLord0Parent,false,true);
	lordDownLeft = collision_point(x-32,y+96,oLord0Parent,false,true);
	lordDownRight = collision_point(x+96,y+96,oLord0Parent,false,true);
	
	tile1 = collision_point(x+32,y-32,oMap_0parent,false,true);
	tile2 = collision_point(x+96,y+32,oMap_0parent,false,true);
	tile3 = collision_point(x+32,y+96,oMap_0parent,false,true);
	tile4 = collision_point(x-32,y+32,oMap_0parent,false,true);
	
	tile5 = collision_point(x-32,y-32,oMap_0parent,false,true);
	tile6 = collision_point(x+96,y-32,oMap_0parent,false,true);
	tile7 = collision_point(x+96,y+96,oMap_0parent,false,true);
	tile8 = collision_point(x-32,y+96,oMap_0parent,false,true);

}