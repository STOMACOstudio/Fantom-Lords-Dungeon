/// @description Insert description here
// You can write your code in this editor

audio_play_sound(sn_SKILL_Moonblast,0,false);

dmg = global.dmgLORD;

done = false;

global.hasControl = false;

alarm[0] = 50;

if dir = 0 //left
{
	target0enemy = collision_point(castLord.x-32,castLord.y+32,oEnemy0_Father,false,true);
	target1enemy = collision_point(castLord.x-96,castLord.y+32,oEnemy0_Father,false,true);
	target2enemy = collision_point(castLord.x-96,castLord.y-32,oEnemy0_Father,false,true);
	target3enemy = collision_point(castLord.x-96,castLord.y+96,oEnemy0_Father,false,true);
	target0lord = collision_point(castLord.x-32,castLord.y+32,oLord0Parent,false,true);
	target1lord = collision_point(castLord.x-96,castLord.y+32,oLord0Parent,false,true);
	target2lord = collision_point(castLord.x-96,castLord.y-32,oLord0Parent,false,true);
	target3lord = collision_point(castLord.x-96,castLord.y+96,oLord0Parent,false,true);
}
else if dir = 1 //up
{
	target0enemy = collision_point(castLord.x+32,castLord.y-32,oEnemy0_Father,false,true);
	target1enemy = collision_point(castLord.x+32,castLord.y-96,oEnemy0_Father,false,true);
	target2enemy = collision_point(castLord.x-32,castLord.y-96,oEnemy0_Father,false,true);
	target3enemy = collision_point(castLord.x+96,castLord.y-96,oEnemy0_Father,false,true);
	target0lord = collision_point(castLord.x+32,castLord.y-32,oLord0Parent,false,true);
	target1lord = collision_point(castLord.x+32,castLord.y-96,oLord0Parent,false,true);
	target2lord = collision_point(castLord.x-32,castLord.y-96,oLord0Parent,false,true);
	target3lord = collision_point(castLord.x+96,castLord.y-96,oLord0Parent,false,true);
}
else if dir = 2 //right
{
	target0enemy = collision_point(castLord.x+96,castLord.y+32,oEnemy0_Father,false,true);
	target1enemy = collision_point(castLord.x+160,castLord.y+32,oEnemy0_Father,false,true);
	target2enemy = collision_point(castLord.x+160,castLord.y-32,oEnemy0_Father,false,true);
	target3enemy = collision_point(castLord.x+160,castLord.y+96,oEnemy0_Father,false,true);
	target0lord = collision_point(castLord.x+96,castLord.y+32,oLord0Parent,false,true);
	target1lord = collision_point(castLord.x+160,castLord.y+32,oLord0Parent,false,true);
	target2lord = collision_point(castLord.x+160,castLord.y-32,oLord0Parent,false,true);
	target3lord = collision_point(castLord.x+160,castLord.y+96,oLord0Parent,false,true);
}
else if dir = 3 //down
{
	target0enemy = collision_point(castLord.x+32,castLord.y+96,oEnemy0_Father,false,true);
	target1enemy = collision_point(castLord.x+32,castLord.y+160,oEnemy0_Father,false,true);
	target2enemy = collision_point(castLord.x-32,castLord.y+160,oEnemy0_Father,false,true);
	target3enemy = collision_point(castLord.x+96,castLord.y+160,oEnemy0_Father,false,true);
	target0lord = collision_point(castLord.x+32,castLord.y+96,oLord0Parent,false,true);
	target1lord = collision_point(castLord.x+32,castLord.y+160,oLord0Parent,false,true);
	target2lord = collision_point(castLord.x-32,castLord.y+160,oLord0Parent,false,true);
	target3lord = collision_point(castLord.x+96,castLord.y+160,oLord0Parent,false,true);
}
	