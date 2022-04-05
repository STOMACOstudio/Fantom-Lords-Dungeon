// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrBossCheckForLords(){

	chooseTarget = irandom_range(0,7);
	
	if chooseTarget = 0 && lordTop != noone
	{
		lordTarget = lordTop;
		scrEnemyAttack();
	}
	else if chooseTarget = 1 && lordRightRight != noone
	{
		lordTarget = lordRightRight;
		scrEnemyAttack();
	}
	else if chooseTarget = 2 && lordDownDown != noone
	{
		lordTarget = lordDownDown;
		scrEnemyAttack();
	}
	else if chooseTarget = 3 && lordLeft != noone
	{
		lordTarget = lordLeft;
		scrEnemyAttack();
	}
	else if chooseTarget = 4 && lordTopRight != noone
	{
		lordTarget = lordTopRight;
		scrEnemyAttack();
	}
	else if chooseTarget = 5 && lordDownLeft != noone
	{
		lordTarget = lordDownLeft;
		scrEnemyAttack();
	}
	else if chooseTarget = 6 && lordRightRightDown != noone
	{
		lordTarget = lordRightRightDown;
		scrEnemyAttack();
	}
	else if chooseTarget = 7 && lordDownDownRight != noone
	{
		lordTarget = lordDownDownRight;
		scrEnemyAttack();
	}

}