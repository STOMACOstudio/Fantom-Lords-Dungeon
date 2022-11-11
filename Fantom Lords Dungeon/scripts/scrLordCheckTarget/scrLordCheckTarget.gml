// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrLordCheckTarget(){
	
	if thisLord_typeAttack == "MELEE"
	{
		enemyTop = collision_point(x+32,y-32,oEnemy0_Father,false,true);
		enemyRight = collision_point(x+96,y+32,oEnemy0_Father,false,true);
		enemyDown = collision_point(x+32,y+96,oEnemy0_Father,false,true)
		enemyLeft = collision_point(x-32,y+32,oEnemy0_Father,false,true);
	
		if enemyTop != noone enemyTop.target = true;
		if enemyRight != noone enemyRight.target = true;
		if enemyDown != noone enemyDown.target = true;
		if enemyLeft != noone enemyLeft.target = true;
	}
	else if thisLord_typeAttack == "MAGIC"
	{
		enemyTopLeft = collision_point(x-32,y-32,oEnemy0_Father,false,true);
		enemyTop = collision_point(x+32,y-32,oEnemy0_Father,false,true);
		enemyTopRight = collision_point(x+96,y-32,oEnemy0_Father,false,true);
		enemyRight = collision_point(x+96,y+32,oEnemy0_Father,false,true);
		enemyDownRight = collision_point(x+96,y+96,oEnemy0_Father,false,true);
		enemyDown = collision_point(x+32,y+96,oEnemy0_Father,false,true);
		enemyDownLeft = collision_point(x-32,y+96,oEnemy0_Father,false,true);
		enemyLeft = collision_point(x-32,y+32,oEnemy0_Father,false,true);
		
		if enemyTopLeft != noone enemyTopLeft.target = true;
		if enemyTop != noone enemyTop.target = true;
		if enemyTopRight != noone enemyTopRight.target = true;
		if enemyRight != noone enemyRight.target = true;
		if enemyDownRight != noone enemyDownRight.target = true;
		if enemyDown != noone enemyDown.target = true;
		if enemyDownLeft != noone enemyDownLeft.target = true;
		if enemyLeft != noone enemyLeft.target = true;
	}
	else if thisLord_typeAttack == "RANGED"
	{
		enemyTopTop = collision_point(x+32,y-96,oEnemy0_Father,false,true);
		enemyRightRight = collision_point(x+160,y+32,oEnemy0_Father,false,true);
		enemyDownDown = collision_point(x+32,y+160,oEnemy0_Father,false,true);
		enemyLeftLeft = collision_point(x-96,y+32,oEnemy0_Father,false,true);
		enemyTopLeft = collision_point(x-32,y-32,oEnemy0_Father,false,true);
		enemyTop = collision_point(x+32,y-32,oEnemy0_Father,false,true);
		enemyTopRight = collision_point(x+96,y-32,oEnemy0_Father,false,true);
		enemyRight = collision_point(x+96,y+32,oEnemy0_Father,false,true);
		enemyDownRight = collision_point(x+96,y+96,oEnemy0_Father,false,true);
		enemyDown = collision_point(x+32,y+96,oEnemy0_Father,false,true);
		enemyDownLeft = collision_point(x-32,y+96,oEnemy0_Father,false,true);
		enemyLeft = collision_point(x-32,y+32,oEnemy0_Father,false,true);
		
		if enemyTopTop != noone enemyTopTop.target = true;
		if enemyRightRight != noone enemyRightRight.target = true;
		if enemyDownDown != noone enemyDownDown.target = true;
		if enemyLeftLeft != noone enemyLeftLeft.target = true;
		if enemyTopLeft != noone enemyTopLeft.target = true;
		if enemyTop != noone enemyTop.target = false;
		if enemyTopRight != noone enemyTopRight.target = true;
		if enemyRight != noone enemyRight.target = false;
		if enemyDownRight != noone enemyDownRight.target = true;
		if enemyDown != noone enemyDown.target = false;
		if enemyDownLeft != noone enemyDownLeft.target = true;
		if enemyLeft != noone enemyLeft.target = false;
	}

}