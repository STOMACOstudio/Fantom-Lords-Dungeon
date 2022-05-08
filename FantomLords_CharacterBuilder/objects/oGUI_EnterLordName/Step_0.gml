/// @description Insert description here
// You can write your code in this editor

if active && string_length(string(input)) < 8
{
	if keyboard_check_pressed(ord("Q")) input += "Q";
	else if keyboard_check_pressed(ord("W")) input += "W";
	else if keyboard_check_pressed(ord("E")) input += "E";
	else if keyboard_check_pressed(ord("R")) input += "R";
	else if keyboard_check_pressed(ord("T")) input += "T";
	else if keyboard_check_pressed(ord("Y")) input += "Y";
	else if keyboard_check_pressed(ord("U")) input += "U";
	else if keyboard_check_pressed(ord("I")) input += "I";
	else if keyboard_check_pressed(ord("O")) input += "O";
	else if keyboard_check_pressed(ord("P")) input += "P";
	else if keyboard_check_pressed(ord("A")) input += "A";
	else if keyboard_check_pressed(ord("S")) input += "S";
	else if keyboard_check_pressed(ord("D")) input += "D";
	else if keyboard_check_pressed(ord("F")) input += "F";
	else if keyboard_check_pressed(ord("G")) input += "G";
	else if keyboard_check_pressed(ord("H")) input += "H";
	else if keyboard_check_pressed(ord("J")) input += "J";
	else if keyboard_check_pressed(ord("K")) input += "K";
	else if keyboard_check_pressed(ord("L")) input += "L";
	else if keyboard_check_pressed(ord("Z")) input += "Z";
	else if keyboard_check_pressed(ord("X")) input += "X";
	else if keyboard_check_pressed(ord("C")) input += "C";
	else if keyboard_check_pressed(ord("V")) input += "V";
	else if keyboard_check_pressed(ord("B")) input += "B";
	else if keyboard_check_pressed(ord("N")) input += "N";
	else if keyboard_check_pressed(ord("M")) input += "M";
	else if keyboard_check_pressed(vk_backspace) input = string_delete(input, string_length(input), 1);
}

if keyboard_check_pressed(vk_enter) && active
{
	
	if input != ""
	{
		global.lordName = string(input);
	}
	
	active = false;
}

if active image_speed = 1;
else
{
	image_speed = 0;
	image_index = 0;
}
