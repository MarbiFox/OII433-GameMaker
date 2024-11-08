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

function scr_test_json(){
	
}
/*

json = ""
	_file = file_text_open_read(dir)
	while(file_text_eof(_file)){
		json += file_text_readln(_file)
	}
	file_text_close(_file)
	
	return json

*/