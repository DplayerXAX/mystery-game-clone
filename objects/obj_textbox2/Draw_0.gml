/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
draw_self();

if(talk_start){

	free_move=false;
	timer_little--;
	startLine=lines[|0];
	startText=startLine[?"text"];
	draw_set_font(font_word);
	draw_set_color(c_white);
	draw_text_ext(x-200,y-40,startText,50,500);
	if(keyboard_check(vk_space)){
	if(timer_little<0){
	timer_little=room_speed*0.2;
	talk_start=false;
	visible=false;
	free_move=true;

	}
	}

	
}
if(talk_door){
	free_move=false;
	timer_little--;
	door=interactables[?"obj_door"];
	doorLines=door[?"lines"];
	draw_set_font(font_word);
	draw_set_color(c_white);
	if(obj_player.met_voice){
		doorLine=doorLines[|0];
		doorLineLines=doorLine[?"lines"];
		doorLineLine=doorLineLines[|0];
		doorText=doorLineLine[?"text"];
	}else{
		doorLine=doorLines[|1];
		doorText=doorLine[?"text"];
	
	}
	draw_text_ext(x-200,y-40,doorText,50,500);
	if(keyboard_check(vk_space)){
	if(timer_little<0){
	timer_little=room_speed*0.2;
	talk_door=false;
	visible=false;
	free_move=true;

	}
	}

	
}

if(talk_fish_wood){
	free_move=false;
	timer_little--;
	wood_fish=interactables[?"obj_wooden_fish"];
	wood_fish_lines=wood_fish[?"lines"];
	wood_fish_line=	wood_fish_lines[|0];
	wood_fish_text=wood_fish_line[?"text"];
	draw_set_font(font_word);
	draw_set_color(c_white);
	draw_text_ext(x-200,y-40,wood_fish_text,50,500);
	if(keyboard_check(vk_space)){
	if(timer_little<0){
	timer_little=room_speed*0.2;
	talk_fish_wood=false;
	visible=false;
	free_move=true;

	}
	}

	
}

if(talk_fish_plastic){
	free_move=false;
	timer_little--;
	plastic_fish=interactables[?"obj_plastic_fish"];
	plastic_fish_lines=plastic_fish[?"lines"];
	if(obj_player.met_voice){
		plastic_fish_line=plastic_fish_lines[|1];
		plastic_fish_line_lines=plastic_fish_line[?"lines"];
		plastic_fish_line_line=plastic_fish_line_lines[|0];
		plastic_fish_text=plastic_fish_line_line[?"text"];
	}else{
		plastic_fish_line=plastic_fish_lines[|0];
		plastic_fish_text=plastic_fish_line[?"text"];
		
	}
	draw_set_font(font_word);
	draw_set_color(c_white);
	draw_text_ext(x-200,y-40,plastic_fish_text,50,500);
	if(keyboard_check(vk_space)){
	if(timer_little<0){
	timer_little=room_speed*0.2;
	talk_fish_plastic=false;
	visible=false;
	free_move=true;

	}
	}

	
}

if(talk_fish){
	free_move=false;
	timer_little--;
	fish=interactables[?"obj_fish"];
	fish_lines=fish[?"lines"];
	if(obj_player.met_voice){
		fish_line=fish_lines[|1];
		fish_line_lines=fish_line[?"lines"];
		fish_line_line=fish_line_lines[|0];
		fish_text=fish_line_line[?"text"];
	}else{
		fish_line=fish_lines[|0];
		fish_text=fish_line[?"text"];
		
	}
	draw_set_font(font_word);
	draw_set_color(c_white);
	draw_text_ext(x-200,y-40,fish_text,50,500);
	if(keyboard_check(vk_space)){
	if(timer_little<0){
	if(obj_player.met_voice){
	obj_player.hasFish=true;
	audio_play_sound(item_found_sound,0,false);
	instance_destroy(obj_fish);
	}
	timer_little=room_speed*0.2;
	talk_fish=false;
	visible=false;
	free_move=true;

	}
	}

	
}

if(talk_fish_singing){
	free_move=false;
	timer_little--;
	singing_fish=interactables[?"obj_singing_fish"];
	singing_fish_lines=singing_fish[?"lines"];
	singing_fish_line=singing_fish_lines[|singProgress];
	singing_fish_text=singing_fish_line[?"text"];
	draw_set_font(font_word);
	draw_set_color(c_white);
	draw_text_ext(x-200,y-40,singing_fish_text,50,500);
	if(keyboard_check(vk_space)){
		if(timer_little<0){
		singProgress++;
		speaker.sprite_index=spr_speakerMe;
		if(singProgress!=2){
		timer_little=room_speed*0.2;
		}
		}
	}
	if(singProgress=2){
	if(timer_little<0){
	timer_little=room_speed*0.2;
	talk_fish_singing=false;
	singProgress=0;
	visible=false;
	free_move=true;

	}
	}

	
}

