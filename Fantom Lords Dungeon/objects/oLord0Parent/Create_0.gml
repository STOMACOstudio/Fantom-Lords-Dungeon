function step() {
	if(!active) {return;}
	if(global.fightMode) {
		if (!tower) { scrLordMovement(); }
	} else {
		scrLordMovementFree();
	}
	if(thisLord_LIF <= 0) {
		instance_create_layer(gui_lord_frame.x,gui_lord_frame.y,"BG",gui_death_lord );
		instance_destroy(gui_act_points);
		instance_destroy(gui_lord_frame);
		instance_destroy(gui_lord_health_front);
		instance_destroy(gui_lord_health_print);
		var oLordStatsValue = $"lord{lord_number}active";
		struct_set(oLordStats,oLordStatsValue, false );
		//[$ oLordStatsValue] = false;
		global.isLocked = false;
		instance_destroy();
	}
	if(thisLocked) {
		if(!instance_exists(vfx_spell_cast)) {
			scrLordCheckTarget();
		}
	}
	thisLord_level = thisLord_LIFmax + thisLord_ATK + thisLord_DEF + thisLord_MAG + thisLord_ACT;
}

function on_mouse_enter() {
	if(!thisLocked) {image_blend = c_yellow;};
}

function on_mouse_leave() {
	if(!thisLocked) {image_blend = c_white;};
}

function on_global_mouse_pressed() {
	if(global.hasControl) {
		if(!thisLocked) { return; };
		enemy = collision_point(mouse_x,mouse_y,oEnemy0_Father,false,true);
		if(enemy == noone) { return; }
		if(!enemy.target) { return; }
		scrLordAttack();
	}
}

function on_mouse_pressed() {
	if(!global.hasControl && collision_point(mouse_x,mouse_y,oVFX_spellCast0father,false,true)) { return; };	
	with(oEnemy0_Father) { target = false; };
	if(!thisLocked && !instance_exists(oVFX_spellCast0father)){
		with(oLord0FrameParent) {
			thisLocked = false;
			image_blend = c_white;
		}
		with(oLord0Parent) {
			thisLocked = false;
			image_blend = c_white;
		}
		if(instance_exists(oVFX_spellCast0father)) {
			instance_destroy(oVFX_spellCast0father);
		}
		thisLocked = true;
		oGUI_printSelectedStatLord.locked = true;
		oGUI_printSelectedStatLord.selectedLord = 1;
		gui_lord_frame.thisLocked = true;
		image_blend = c_yellow;
		audio_play_sound(snAddLord,0,false);
	} else {
		thisLocked = false;
		oGUI_printSelectedStatLord.locked = false;
		gui_lord_frame.thisLocked = false;
		image_blend = c_white;
		audio_play_sound(snRemoveLord,0,false);
	}
}

function on_key_p_pressed() {
	if(global.hasControl) {
		if(thisLocked && global.potionLIF > 0) {
			thisLord_LIF += round(thisLord_LIFmax/3);
			if(thisLord_LIF > thisLord_LIFmax) { thisLord_LIF = thisLord_LIFmax; };
			audio_play_sound(snCollectPotion,0,false);
			instance_create_layer(oGUI_LordFrame1.x,oGUI_LordFrame1.y,"Instances",oVFX_powerUpLIF);
			global.potionLIF --;
		}
	}
}

function on_key_r_pressed() {
	if(global.hasControl) {
		if( thisLocked && thisLord_ACTpoints >= 2 && !berserk ) {
			if instance_exists(oVFX_spellCast0father) {
				spellCast = -1;
				instance_destroy(oVFX_spellCast0father);
				oGUI_skill3Lord1.thisColor = c_white;
			} else {
				spellCast = thisLord_skillWeapon;
				if(!instance_exists(oVFX_spellCast1)) { 
					instance_create_layer(mouse_x,mouse_y,"VFX",oVFX_spellCast1);
				} else { 
					instance_destroy(oVFX_spellCast1);
				}
				oGUI_skill3Lord1.thisColor = c_yellow;
			}
		}
	}
}

function on_key_e_pressed() {}
function on_key_q_pressed() {}
function on_key_o_pressed() {}
function on_key_1_pressed() {}
function on_key_2_pressed() {}
function on_key_3_pressed() {}
function on_key_4_pressed() {}

function on_key_pressed() {
	switch(chr(keyboard_key)) {
		case "P":
			on_key_p_pressed();
			break;
		case "R":
			on_key_r_pressed();
			break;
		case "E":
			on_key_e_pressed();
			break;
		case "Q":
			on_key_q_pressed();
			break;
		case "O":
			on_key_o_pressed();
			break;
		case "1":
			on_key_1_pressed();
			break;
		case "2":
			on_key_1_pressed();
			break;
		case "3":
			on_key_1_pressed();
			break;
		case "4":
			on_key_1_pressed();
			break;
		default:
			break;
	}
}

function on_destroy() {
	oGUI_printSelectedStatLord.selectedLord = 0;
	var chooseLord1 = irandom_range(1,5);
	var chooseLord2 = irandom_range(1,5);
	var chooseLord3 = irandom_range(1,5);
	var chooseLord4 = irandom_range(1,5);
	if(chooseLord1 = 5 && instance_exists(oLord1) && instance_exists(oGUI_LordFrame1)) {
		instance_create_layer(oGUI_LordFrame1.x+64,oGUI_LordFrame1.y+16,"VFX",oLord_Baloon7);
	}
	if(chooseLord2 = 5 && instance_exists(oLord2) && instance_exists(oGUI_LordFrame2)) {
		instance_create_layer(oGUI_LordFrame2.x+64,oGUI_LordFrame2.y+16,"VFX",oLord_Baloon7);
	}
	if(chooseLord3 = 5 && instance_exists(oLord3) && instance_exists(oGUI_LordFrame3)) {
		instance_create_layer(oGUI_LordFrame3.x+64,oGUI_LordFrame3.y+16,"VFX",oLord_Baloon7);
	}
	if(chooseLord4 = 5 && instance_exists(oLord4) && instance_exists(oGUI_LordFrame4)) {
		instance_create_layer(oGUI_LordFrame4.x+64,oGUI_LordFrame4.y+16,"VFX",oLord_Baloon7);
	}
}

function init() {
	active = true;
}