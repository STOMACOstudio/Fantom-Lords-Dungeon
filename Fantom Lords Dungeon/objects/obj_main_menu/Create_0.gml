function setup_platform() {
	if(os_browser == browser_not_a_browser) {
		instance_deactivate_layer("instances_gamemode_html");
	} else {
		instance_deactivate_layer("instances_gamemode_desktop");
	}
}

function init() {
	setup_platform();
}

init();