if(talk_fridge){
	free_move=false;
	timer_little--;
	fridge=interactables[?"obj_fridge"];
	fridge_lines=fridge[?"lines"];
	if(!obj_player.met_voice){
		fridge_line=fridge_lines[|0];
		fridge_line_lines=fridge_line[?"lines"];
		fridge_line_line=fridge_line_lines[|fridgeProgress];
		if(fridge_line_line[?"speaker"]=="Voice in Fridge"){
		speaker.sprite_index=spr_speakerVoice;	
		}else{
		speaker.sprite_index=spr_speakerMe;
		}
		if(fridgeProgress!=3){
		fridge_text=fridge_line_line[?"text"];
		}else{
		kitChoices=fridge_line_line[?"choices"];
		choice1=kitChoices[|0];
		choice2=kitChoices[|1];
		choiceBox1=instance_create_layer(x+100,y-30,"UI",obj_choicePlus);
		choiceBox1.myText=choice1[?"text"];
		choiceBox1.destroyPermission=4;
		choiceBox2=instance_create_layer(x+100,y+30,"UI",obj_choicePlus);
		choiceBox2.myText=choice2[?"text"];
		choiceBox2.destroyPermission=4;
		}
		fridgeFinish=5;
		draw_set_font(font_word);
		draw_set_color(c_white);
		if(fridgeProgress=3){
	
		}
		else{draw_text_ext(x-200,y-40,fridge_text,50,500);}
		if(keyboard_check(vk_space)&&fridgeProgress!=3){
		if(timer_little<0){
		fridgeProgress++;
		if(fridgeProgress!=fridgeFinish){
		timer_little=room_speed*0.2;
		}
		}
	
	}
		
	}else{		
		fridgeFinish=2;
		fridge_line=fridge_lines[|1];
		fridge_line_lines=fridge_line[?"lines"];
		
		if(fridgeProgress==0&&!hideText){
		fridge_line_line=fridge_line_lines[|0];
		fridge_text=fridge_line_line[?"text"];
		speaker.sprite_index=spr_speakerVoice;
		draw_text_ext(x-200,y-40,fridge_text,50,500);
		}
		else if(hideText) {
		speaker.sprite_index=spr_speakerMe;
		fridge_line_line=fridge_line_lines[|1];
		specialChoice=fridge_line_line[?"choices"];
		choiceBox1=instance_create_layer(x+100,y+20,"UI",obj_choicePlus);
		choiceBox1.myText="Give you later";
		choiceBox1.destroyPermission=1;
		choiceBox1.myResult="Fine, be quick.";
		if(obj_player.hasApple){
		appleChoice=specialChoice[|1];
		choiceBox2=instance_create_layer(x,y-30,"UI",obj_choicePlus);
		choiceBox2.myText=appleChoice[?"text"];
		choiceBox2.destroyPermission=1;
		appleChoiceLines=appleChoice[?"lines"];
		appleChoiceLine=appleChoiceLines[|0];
		choiceBox2.myResult=appleChoiceLine[?"text"];
		choiceBox2.myRoom="rm_voice_angry";

		}
		if(obj_player.hasFish){
		fishChoice=specialChoice[|0];
		choiceBox3=instance_create_layer(x+200,y-30,"UI",obj_choicePlus);
		choiceBox3.myText=fishChoice[?"text"];
		choiceBox3.destroyPermission=1;
		fishChoiceLines=fishChoice[?"lines"];
		fishChoiceLine=fishChoiceLines[|0];
		choiceBox3.myResult=fishChoiceLine[?"text"];
		choiceBox3.myRoom="rm_voice_happy";
		}
		
		
		}else if(fridgeProgress==1){
		speaker.sprite_index=spr_speakerVoice;
		draw_set_font(font_word);
		draw_set_color(c_white);
		show_debug_message(choiceAnswer);
		draw_text_ext(x-200,y-40,choiceAnswer,50,500);
		}
		
		
		if(keyboard_check(vk_space)){
		if(timer_little<0){
		if(fridgeProgress==0){
		hideText=true;	
		timer_little=room_speed*0.2;
		}else{
		fridgeProgress++;
		}
		if(fridgeProgress!=fridgeFinish){
		timer_little=room_speed*0.2;
		}
		}
	
	}
		
	}
	
	
	if(fridgeProgress==fridgeFinish){
	if(timer_little<0){
	speaker.sprite_index=spr_speakerMe;
	timer_little=room_speed*0.2;
	fridgeProgress=0;
	talk_fridge=false;
	obj_player.met_voice=true;
	visible=false;
	y=384;
	free_move=true;

	}
	}

	
}