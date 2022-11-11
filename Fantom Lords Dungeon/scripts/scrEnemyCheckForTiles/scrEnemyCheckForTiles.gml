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
	
	lordTopTop = collision_point(x+32,y-96,oLord0Parent,false,true);
	lordRightRight = collision_point(x+160,y+32,oLord0Parent,false,true);
	lordDownDown = collision_point(x+32,y+160,oLord0Parent,false,true);
	lordLeftLeft = collision_point(x-96,y+32,oLord0Parent,false,true);
	
	lordTopTopLeft = collision_point(x-32,y-96,oLord0Parent,false,true);
	lordTopTopRight = collision_point(x+96,y-96,oLord0Parent,false,true);
	lordRightRightTop = collision_point(x+160,y-32,oLord0Parent,false,true);
	lordRightRightDown = collision_point(x+160,y+96,oLord0Parent,false,true);
	lordDownDownRight = collision_point(x+96,y+160,oLord0Parent,false,true);
	lordDownDownLeft = collision_point(x-32,y+160,oLord0Parent,false,true);
	lordLeftLeftDown = collision_point(x-96,y+96,oLord0Parent,false,true);
	lordLeftLeftTop = collision_point(x-96,y-32,oLord0Parent,false,true);
	
	lordTopTopTop = collision_point(x+32,y-160,oLord0Parent,false,true);
	lordRightRightRight = collision_point(x+224,y+32,oLord0Parent,false,true);
	lordDownDownDown = collision_point(x+32,y+224,oLord0Parent,false,true);
	lordLeftLeftLeft = collision_point(x-160,y+32,oLord0Parent,false,true);
	
	tile1 = collision_point(x+32,y-32,oMap_0parent,false,true);
	tile2 = collision_point(x+96,y+32,oMap_0parent,false,true);
	tile3 = collision_point(x+32,y+96,oMap_0parent,false,true);
	tile4 = collision_point(x-32,y+32,oMap_0parent,false,true);
	tile6 = collision_point(x+96,y-32,oMap_0parent,false,true);
	tile8 = collision_point(x-32,y+96,oMap_0parent,false,true);
	tile10 = collision_point(x+160,y+32,oMap_0parent,false,true);
	tile11 = collision_point(x+32,y+160,oMap_0parent,false,true);
	tile16 = collision_point(x+160,y+96,oMap_0parent,false,true);
	tile17 = collision_point(x+96,y+160,oMap_0parent,false,true);

}