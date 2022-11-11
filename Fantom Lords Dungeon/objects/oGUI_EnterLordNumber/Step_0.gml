/// @description Insert description here
// You can write your code in this editor

if active && string_length(string(input)) < 4
{
	if keyboard_check_pressed(ord("0")) || keyboard_check_pressed(vk_numpad0) input += "0";
	else if keyboard_check_pressed(ord("1")) || keyboard_check_pressed(vk_numpad1) input += "1";
	else if keyboard_check_pressed(ord("2")) || keyboard_check_pressed(vk_numpad2) input += "2";
	else if keyboard_check_pressed(ord("3")) || keyboard_check_pressed(vk_numpad3) input += "3";
	else if keyboard_check_pressed(ord("4")) || keyboard_check_pressed(vk_numpad4) input += "4";
	else if keyboard_check_pressed(ord("5")) || keyboard_check_pressed(vk_numpad5) input += "5";
	else if keyboard_check_pressed(ord("6")) || keyboard_check_pressed(vk_numpad6) input += "6";
	else if keyboard_check_pressed(ord("7")) || keyboard_check_pressed(vk_numpad7) input += "7";
	else if keyboard_check_pressed(ord("8")) || keyboard_check_pressed(vk_numpad8) input += "8";
	else if keyboard_check_pressed(ord("9")) || keyboard_check_pressed(vk_numpad9) input += "9";
}

if active && keyboard_check_pressed(vk_backspace) input = string_delete(input, string_length(input), 1);

if keyboard_check_pressed(vk_enter) && active
{
	
	if input != ""
	{
		if real(input) > 3333 input = 3333;
		if real(input) < 1 input = 1;
		global.lordNumber = real(input);
	}
	
	if global.lordNumber >= 1 && global.lordNumber <= 250 scrLordGenerator1();
	else if global.lordNumber >= 251 && global.lordNumber <= 500 scrLordGenerator1B();
	else if global.lordNumber >= 501 && global.lordNumber <= 750 scrLordGenerator1C();
	else if global.lordNumber >= 751 && global.lordNumber <= 1000 scrLordGenerator1D();
	else if global.lordNumber >= 1001 && global.lordNumber <= 1250 scrLordGenerator2();
	else if global.lordNumber >= 1251 && global.lordNumber <= 1500 scrLordGenerator2B();
	else if global.lordNumber >= 1501 && global.lordNumber <= 1750 scrLordGenerator2C();
	else if global.lordNumber >= 1751 && global.lordNumber <= 2000 scrLordGenerator2D();
	else if global.lordNumber >= 2001 && global.lordNumber <= 2250 scrLordGenerator3();
	else if global.lordNumber >= 2251 && global.lordNumber <= 2500 scrLordGenerator3B();
	else if global.lordNumber >= 2501 && global.lordNumber <= 2750 scrLordGenerator3C();
	else if global.lordNumber >= 2751 && global.lordNumber <= 3000 scrLordGenerator3D();
	else if global.lordNumber >= 3001 && global.lordNumber <= 3333 scrLordGenerator3E();
	
	active = false;
}

if active image_speed = 1;
else
{
	image_speed = 0;
	image_index = 0;
}
