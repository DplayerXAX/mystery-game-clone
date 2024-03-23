/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

draw_self();

if(place_meeting(x,y,obj_player)&&keyboard_check(vk_space)){
	if(_get_key=0){
	draw_sprite(spr_textbox,-1,obj_player.x,obj_player.y-150);
	draw_text_ext_transformed
	(obj_player.x-600,obj_player.y-300,"Where are u...Where am I...I lost my key somewhere.",10,170,4,4,0);
	}else if(_fear=0){
	draw_text(x,y,"Bow to the witch inside the wall, and she may tell you how to leave for a moment.");
	}else{
	draw_text(x,y,"There're so many of us.There's so much time.Come back, would you?");
	}
	
	}

