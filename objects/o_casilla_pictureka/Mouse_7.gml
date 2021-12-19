/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if image_index = global.correctAnswPiK_id
{
	show_message("¡¡Correcto!!! "  + global.correctAnswPiK)
	global.win = 1;
	switch (room){
		case rm_pictureka_easy:
			global.points_win = global.points_win + 2;
		break;
		case rm_pictureka_medium:
			global.points_win = global.points_win + 3;
		break;
		case rm_pictureka_hard:
			global.points_win = global.points_win + 5;
		break;
	}
		
}
else
{
	show_message("¡¡Suerte en la siguiente vez!! ");
	global.win = 0;
}

//global.win = 1;//TEST

global.correctAnswPiK_id = -1;
global.correctAnswPiK = "";
Cambio_Variable_Turno();
room_goto(rm_board);
