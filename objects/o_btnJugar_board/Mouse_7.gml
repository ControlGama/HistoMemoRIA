/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//menos 10 porque esta seleccionado

switch ((global.type_game-10)){
	case 0: //Preguntas facil
		global.intentos_quiz = 1;
		global.total_intentos_quiz = 3; 
		room_goto(rm_quiz);
	break;
	case 1: //Preguntas medio
		global.intentos_quiz = 1;
		global.total_intentos_quiz = 2; 
		room_goto(rm_quiz);
	break;
	case 2: //Preguntas dificil 
		global.intentos_quiz = 1;
		global.total_intentos_quiz = 1; 
		room_goto(rm_quiz);
	break;
	case 3: //Pictureka facil
		room_goto(rm_pictureka_easy);
	break;
	case 4: //Pictureka medio
		room_goto(rm_pictureka_medium);
	break;
	case 5: //Pictureka dificil
		room_goto(rm_pictureka_hard);
	break;
	case 6: //memorama facil
		room_goto(rm_memorama_esey);
	break;
	case 7: //memorama medio
		room_goto(rm_memorama_medium);
	break;
	case 8: //memorama dificil 
		room_goto(rm_memorama_hard);
	break;
}

