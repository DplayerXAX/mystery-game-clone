/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


globalvar interactable;
globalvar free_move;


var json_string = file_text_open_read("mystery.json");
var content = "";
while (!file_text_eof(json_string)) 
{
    content += file_text_read_string(json_string);
    file_text_readln(json_string);
}
file_text_close(json_string);

// Parse the JSON string into a DS map
global.gameData = json_decode(content);

global.currentRoom=global.gameData[?"rm_bedroom"];
interactable=global.currentRoom[?"interactable"];
free_move=global.currentRoom[?"free_move"];
if(free_move){show_debug_message("it's true!");}



