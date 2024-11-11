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

function scrSplitTextIntoPages(text, font, separation, width, height) {
	var pages = []; // Todas las paginas disponibles
	var page = ""; // Pagina actual
	
	// Primero dividimos el texto en palabras, así que un texto como "hola mundo" se convierte en un array ["hola", "mundo"]
	var words = separar_palabras(text);
	var length = array_length(words);

	// Colocamos la fuente con la que queremos medir el texto
	draw_set_font(font);
	
	// Iteramos por cada una de las palabras
	for (var i=0;i<length;i++) {
		var word = words[i];
		
		// Si el tamaño vertical de la pagina actual (page) + la palabra (word) es mayor o igual que la altura
		// que le pasamos como parametro a esta función (height)
		if (string_height_ext(page + " " + word, separation, width) >= height) {
			// Entonces cerramos la página actual
			pages[array_length(pages)] = page;
			// E iniciamos una nueva pagina con solo la palabra de esta iteración
			page = word;
		} else {
			// Si el tamaño vertical es menor entonces añadimos la palabra a la pagina actual
			if (i > 0) { page += " "; }
			page += word;
		}
	}
	
	// Luego de iterar por todas las palabras igual nos sobra una pagina, así que la añadimos a el total de paginas
	pages[array_length(pages)] = page;
	
	// Retornamos todas las paginas
	return pages;
}
	
function separar_palabras(texto){
	
	texto += " "; // se le agrega un espacio al final para que detecte la ultima palabra
	var palabra = ""; // aqui se guardan los caracteres iterados hasta encontrar un espacio
	var lista_palabras; // aqui se almacenan todas las palabras y se retorna la lista
	var numero_palabra = 0; // indice para guardar las palabras en la lista
	/*
		"i" recorre el texto y va guardando cada caracter en "palabra", cuando se encuentra con un espacio
		guarda lo que tenia "palabra" en "lista_palabras"
	*/
	for (var i = 1; i <= string_length(texto); i++){
		
		if (string_char_at(texto,i) == " "){
			lista_palabras[numero_palabra] = palabra;
			palabra = "";
			numero_palabra++;
		}
		else {
			palabra += string_char_at(texto,i);
		}
	}
	return lista_palabras;
}