// TODO: change this, step should not be doing this at all

fading = false;
canStart = false;
image_speed = 0;
image_index = 1;

function step() {
	if(canStart) {
		image_speed = 1;
		if(fading) {
			image_alpha -= 0.05;
		}
		if(image_alpha <= 0) {
			room_goto(Room1);
		}
	} else {
		print("You need to check for XRLC token (connect button)");
	}
}

function left_pressed() {
	if (canStart && !fading) {
		fading = true;
	}
}