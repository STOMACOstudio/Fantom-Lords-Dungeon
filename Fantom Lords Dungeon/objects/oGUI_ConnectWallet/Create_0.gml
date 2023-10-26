mouse_on = false;

function left_pressed() {
	mouse_on = true;
	image_blend = c_yellow;
	audio_play_sound(snClick,0,false);
}
function left_released() {
	// TODO: rewrite
	if(mouse_on) {
		room_goto(Room2_wallet);
	}
}
function mouse_enter() {
	image_blend = c_grey;
}
function mouse_leave() {
	mouse_on = false;
	image_blend = c_white;
}