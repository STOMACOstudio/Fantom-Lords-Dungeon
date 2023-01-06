/// @description Insert description here
// You can write your code in this editor

if (selectedLord = 1)
	{
		draw_text_transformed(x,y,"LORD: " + string(oLord1.thisLord_name),1,1,0);
	
		draw_text_transformed(x,y+28,"LVL: " + string(oLord1.thisLord_level),1,1,0);
	
		draw_text_transformed(x,y+56,"LIF: " + string(oLord1.thisLord_LIFmax),1,1,0);
	
		if oLord1.thisLord_ATK > oLord1.thisLord_ATKmax  draw_text_transformed_color(x,y+84,"ATK: " + string(oLord1.thisLord_ATK),1,1,0,c_green,c_green,c_green,c_green,1);
		else if oLord1.thisLord_ATK < oLord1.thisLord_ATKmax  draw_text_transformed_color(x,y+84,"ATK: " + string(oLord1.thisLord_ATK),1,1,0,c_red,c_red,c_red,c_red,1);
		else draw_text_transformed(x,y+84,"ATK: " + string(oLord1.thisLord_ATK),1,1,0);
	
		if oLord1.thisLord_DEF > oLord1.thisLord_DEFmax  draw_text_transformed_color(x,y+112,"DEF: " + string(oLord1.thisLord_DEF),1,1,0,c_green,c_green,c_green,c_green,1);
		else if oLord1.thisLord_DEF < oLord1.thisLord_DEFmax  draw_text_transformed_color(x,y+112,"DEF: " + string(oLord1.thisLord_DEF),1,1,0,c_red,c_red,c_red,c_red,1);
		else draw_text_transformed(x,y+112,"DEF: " + string(oLord1.thisLord_DEF),1,1,0);
	
		if oLord1.thisLord_MAG > oLord1.thisLord_MAGmax  draw_text_transformed_color(x,y+140,"MAG: " + string(oLord1.thisLord_MAG),1,1,0,c_green,c_green,c_green,c_green,1);
		else if oLord1.thisLord_MAG < oLord1.thisLord_MAGmax  draw_text_transformed_color(x,y+140,"MAG: " + string(oLord1.thisLord_MAG),1,1,0,c_red,c_red,c_red,c_red,1);
		else draw_text_transformed(x,y+140,"MAG: " + string(oLord1.thisLord_MAG),1,1,0);
	
		if oLord1.thisLord_ACT > oLord1.thisLord_ACTmax  draw_text_transformed_color(x,y+168,"ACT: " + string(oLord1.thisLord_ACT),1,1,0,c_green,c_green,c_green,c_green,1);
		else if oLord1.thisLord_ACT < oLord1.thisLord_ACTmax  draw_text_transformed_color(x,y+168,"ACT: " + string(oLord1.thisLord_ACT),1,1,0,c_red,c_red,c_red,c_red,1);
		else draw_text_transformed(x,y+168,"ACT: " + string(oLord1.thisLord_ACT),1,1,0);
	}
else if (selectedLord = 2)
	{
		draw_text_transformed(x,y,"LORD: " + string(oLord2.thisLord_name),1,1,0);
	
		draw_text_transformed(x,y+28,"LVL: " + string(oLord2.thisLord_level),1,1,0);
	
		draw_text_transformed(x,y+56,"LIF: " + string(oLord2.thisLord_LIFmax),1,1,0);
	
		if oLord2.thisLord_ATK > oLord2.thisLord_ATKmax  draw_text_transformed_color(x,y+84,"ATK: " + string(oLord2.thisLord_ATK),1,1,0,c_green,c_green,c_green,c_green,1);
		else if oLord2.thisLord_ATK < oLord2.thisLord_ATKmax  draw_text_transformed_color(x,y+84,"ATK: " + string(oLord2.thisLord_ATK),1,1,0,c_red,c_red,c_red,c_red,1);
		else draw_text_transformed(x,y+84,"ATK: " + string(oLord2.thisLord_ATK),1,1,0);
	
		if oLord2.thisLord_DEF > oLord2.thisLord_DEFmax  draw_text_transformed_color(x,y+112,"DEF: " + string(oLord2.thisLord_DEF),1,1,0,c_green,c_green,c_green,c_green,1);
		else if oLord2.thisLord_DEF < oLord2.thisLord_DEFmax  draw_text_transformed_color(x,y+112,"DEF: " + string(oLord2.thisLord_DEF),1,1,0,c_red,c_red,c_red,c_red,1);
		else draw_text_transformed(x,y+112,"DEF: " + string(oLord2.thisLord_DEF),1,1,0);
	
		if oLord2.thisLord_MAG > oLord2.thisLord_MAGmax  draw_text_transformed_color(x,y+140,"MAG: " + string(oLord2.thisLord_MAG),1,1,0,c_green,c_green,c_green,c_green,1);
		else if oLord2.thisLord_MAG < oLord2.thisLord_MAGmax  draw_text_transformed_color(x,y+140,"MAG: " + string(oLord2.thisLord_MAG),1,1,0,c_red,c_red,c_red,c_red,1);
		else draw_text_transformed(x,y+140,"MAG: " + string(oLord2.thisLord_MAG),1,1,0);
	
		if oLord2.thisLord_ACT > oLord2.thisLord_ACTmax  draw_text_transformed_color(x,y+168,"ACT: " + string(oLord2.thisLord_ACT),1,1,0,c_green,c_green,c_green,c_green,1);
		else if oLord2.thisLord_ACT < oLord2.thisLord_ACTmax  draw_text_transformed_color(x,y+168,"ACT: " + string(oLord2.thisLord_ACT),1,1,0,c_red,c_red,c_red,c_red,1);
		else draw_text_transformed(x,y+168,"ACT: " + string(oLord2.thisLord_ACT),1,1,0);
	}
