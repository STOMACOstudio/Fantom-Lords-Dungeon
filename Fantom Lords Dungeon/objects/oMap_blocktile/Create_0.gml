/// @description Insert description here
// You can write your code in this editor

//instance_create_layer(x,y,"WarFog",oMap_blocktile_WarFog);

active = false;
image_alpha = 0;
revealed = false;
stepped = false;
empty = true;
filled = choose(true, true, true, false);

makeChest = irandom_range(0,10);		
function init() {
	if(active) {return;};
	active = true;
}

function on_mouse_enter() {
	if(revealed) {
		image_alpha = 1;
	}
}
function on_mouse_leave() {
	if(revealed) {
		image_alpha = 0.8;
	}
}

function step_begin() {
	var lord_in_tile = collision_rectangle(x,y,x+60,y+60,oLord0Parent,false,true);
	var enemy_in_tile = collision_rectangle(x,y,x+60,y+60,oEnemy0_Father,false,true);
	var door_in_tile = collision_rectangle(x,y,x+60,y+60,oDoor,false,true);
	empty = !lord_in_tile && !enemy_in_tile;
	if(door_in_tile) {
		empty = oDoor.open;
	}
}

function step() {
	if(!revealed) { return; };
	image_index = 0;
	stepped = false;
	var lord_in_tile = collision_rectangle(x,y,x+60,y+60,oLord0Parent,false,true);
	if(!lord_in_tile) { return; }
	image_index = 1;
	stepped = true;
}

function step_end() {
	if(room == Room4_Boss) { return; };
	if(filled) { return; };
	if(!empty) { return; };
	//var populate = irandom_range(0,10) >= 6;
	//if(!populate) { return; };
	var populate_with_chest = irandom_range(0,9) > 8;
	if(populate_with_chest) {
		instance_create_layer(x,y,"Instances",oTreasureChest_Bronze);	
	} else {
		var random_creature = choose(oEnemy_Goblin,oEnemy_Eye,oEnemy_Barrell,oTrapSpike);
		instance_create_layer(x, y, "Instances", random_creature);
	}
	filled = true;
}


