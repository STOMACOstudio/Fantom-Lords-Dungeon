/// @description Insert description here
// You can write your code in this editor

image_blend = c_white;

if image_xscale < 1 image_xscale += 0.05;
if image_yscale < 1 image_yscale += 0.05;
if image_xscale > 1 image_xscale = 1;
if image_yscale > 1 image_yscale = 1;

oHomeButton_print.printMex = "Play the DEMO for free!";