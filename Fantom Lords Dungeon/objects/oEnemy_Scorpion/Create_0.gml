/// @description Insert description here
// You can write your code in this editor

image_alpha = 0;
revealed = false;

target = false;

image_xscale /= 5;
image_yscale /= 5;

isSelected = false;

thisName = "Sand Scorpion";
thisLIF = 62 + (14*global.roomCounter) + irandom_range(-5,5);
thisLIFmax = thisLIF;
thisATK = 11 + (3*global.roomCounter) + irandom_range(-3,6);
thisATKmax = thisATK;
thisDEF = 1;
thisDEFmax = thisDEF;
thisMAG = 1;
thisMAGmax = thisMAG;
scoreAdd = 15;
isFighting = false;
turnComplete = false;
actionsMax = 3;
actions = actionsMax;
bashed = false;
attackSprite = sVFX_TrollAttack1;
attackSound = snAttack;
status = "Uninjured";
LIFpercentage = 100;
statusColor = c_lime;

alarmCounter = 50;

obstacle = false;

scrEnemyCombatVars();

function attack_tail()
{
	dmgENEMY = (dmgTYPE + irandom_range(-3,3)) - lordTarget.thisLord_DEF;
	if dmgENEMY <= 0 dmgENEMY = 1;
	global.dmgENEMY = dmgENEMY;
	global.dmgLORD = round(dmgENEMY/2)+1;
	audio_play_sound(sn_SKILL_Poison,0,false);
	instance_create_layer(lordTarget.x+32,lordTarget.y+32,"VFX",oVFX_EnemyPoison);
	instance_create_layer(lordTarget.x+irandom_range(8,56),lordTarget.y+irandom_range(8,56),"VFX",oGUI_printDMGenemy);

	lordTarget.thisLord_LIF -= dmgENEMY;
	lordTarget.poison = true;
	
	isFighting = false;
	
	if lordTarget.thisLord_LIF <= lordTarget.thisLord_LIFmax/2 && lordTarget.thisLord_LIF > 0
	{
		if collision_point(lordTarget.x,lordTarget.y,oLord1,false,true) instance_create_layer(oGUI_LordFrame1.x+64,oGUI_LordFrame1.y+16,"VFX",oLord_Baloon3);
		else if collision_point(lordTarget.x,lordTarget.y,oLord2,false,true) instance_create_layer(oGUI_LordFrame2.x+64,oGUI_LordFrame2.y+16,"VFX",oLord_Baloon3);
		else if collision_point(lordTarget.x,lordTarget.y,oLord3,false,true) instance_create_layer(oGUI_LordFrame3.x+64,oGUI_LordFrame3.y+16,"VFX",oLord_Baloon3);
		else if collision_point(lordTarget.x,lordTarget.y,oLord4,false,true) instance_create_layer(oGUI_LordFrame4.x+64,oGUI_LordFrame4.y+16,"VFX",oLord_Baloon3);
	}
	
	alarm[0] = alarmCounter;
}