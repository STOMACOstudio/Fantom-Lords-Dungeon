/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord2active
{
	draw_sprite_stretched(oLordStats.lord2sprite,0,x,y,128,128);
	if instance_exists(oLord2)
	{
		if oLord2.thisLord_LIF = oLord2.thisLord_LIFmax currentLIF = 0;
		else if oLord2.thisLord_LIF >= oLord2.thisLord_LIFmax/2 && oLord2.thisLord_LIF < oLord2.thisLord_LIFmax currentLIF = 1;
		else if oLord2.thisLord_LIF > oLord2.thisLord_LIFmax/4 && oLord2.thisLord_LIF < oLord2.thisLord_LIFmax/2 currentLIF = 2;
		else if oLord2.thisLord_LIF > oLord2.thisLord_LIFmax/6 && oLord2.thisLord_LIF < oLord2.thisLord_LIFmax/4 currentLIF = 3;
		else if oLord2.thisLord_LIF > oLord2.thisLord_LIFmax/8 && oLord2.thisLord_LIF < oLord2.thisLord_LIFmax/6 currentLIF = 4;
		else if oLord2.thisLord_LIF <= oLord2.thisLord_LIFmax/8 currentLIF = 5;

		draw_sprite(sGUI_BloodshedLord,currentLIF,x,y);
	}
}

if thisLocked draw_rectangle_color(x-1,y-1,x+128,y+128,c_yellow,c_yellow,c_yellow,c_yellow,true);