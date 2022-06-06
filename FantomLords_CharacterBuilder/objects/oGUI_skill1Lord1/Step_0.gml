/// @description Insert description here
// You can write your code in this editor

if mouse_x > x && mouse_x < x+32 && mouse_y > y && mouse_y < y+32 && !instance_exists(oGUI_printSkill) && instance_exists(oLord1)
{
	global.printSkill = oLord1.thisLord_typeAttack;
	instance_create_layer(mouse_x,mouse_y,"Instances",oGUI_printSkill);	
}

/*if casting
{
	if oLord1.thisLord_typeAttack == "MELEE"
	{
		var _list = ds_list_create();
		var _num = collision_rectangle_list(oLord1.x-32,oLord1.y-32,oLord1.x+96,oLord1.y+96,oEnemy0_Father,false,true,_list,true);
		if _num > 0
		{
			for (var i = 0; i < _num; ++i;)
				{
					if collision_point(oLord1.x+32,oLord1.y-32,_list[| i],false,true)
					{
						_list[| i].image_blend = c_yellow;
						_list[| i].target = true;
					}
					else if collision_point(oLord1.x+96,oLord1.y+32,_list[| i],false,true)
					{
						_list[| i].image_blend = c_yellow;
						_list[| i].target = true;
					}
					else if collision_point(oLord1.x+32,oLord1.y+96,_list[| i],false,true)
					{
						_list[| i].image_blend = c_yellow;
						_list[| i].target = true;
					}
					else if collision_point(oLord1.x-32,oLord1.y+32,_list[| i],false,true)
					{
						_list[| i].image_blend = c_yellow;
						_list[| i].target = true;
					}
				}
		}
		ds_list_destroy(_list);
	}
	else if oLord1.thisLord_typeAttack == "MAGIC"
	{
		var _list = ds_list_create();
		var _num = collision_rectangle_list(oLord1.x-32,oLord1.y-32,oLord1.x+96,oLord1.y+96,oEnemy0_Father,false,true,_list,true);
		if _num > 0
		{
			for (var i = 0; i < _num; ++i;)
				{
					_list[| i].image_blend = c_yellow;
					_list[| i].target = true;
				}
		}
		ds_list_destroy(_list);
	}
	else if oLord1.thisLord_typeAttack == "RANGED"
	{
		var _list = ds_list_create();
		var _num = collision_rectangle_list(oLord1.x-32,oLord1.y-32,oLord1.x+96,oLord1.y+96,oEnemy0_Father,false,true,_list,true);
		if _num > 0
		{
			for (var i = 0; i < _num; ++i;)
				{
					_list[| i].image_blend = c_yellow;
					_list[| i].target = true;
				}
		}
		ds_list_destroy(_list);
	
		var _list2 = ds_list_create();
		var _num2 = collision_rectangle_list(oLord1.x-96,oLord1.y-96,oLord1.x+160,oLord1.y+160,oEnemy0_Father,false,true,_list2,true);
		if _num2 > 0
		{
			for (var i = 0; i < _num2; ++i;)
				{
					_list2[| i].image_blend = c_yellow;
					_list2[| i].target = true;
				}
		}
		ds_list_destroy(_list2);
	}
}