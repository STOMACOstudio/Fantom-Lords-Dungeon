// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrEnemyCheckForLords(){

	chooseTarget = irandom_range(0,3);
	
	if chooseTarget = 0 && lordTop != noone
	{
		lordTarget = lordTop;
		scrEnemyAttack();
	}
	else if chooseTarget = 1 && lordRight != noone
	{
		lordTarget = lordRight;
		scrEnemyAttack();
	}
	else if chooseTarget = 2 && lordDown != noone
	{
		lordTarget = lordDown;
		scrEnemyAttack();
	}
	else if chooseTarget = 3 && lordLeft != noone
	{
		lordTarget = lordLeft;
		scrEnemyAttack();
	}

}