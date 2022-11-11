/// @description Insert description here
// You can write your code in this editor

if gemChoice = sCollect_GemLIF global.LIFgems ++;
else if gemChoice = sCollect_GemATK global.ATKgems ++;
else if gemChoice = sCollect_GemDEF global.DEFgems ++;
else if gemChoice = sCollect_GemMAG global.MAGgems ++;
else if gemChoice = sCollect_GemACT global.ACTgems ++;
else if gemChoice = sCollect_GemRNB global.RNBgems ++;

audio_play_sound(snCollectGem,0,false);
instance_destroy();