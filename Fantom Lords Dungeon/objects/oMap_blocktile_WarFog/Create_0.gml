function init() {
	tile = collision_point(x,y,oMap_0parent,false,true);
}

function step() {
	if(tile.revealed || tile.stepped) {
		instance_destroy();
	}
}

init();