active = false;

// this creates the door
function create_door() {
	// get a random oMap_blocktile
	var instance_index = instance_number(oMap_blocktile) - 1;
	var doorPlace = instance_find(oMap_blocktile, irandom(instance_index));
	while(!doorPlace.empty) {
		doorPlace = instance_find(oMap_blocktile, irandom(instance_index));
	}
	// I tried to make sense of the following lines of code
	// if global.roomCounter = 3*global.bossBattle instance_create_layer(doorPlace.x,doorPlace.y,"Instances",oDoorBoss);
	// else instance_create_layer(doorPlace.x,doorPlace.y,"Instances",oDoor);
	var in_boss_room = global.roomCounter = 3*global.bossBattle;
	var door_object = in_boss_room ? oDoorBoss : oDoor;
	instance_create_layer(doorPlace.x,doorPlace.y,"Instances",door_object);
	global.roomCondition = "NO CONDITION";
	global.tileNumber = instance_number(oMap_blocktile);
}

function create_walk_tiles() {
	var columns = 16;
	var rows = 7;
	var x_offset = 0;
	var y_offset = 0;
	var size = 64;
	var tile = oMap_blocktile;
	tile = room == Room3_Desert ? oMap_blocktile2 : tile;
	tile = room == Room3_Prison ? oMap_blocktile2 : tile;
	for(var i = 0; i < rows; i++) {
		for(var ii = 0; ii < columns; ii++) {
			var occupied_tile = instance_position(
				x_offset + ii * size + size * 0.5,
				y_offset + i * size + size * 0.5,
				oMap_0parent
			);
			if(!occupied_tile) {
				//var tile = 
				instance_create_layer(
					x_offset + ii * size,
					y_offset + i * size,
					"MapTiles",
					tile
				);
				//tile.depth = -100;
				//tile.image_blend = c_black;
			}
		}
	}
}

function on_room_start() {
	create_walk_tiles();
	create_door();
}

function sewer_setup() {
	instance_create_layer(0,0,"VFX",oVFX_SolidBlackFadeoutBIG);
	instance_create_layer(0,0,"VFX",oVFX_oEnterPlace1_Sewer);
}

function prision_setup() {
	instance_create_layer(0,0,"VFX",oVFX_SolidBlackFadeoutBIG);
	instance_create_layer(0,0,"VFX",oVFX_oEnterPlace2_Prison);
}

function desert_setup() {
	instance_create_layer(0,0,"VFX",oVFX_SolidBlackFadeoutBIG);
	instance_create_layer(0,0,"VFX",oVFX_oEnterPlace2_Prison);
}


// NOTE: global.enterPlaceSewer
// NOTE: global.enterPlacePrison / enterPlacePrision
// NOTE: global.enterPlaceDesert
// NOTE: all above removed because of redundancy

function init() {
	if(active) {return;};
	active = true;
	
	randomize();
	if(!instance_exists(oManagerGame)) {
		instance_create_layer(0, 0, "BG", oManagerGame);
	}
	audio_stop_all();
	switch(room) {
		case Room3_Dungeon:
			sewer_setup();
			audio_play_sound(sn1_Waterways,0,true);	
			break;
		case Room3_Prison:
			prision_setup();
			audio_play_sound(sn1_StrongholdLoop,0,true);
			break;
		case Room3_Desert:
			desert_setup();
			audio_play_sound(sn1_StrongholdLoop,0,true);
			break;
		default:
			instance_create_layer(0,0,"VFX",oVFX_SolidBlackFadeout);
			break;
	}
}

init();