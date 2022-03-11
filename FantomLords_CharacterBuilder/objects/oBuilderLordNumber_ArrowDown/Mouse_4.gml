/// @description Insert description here
// You can write your code in this editor

if global.lordNumber > 1 global.lordNumber --;
else global.lordNumber = global.lordNumberMAX;

if global.lordNumber >= 1 && global.lordNumber <= 500 scrLordGenerator1();
else if global.lordNumber >= 501 && global.lordNumber <= 1000 scrLordGenerator1B();
else if global.lordNumber >= 1001 && global.lordNumber <= 1500 scrLordGenerator2();
else if global.lordNumber >= 1501 && global.lordNumber <= 2000 scrLordGenerator2B();
else if global.lordNumber >= 2001 && global.lordNumber <= 2500 scrLordGenerator3();
else if global.lordNumber >= 2501 && global.lordNumber <= 3333 scrLordGenerator3B();

image_blend = c_yellow;
audio_play_sound(snClick,0,false);