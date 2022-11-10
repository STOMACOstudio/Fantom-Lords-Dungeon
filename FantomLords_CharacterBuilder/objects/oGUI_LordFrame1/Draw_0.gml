/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord1active
{
	draw_sprite_stretched(oLordStats.lord1sprite,0,x,y,128,128);
	if instance_exists(oLord1)
	{
		if oLord1.thisLord_LIF = oLord1.thisLord_LIFmax currentLIF = 0;
		else if oLord1.thisLord_LIF >= oLord1.thisLord_LIFmax/2 && oLord1.thisLord_LIF < oLord1.thisLord_LIFmax currentLIF = 1;
		else if oLord1.thisLord_LIF > oLord1.thisLord_LIFmax/4 && oLord1.thisLord_LIF < oLord1.thisLord_LIFmax/2 currentLIF = 2;
		else if oLord1.thisLord_LIF > oLord1.thisLord_LIFmax/6 && oLord1.thisLord_LIF < oLord1.thisLord_LIFmax/4 currentLIF = 3;
		else if oLord1.thisLord_LIF > oLord1.thisLord_LIFmax/8 && oLord1.thisLord_LIF < oLord1.thisLord_LIFmax/6 currentLIF = 4;
		else if oLord1.thisLord_LIF <= oLord1.thisLord_LIFmax/8 currentLIF = 5;

		draw_sprite(sGUI_BloodshedLord,currentLIF,x,y);
	}
}

if thisLocked draw_rectangle_color(x-1,y-1,x+128,y+128,c_yellow,c_yellow,c_yellow,c_yellow,true);