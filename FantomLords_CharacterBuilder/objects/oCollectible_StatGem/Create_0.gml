/// @description Insert description here
// You can write your code in this editor

/*0 = LIFE
1 = ATTACK
2 = DEFENSE
3 = MAGIC
4 = ACTIONS
5 = RAINBOW*/

gemChoice = choose(sCollect_GemACT , sCollect_GemATK , sCollect_GemDEF , sCollect_GemLIF , sCollect_GemMAG , sCollect_GemRNB);

sprite_index = gemChoice;

image_index = 0;

image_alpha = 0;

revealed = false;

target = false;

isSelected = false;

if gemChoice = sCollect_GemACT thisName = "Sextant";
else if gemChoice = sCollect_GemATK thisName = "Sword";
else if gemChoice = sCollect_GemDEF thisName = "Shield";
else if gemChoice = sCollect_GemLIF thisName = "Egg";
else if gemChoice = sCollect_GemMAG thisName = "Scroll";
else if gemChoice = sCollect_GemRNB thisName = "Gemstone";
