// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrFullscreen(){

	if (global.fullScreen = false)
	{
	    // resize window to display
	    window_set_size(display_get_width(),display_get_height());
		display_set_gui_maximise(propWidth, propHeight, 0, 0);
		display_set_gui_size(display_get_width(),display_get_height());
		global.fullScreen = true;
	
	}
	else
	{
	    // resize window to original
	    window_set_size(1280,720);
		display_set_gui_maximise(-1, -1);
		display_set_gui_size(1280, 720);
		global.fullScreen = false;
	}	
	
}