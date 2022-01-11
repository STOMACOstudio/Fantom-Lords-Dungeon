/// @description Insert description here
// You can write your code in this editor

if global.currentName != "none" draw_text(x,y,global.currentName);
draw_text(x,y+280,"LIF: " + string(global.currentHealth) + "/" + string(global.currentHealthMAX));
draw_text(x,y+316,"ATK: " + string(global.currentATK));
draw_text(x,y+352,"DEF: " + string(global.currentDEF));
draw_text(x,y+388,"MAG: " + string(global.currentMAG));
draw_text(x,y+424,"ACT: " + string(global.currentACT));