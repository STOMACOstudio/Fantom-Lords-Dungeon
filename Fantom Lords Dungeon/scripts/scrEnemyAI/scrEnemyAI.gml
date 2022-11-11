// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrEnemyAI(){
	
		var _list = ds_list_create();
		var _num = collision_rectangle_list(x-96,y-96,x+160,y+160,oLord0Parent,false,true,_list,true);
		if _num > 0
		{
			for (var i = 0; i < _num; ++i;)
			{
				if ((_list[| i]).x = x-64 && (_list[| i]).y = y-128) //1
				{
					var move = choose(1,2);
					if move = 1 x -= global.tileRate;
					else y-= global.tileRate;
				}
				else if ((_list[| i]).x = x && (_list[| i]).y = y-128) //2
				{
					var move = choose(1,2);
					if move = 1 x -= global.tileRate;
					else y -= global.tileRate;				
				}
				else if ((_list[| i]).x = x+64 && (_list[| i]).y = y-128) //3
				{
					var move = choose(1,2);
					if move = 1 x += global.tileRate
					else y-= global.tileRate;
				}
				else if ((_list[| i]).x = x+128 && (_list[| i]).y = y-64) //4
				{
					var move = choose(1,2);
					if move = 1 x += global.tileRate
					else y-= global.tileRate;
				}
				else if ((_list[| i]).x = x+128 && (_list[| i]).y = y) //5
				{
					x += global.tileRate;
				}
				else if ((_list[| i]).x = x+128 && (_list[| i]).y = y+64) //6
				{
					var move = choose(1,2);
					if move = 1 x += global.tileRate
					else y+= global.tileRate;
				}
				else if ((_list[| i]).x = x+64 && (_list[| i]).y = y+128) //7
				{
					var move = choose(1,2);
					if move = 1 x += global.tileRate
					else y+= global.tileRate;
				}
				else if ((_list[| i]).x = x && (_list[| i]).y = y+128) //8
				{
					 y+= global.tileRate;
				}
				else if ((_list[| i]).x = x-64 && (_list[| i]).y = y+128) //9
				{
					var move = choose(1,2);
					if move = 1 x -= global.tileRate
					else y+= global.tileRate;
				}
				else if ((_list[| i]).x = x-128 && (_list[| i]).y = y+64) //10
				{
					var move = choose(1,2);
					if move = 1 x -= global.tileRate
					else y+= global.tileRate;
				}
				else if ((_list[| i]).x = x-128 && (_list[| i]).y = y) //11
				{
					x -= global.tileRate
				}
				else if ((_list[| i]).x = x-128 && (_list[| i]).y = y-64) //12
				{
					var move = choose(1,2);
					if move = 1 x -= global.tileRate
					else y-= global.tileRate;
				}
				else if ((_list[| i]).x = x-64 && (_list[| i]).y = y-64) //13
				{
					var move = choose(1,2);
					if move = 1 x -= global.tileRate
					else y-= global.tileRate;
				}
				else if ((_list[| i]).x = x+64 && (_list[| i]).y = y-64) //14
				{
					var move = choose(1,2);
					if move = 1 x += global.tileRate
					else y-= global.tileRate;
				}
				else if ((_list[| i]).x = x+64 && (_list[| i]).y = y+64) //15
				{
					var move = choose(1,2);
					if move = 1 x += global.tileRate
					else y+= global.tileRate;
				}
				else if ((_list[| i]).x = x-64 && (_list[| i]).y = y+64) //16
				{
					var move = choose(1,2);
					if move = 1 x -= global.tileRate
					else y+= global.tileRate;
				}
			}
		}
		if i >= _num ds_list_destroy(_list);
		
}