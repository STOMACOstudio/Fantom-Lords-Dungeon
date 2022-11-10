/// @description Insert description here
// You can write your code in this editor

var propWidth = (display_get_width()/1280);
var propHeight = (display_get_width()/720);

if (global.fullScreen = false)
{
    // resize window to display
	image_index = 1;
    window_set_size(display_get_width(),display_get_height());
	display_set_gui_maximise(propWidth, propHeight, 0, 0);
	display_set_gui_size(display_get_width(),display_get_height());
	global.fullScreen = true;

}
else
{
	image_index = 0;
    // resize window to original
    window_set_size(1280,720);
	display_set_gui_maximise(-1, -1);
	display_set_gui_size(1280, 720);
	global.fullScreen = false;
}