else if (selectedLord = 3)
	{
		draw_text_transformed(x,y,"LORD: " + string(oLord3.thisLord_name),1,1,0);
	
		draw_text_transformed(x,y+28,"LVL: " + string(oLord3.thisLord_level),1,1,0);
	
		draw_text_transformed(x,y+56,"LIF: " + string(oLord3.thisLord_LIFmax),1,1,0);
	
		if oLord3.thisLord_ATK > oLord3.thisLord_ATKmax  draw_text_transformed_color(x,y+84,"ATK: " + string(oLord3.thisLord_ATK),1,1,0,c_green,c_green,c_green,c_green,1);
		else if oLord3.thisLord_ATK < oLord3.thisLord_ATKmax  draw_text_transformed_color(x,y+84,"ATK: " + string(oLord3.thisLord_ATK),1,1,0,c_red,c_red,c_red,c_red,1);
		else draw_text_transformed(x,y+84,"ATK: " + string(oLord3.thisLord_ATK),1,1,0);
	
		if oLord3.thisLord_DEF > oLord3.thisLord_DEFmax  draw_text_transformed_color(x,y+112,"DEF: " + string(oLord3.thisLord_DEF),1,1,0,c_green,c_green,c_green,c_green,1);
		else if oLord3.thisLord_DEF < oLord3.thisLord_DEFmax  draw_text_transformed_color(x,y+112,"DEF: " + string(oLord3.thisLord_DEF),1,1,0,c_red,c_red,c_red,c_red,1);
		else draw_text_transformed(x,y+112,"DEF: " + string(oLord3.thisLord_DEF),1,1,0);
	
		if oLord3.thisLord_MAG > oLord3.thisLord_MAGmax  draw_text_transformed_color(x,y+140,"MAG: " + string(oLord3.thisLord_MAG),1,1,0,c_green,c_green,c_green,c_green,1);
		else if oLord3.thisLord_MAG < oLord3.thisLord_MAGmax  draw_text_transformed_color(x,y+140,"MAG: " + string(oLord3.thisLord_MAG),1,1,0,c_red,c_red,c_red,c_red,1);
		else draw_text_transformed(x,y+140,"MAG: " + string(oLord3.thisLord_MAG),1,1,0);
	
		if oLord3.thisLord_ACT > oLord3.thisLord_ACTmax  draw_text_transformed_color(x,y+168,"ACT: " + string(oLord3.thisLord_ACT),1,1,0,c_green,c_green,c_green,c_green,1);
		else if oLord3.thisLord_ACT < oLord3.thisLord_ACTmax  draw_text_transformed_color(x,y+168,"ACT: " + string(oLord3.thisLord_ACT),1,1,0,c_red,c_red,c_red,c_red,1);
		else draw_text_transformed(x,y+168,"ACT: " + string(oLord3.thisLord_ACT),1,1,0);
	}
else if (selectedLord = 4)
	{
		draw_text_transformed(x,y,"LORD: " + string(oLord4.thisLord_name),1,1,0);
	
		draw_text_transformed(x,y+28,"LVL: " + string(oLord4.thisLord_level),1,1,0);
	
		draw_text_transformed(x,y+56,"LIF: " + string(oLord4.thisLord_LIFmax),1,1,0);
	
		if oLord4.thisLord_ATK > oLord4.thisLord_ATKmax  draw_text_transformed_color(x,y+84,"ATK: " + string(oLord4.thisLord_ATK),1,1,0,c_green,c_green,c_green,c_green,1);
		else if oLord4.thisLord_ATK < oLord4.thisLord_ATKmax  draw_text_transformed_color(x,y+84,"ATK: " + string(oLord4.thisLord_ATK),1,1,0,c_red,c_red,c_red,c_red,1);
		else draw_text_transformed(x,y+84,"ATK: " + string(oLord4.thisLord_ATK),1,1,0);
	
		if oLord4.thisLord_DEF > oLord4.thisLord_DEFmax  draw_text_transformed_color(x,y+112,"DEF: " + string(oLord4.thisLord_DEF),1,1,0,c_green,c_green,c_green,c_green,1);
		else if oLord4.thisLord_DEF < oLord4.thisLord_DEFmax  draw_text_transformed_color(x,y+112,"DEF: " + string(oLord4.thisLord_DEF),1,1,0,c_red,c_red,c_red,c_red,1);
		else draw_text_transformed(x,y+112,"DEF: " + string(oLord4.thisLord_DEF),1,1,0);
	
		if oLord4.thisLord_MAG > oLord4.thisLord_MAGmax  draw_text_transformed_color(x,y+140,"MAG: " + string(oLord4.thisLord_MAG),1,1,0,c_green,c_green,c_green,c_green,1);
		else if oLord4.thisLord_MAG < oLord4.thisLord_MAGmax  draw_text_transformed_color(x,y+140,"MAG: " + string(oLord4.thisLord_MAG),1,1,0,c_red,c_red,c_red,c_red,1);
		else draw_text_transformed(x,y+140,"MAG: " + string(oLord4.thisLord_MAG),1,1,0);
	
		if oLord4.thisLord_ACT > oLord4.thisLord_ACTmax  draw_text_transformed_color(x,y+168,"ACT: " + string(oLord4.thisLord_ACT),1,1,0,c_green,c_green,c_green,c_green,1);
		else if oLord4.thisLord_ACT < oLord4.thisLord_ACTmax  draw_text_transformed_color(x,y+168,"ACT: " + string(oLord4.thisLord_ACT),1,1,0,c_red,c_red,c_red,c_red,1);
		else draw_text_transformed(x,y+168,"ACT: " + string(oLord4.thisLord_ACT),1,1,0);
	}
