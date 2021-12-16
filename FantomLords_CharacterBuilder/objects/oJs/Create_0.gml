/// @description Insert description here
// You can write your code in this editor

test_json = "{\"myObj\": { \"apples\":10, \"oranges\":12, \"potatoes\":100000, \"avocados\":0 }, \"myArray\":[0, 1, 2, 2, 4, 0, 1, 5, 1]}";

parsedJS = json_parse(test_json);

swordATKvalue = real(parsedJS.myObj.apples);