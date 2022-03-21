/// @description Insert description here
// You can write your code in this editor

scrLordMovement();

if thisLord_LIF <= 0
{
	instance_create_layer(oGUI_LordFrame3.x,oGUI_LordFrame3.y,"bG",oGUI_deathLord);
	instance_destroy(oGUI_ACTpoints3);
	instance_destroy(oGUI_LordFrame3);
	instance_destroy(oGUI_lordHealthFront3);
	instance_destroy(oGUI_lordHealthPrint3);
	oLordStats.lord3active = false;
	global.isLocked = false;
	instance_destroy();
}

if !global.fightMode thisLord_ACTpoints = thisLord_ACTpointsMAX;

if thisLord_typeAttack == "MELEE"
{
	var _list = ds_list_create();
	var _num = collision_rectangle_list(x-32,y-32,x+96,y+96,oEnemy0_Father,false,true,_list,true);
	if _num > 0
	{
		for (var i = 0; i < _num; ++i;)
			{
				if collision_point(x+32,y-32,_list[| i],false,true)
				{
					//_list[| i].image_blend = c_yellow;
					_list[| i].target = true;
				}
				else if collision_point(x+96,y+32,_list[| i],false,true)
				{
					//_list[| i].image_blend = c_yellow;
					_list[| i].target = true;
				}
				else if collision_point(x+32,y+96,_list[| i],false,true)
				{
					//_list[| i].image_blend = c_yellow;
					_list[| i].target = true;
				}
				else if collision_point(x-32,y+32,_list[| i],false,true)
				{
					//_list[| i].image_blend = c_yellow;
					_list[| i].target = true;
				}
			}
	}
	ds_list_destroy(_list);
}
else if thisLord_typeAttack == "MAGIC"
{
	var _list = ds_list_create();
	var _num = collision_rectangle_list(x-32,y-32,x+96,y+96,oEnemy0_Father,false,true,_list,true);
	if _num > 0
	{
		for (var i = 0; i < _num; ++i;)
			{
				//_list[| i].image_blend = c_yellow;
				_list[| i].target = true;
			}
	}
	ds_list_destroy(_list);
}
else if thisLord_typeAttack == "RANGED"
{
	var _list = ds_list_create();
	var _num = collision_rectangle_list(x-32,y-32,x+96,y+96,oEnemy0_Father,false,true,_list,true);
	if _num > 0
	{
		for (var i = 0; i < _num; ++i;)
			{
				//_list[| i].image_blend = c_yellow;
				_list[| i].target = true;
			}
	}
	ds_list_destroy(_list);

	var _list2 = ds_list_create();
	var _num2 = collision_rectangle_list(x-96,y-96,x+160,y+160,oEnemy0_Father,false,true,_list2,true);
	if _num2 > 0
	{
		for (var i = 0; i < _num2; ++i;)
			{
				//_list2[| i].image_blend = c_yellow;
				_list2[| i].target = true;
			}
	}
	ds_list_destroy(_list2);
}