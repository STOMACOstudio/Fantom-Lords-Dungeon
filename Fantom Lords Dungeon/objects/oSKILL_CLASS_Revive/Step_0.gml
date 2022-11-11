/// @description Insert description here
// You can write your code in this editor

if done = true
{
	image_alpha = 0;
	
	if makelord = 1
	{
		oLordStats.lord1active = true;
		oLordStats.lord1LIF = 10;
		oLordStats.lord1LIFmax = 10;
		oLordStats.lord1ATK = 10;
		oLordStats.lord1ATKmax = 10;
		oLordStats.lord1DEF = 10;
		oLordStats.lord1DEFmax = 10;
		oLordStats.lord1MAG = 10;
		oLordStats.lord1MAGmax = 10;
		oLordStats.lord1ACT = 10;
		oLordStats.lord1ACTmax = 10;
		//thisLord_typeAttack = oLordStats.lord2typeAttack;
		//thisLord_skillClassArmor = oLordStats.lord2skillClassArmor;
		//thisLord_skillWeapon = oLordStats.lord2skillWeapon;
		instance_create_layer(x,y,"Instances",oLord1);
		instance_create_layer(32,504,"BG",oGUI_LordFrame1);
		instance_create_layer(32,640,"BG",oGUI_lordHealthFront1);
		instance_create_layer(64,634,"BG",oGUI_lordHealthPrint1);
		instance_create_layer(164,512,"BG",oGUI_ACTpoints1);
	}
	else if makelord = 2
	{
		oLordStats.lord2active = true;
		oLordStats.lord2LIF = 10;
		oLordStats.lord2LIFmax = 10;
		oLordStats.lord2ATK = 10;
		oLordStats.lord2ATKmax = 10;
		oLordStats.lord2DEF = 10;
		oLordStats.lord2DEFmax = 10;
		oLordStats.lord2MAG = 10;
		oLordStats.lord2MAGmax = 10;
		oLordStats.lord2ACT = 10;
		oLordStats.lord2ACTmax = 10;
		//thisLord_typeAttack = oLordStats.lord2typeAttack;
		//thisLord_skillClassArmor = oLordStats.lord2skillClassArmor;
		//thisLord_skillWeapon = oLordStats.lord2skillWeapon;
		instance_create_layer(x,y,"Instances",oLord2);
		instance_create_layer(208,504,"BG",oGUI_LordFrame2);
		instance_create_layer(208,640,"BG",oGUI_lordHealthFront2);
		instance_create_layer(240,634,"BG",oGUI_lordHealthPrint2);
		instance_create_layer(340,512,"BG",oGUI_ACTpoints2);
	}
	else if makelord = 3
	{
		oLordStats.lord3active = true;
		oLordStats.lord3LIF = 10;
		oLordStats.lord3LIFmax = 10;
		oLordStats.lord3ATK = 10;
		oLordStats.lord3ATKmax = 10;
		oLordStats.lord3DEF = 10;
		oLordStats.lord3DEFmax = 10;
		oLordStats.lord3MAG = 10;
		oLordStats.lord3MAGmax = 10;
		oLordStats.lord3ACT = 10;
		oLordStats.lord3ACTmax = 10;
		//thisLord_typeAttack = oLordStats.lord2typeAttack;
		//thisLord_skillClassArmor = oLordStats.lord2skillClassArmor;
		//thisLord_skillWeapon = oLordStats.lord2skillWeapon;
		instance_create_layer(x,y,"Instances",oLord3);
		instance_create_layer(340,504,"BG",oGUI_LordFrame3);
		instance_create_layer(386,640,"BG",oGUI_lordHealthFront3);
		instance_create_layer(416,634,"BG",oGUI_lordHealthPrint3);
		instance_create_layer(516,512,"BG",oGUI_ACTpoints3);
	}
	else if makelord = 4
	{
		oLordStats.lord4active = true;
		oLordStats.lord4LIF = 10;
		oLordStats.lord4LIFmax = 10;
		oLordStats.lord4ATK = 10;
		oLordStats.lord4ATKmax = 10;
		oLordStats.lord4DEF = 10;
		oLordStats.lord4DEFmax = 10;
		oLordStats.lord4MAG = 10;
		oLordStats.lord4MAGmax = 10;
		oLordStats.lord4ACT = 10;
		oLordStats.lord4ACTmax = 10;
		//thisLord_typeAttack = oLordStats.lord2typeAttack;
		//thisLord_skillClassArmor = oLordStats.lord2skillClassArmor;
		//thisLord_skillWeapon = oLordStats.lord2skillWeapon;
		instance_create_layer(x,y,"Instances",oLord4);
		instance_create_layer(560,504,"BG",oGUI_LordFrame4);
		instance_create_layer(560,640,"BG",oGUI_lordHealthFront4);
		instance_create_layer(592,634,"BG",oGUI_lordHealthPrint4);
		instance_create_layer(692,512,"BG",oGUI_ACTpoints4);
	}
	
	global.hasControl = true;
	instance_destroy();
}