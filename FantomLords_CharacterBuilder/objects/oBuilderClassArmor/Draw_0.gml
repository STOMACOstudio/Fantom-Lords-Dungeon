/// @description Insert description here
// You can write your code in this editor

draw_text(x,y-16,"ANCESTRY: " + ds_list_find_value(oLordTrait_Ancestry.list_ancestry,global.ancestry));
draw_text(x,y,"ARMOR: " + ds_list_find_value(list_classArmor,classArmor));
draw_text(x,y+16, "WEAPON: " + ds_list_find_value(oLordTrait_Weapon.list_weapon,global.weapon));
draw_text(x,y+32, "HEADGEAR: " + ds_list_find_value(oLordTrait_Headgear.list_headgear,global.headgear));
draw_text(x,y+48, "RELIC: " + ds_list_find_value(oLordTrait_Relic.list_relic,global.relic));
draw_text(x,y+64, "BACKGROUND: " + ds_list_find_value(oLordTrait_Background.list_background,global.background));