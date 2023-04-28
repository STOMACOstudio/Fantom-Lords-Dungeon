/// @description Insert description here
// You can write your code in this editor

hue = 0;
sat = 0;
val = 0;
gemColor = make_color_hsv(hue,255,255);

function gemColorEffect()
{
	if (hue < 255)
	{
		hue += 0.5;
	}
	else
	{
		hue = 0;
	}
	gemColor = make_color_hsv(hue,255,255);
	image_blend = gemColor;
}