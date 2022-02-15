/// @description Insert description here
// You can write your code in this editor

//if combat phase = 0 do nothing sta giocando il giocatore umano

//if combat phase = 1

iterare tutti i nemici nella mappa
e quando ne trova uno in stato revealed e !haCombattuto lo attiva per il combattimento
combat manager in pausa
il nemico combatte e haCombattuto quando termina il turno, riattiva il combat manager

if !staCombattendo
{
	var _list = ds_list_create();
	var _num = collision_rectangle_list(x,y,x2,y2,oEnemy0_Father,false,false,_list,false);
	if _num > 0
	{
	    for (var i = 0; i < _num; ++i;)
	    {
	        //(_list[| i]).image_blend = c_blue;
			if ((_list[| i]).revealed) && !haCombattuto
			{
				(_list[| i]).isCombatActive = true;
				staCombattendo = true break;
			}

	    }
	}
	ds_list_destroy(_list);
}