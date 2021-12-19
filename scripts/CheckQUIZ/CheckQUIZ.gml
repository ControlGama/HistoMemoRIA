// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CheckQUIZ(id_button){
		
	var_total_intentos = global.total_intentos_quiz - global.intentos_quiz;
	
	if global.quiz_id = id_button{
		show_message("¡¡Correcto!!");
		switch(global.total_intentos_quiz){
			case 1: //hard
				global.points_win = global.points_win + 5;
			break;
			case 2: //medium
				global.points_win = global.points_win + 3;
			break;
			case 3: //easy
				global.points_win = global.points_win + 2;
			break;
		}
		
		global.win = 1;
		Cambio_Variable_Turno();
		room_goto(rm_board);
	}else{
		if global.total_intentos_quiz <= global.intentos_quiz{
			global.win = 0;
			show_message("¡¡Suerte en la siguiente vez!! ");
			Cambio_Variable_Turno();
			room_goto(rm_board);
		}else{
			show_message("Tiens " + string(var_total_intentos) + " intento mas!!");
		}
	}
		
	global.intentos_quiz = global.intentos_quiz + 1;
	
	//global.win = 1;//TEST
	//room_goto(rm_board);

}

