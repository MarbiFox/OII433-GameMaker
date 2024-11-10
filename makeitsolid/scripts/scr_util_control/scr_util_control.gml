// Script: load_json_data
// Argument 0: The file name to load (string)

function scr_read_json(name){	
	if(file_exists(working_directory + name)){
		json = ""
		_file = file_text_open_read(working_directory + name)
		
		while(file_text_eof(_file) == false){
			json += file_text_readln(_file)
		}
	
		file_text_close(_file)
		return_map = json_decode(json)
		
		return return_map
		
	}else{return undefined}
	
}

function scr_spriteanimated(_sprite,_number,_posx,_posy){
	for(i=0;i<_number;i++){
		draw_sprite(_sprite,i,_posx,_posy)
	}	
}

