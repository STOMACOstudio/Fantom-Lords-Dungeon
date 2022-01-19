/// @description Insert description here
// You can write your code in this editor

if gemChoice = 0 global.LIFgems ++;
else if gemChoice = 1 global.ATKgems ++;
else if gemChoice = 2 global.DEFgems ++;
else if gemChoice = 3 global.MAGgems ++;
else if gemChoice = 4 global.ACTgems ++;
else if gemChoice = 5 global.RNBgems ++;

audio_play_sound(snCollectGem,0,false);
instance_destroy();