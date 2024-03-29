/// @description Insert description here
// You can write your code in this editor

#region color LIF
if global.LIF < 8 colorLIF = colorInf3;
else if global.LIF > 7 && global.LIF < 10 colorLIF = colorInf2;
else if global.LIF > 9 && global.LIF < 12 colorLIF = colorInf1;
else if global.LIF = 12 colorLIF = colorNeutral;
else if global.LIF > 12 && global.LIF < 15 colorLIF = colorSup1;
else if global.LIF > 14 && global.LIF < 20 colorLIF = colorSup2;
else if global.LIF > 19 colorLIF = colorSup3;
#endregion
#region color ATK
if global.ATK < 8 colorATK = colorInf3;
else if global.ATK > 7 && global.ATK < 10 colorATK = colorInf2;
else if global.ATK > 9 && global.ATK < 12 colorATK = colorInf1;
else if global.ATK = 12 colorATK = colorNeutral;
else if global.ATK > 12 && global.ATK < 15 colorATK = colorSup1;
else if global.ATK > 14 && global.ATK < 20 colorATK = colorSup2;
else if global.ATK > 19 colorATK = colorSup3;
#endregion
#region color DEF
if global.DEF < 8 colorDEF = colorInf3;
else if global.DEF > 7 && global.DEF < 10 colorDEF = colorInf2;
else if global.DEF > 9 && global.DEF < 12 colorDEF = colorInf1;
else if global.DEF = 12 colorDEF = colorNeutral;
else if global.DEF > 12 && global.DEF < 15 colorDEF = colorSup1;
else if global.DEF > 14 && global.DEF < 20 colorDEF = colorSup2;
else if global.DEF > 19 colorDEF = colorSup3;
#endregion
#region color MAG
if global.MAG < 8 colorMAG = colorInf3;
else if global.MAG > 7 && global.MAG < 10 colorMAG = colorInf2;
else if global.MAG > 9 && global.MAG < 12 colorMAG = colorInf1;
else if global.MAG = 12 colorMAG = colorNeutral;
else if global.MAG > 12 && global.MAG < 15 colorMAG = colorSup1;
else if global.MAG > 14 && global.MAG < 20 colorMAG = colorSup2;
else if global.MAG > 19 colorMAG = colorSup3;
#endregion
#region color ACT
if global.ACT < 8 colorACT = colorInf3;
else if global.ACT > 7 && global.ACT < 10 colorACT = colorInf2;
else if global.ACT > 9 && global.ACT < 12 colorACT = colorInf1;
else if global.ACT = 12 colorACT = colorNeutral;
else if global.ACT > 12 && global.ACT < 15 colorACT = colorSup1;
else if global.ACT > 14 && global.ACT < 20 colorACT = colorSup2;
else if global.ACT > 19 colorACT = colorSup3;
#endregion

#region draw sheit dawg
draw_text(250,120,"Lord " + string(global.lordName));

draw_sprite(sCollect_Gem,0,x-32,y-8);
draw_text_transformed_color(x+34,y, "LIF " + string(global.LIF),1.5,1.5,0,	colorLIF,colorLIF,colorLIF,colorLIF,1);

draw_sprite(sCollect_Gem,1,x-32,y+distance-8);
draw_text_transformed_color(x+34,y+distance, "ATK " + string(global.ATK),1.5,1.5,0, colorATK,colorATK,colorATK,colorATK,1);

draw_sprite(sCollect_Gem,2,x-32,y+distance*2-8);
draw_text_transformed_color(x+34,y+distance*2, "DEF " + string(global.DEF),1.5,1.5,0, colorDEF,colorDEF,colorDEF,colorDEF,1);

draw_sprite(sCollect_Gem,3,x-32,y+distance*3-8);
draw_text_transformed_color(x+34,y+distance*3, "MAG " + string(global.MAG),1.5,1.5,0, colorMAG,colorMAG,colorMAG,colorMAG,1);

draw_sprite(sCollect_Gem,4,x-32,y+distance*4-8);
draw_text_transformed_color(x+34,y+distance*4, "ACT " + string(global.ACT),1.5,1.5,0, colorACT,colorACT,colorACT,colorACT,1);

draw_sprite(sCollect_Gem,5,x-32,y+distance*5-8);
draw_text_transformed(x+34,y+distance*5,"TOT " + string(global.TOT),1.5,1.5,0);
#endregion