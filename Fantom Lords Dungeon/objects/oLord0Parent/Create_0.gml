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

function init() {
	active = true;
}