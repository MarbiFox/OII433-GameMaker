/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(finished_process){
	
	output = ""
	for(i=0;i<array_length(respuestas);i++){
		output += "user_id attemp_"+string(global.problem_finish_id+1)+" "+string(problem_type)+
		" level_"+string(problem_level)+" "+respuestas[i][0]+" "+respuestas[i][1]+"\n"
	}

	global.problem_finished+=output
	global.problem_finish_id++

	show_debug_message(global.problem_finished)

}

question_current = 0;

