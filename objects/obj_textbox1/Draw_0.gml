/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
draw_self();

if(talk_apple){
	newInteractable=global.currentRoom[?"interactables"];
	show_debug_message(string(newInteractable));
	show_debug_message(string(interactables));
	
	apple=interactables[?"obj_apple"];
	appleLines=apple[?"lines"];
	show_debug_message(string(appleLines));
	appleLine=appleLines[|appleProgress];
	show_debug_message(string(appleLine));
	appleText=appleLine[?"text"];
	show_debug_message(appleLine[?"text"]);
	draw_set_font(font_word);
	draw_set_color(c_white);
	draw_text_ext(x-150,y-40,appleText,50,400);
	
}