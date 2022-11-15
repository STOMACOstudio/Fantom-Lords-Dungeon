/// @description Insert description here
// You can write your code in this editor

if (!isDamage4)
	{
		isDamage4 = true;
		dmgENEMY = (dmgENEMY/2 + irandom_range(-3,3)) - other.thisLord_DEF;
		if dmgENEMY <= 0 dmgENEMY = 1;
		global.dmgENEMY = dmgENEMY;
		instance_create_layer(other.x+irandom_range(8,56),other.y+irandom_range(8,56),"VFX",oGUI_printDMGenemy);
		other.thisLord_LIF -= dmgENEMY;

		if other.thisLord_LIF <= other.thisLord_LIFmax/2 && other.thisLord_LIF > 0
		{
			 if collision_point(other.x,other.y,oLord1,false,true) instance_create_layer(oGUI_LordFrame1.x+64,oGUI_LordFrame1.y+16,"VFX",oLord_Baloon3);
			else if collision_point(other.x,other.y,oLord2,false,true) instance_create_layer(oGUI_LordFrame2.x+64,oGUI_LordFrame2.y+16,"VFX",oLord_Baloon3);
			else if collision_point(other.x,other.y,oLord3,false,true) instance_create_layer(oGUI_LordFrame3.x+64,oGUI_LordFrame3.y+16,"VFX",oLord_Baloon3);
			else if collision_point(other.x,other.y,oLord4,false,true) instance_create_layer(oGUI_LordFrame4.x+64,oGUI_LordFrame4.y+16,"VFX",oLord_Baloon3);
		}
}

