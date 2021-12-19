/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
x_score = 1084;
y_score = 0;

if room = rm_board{
	//Nombre del jugador
	draw_set_color(c_black); 
	draw_set_font(fn_quiz);
	draw_text_ext(x, y, name, 20, 960);
	
	switch (id_player){
		case 1:
			y_score = 160;
		break;
		case 2:
			y_score = 352;
		break;
		case 3:
			y_score = 544;
		break;
		case 4:
			y_score = 736;
		break;
	}
	
	//Puntos del jugador
	draw_set_color(c_black); 
	draw_set_font(fn_quiz);
	draw_text(x_score, y_score, "Puntos:" + string(points) );
	
}