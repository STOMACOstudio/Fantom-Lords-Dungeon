// TODO: rewrite
image_speed = 0;
function left_released() {
	if (global.user_address=="0") {
		oController.state=1;
		oController.alarm[0]=1;
	}
}