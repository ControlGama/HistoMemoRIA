/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if image_index < 9{
	image_index = image_index + 10;
	for (var i = 0; i < instance_number(o_casilla); ++i;)
    {    
		var_casilla = instance_find(o_casilla,i);
		if	var_casilla.selected = true{
			var_casilla.image_index = var_casilla.image_index - 10;
			var_casilla.selected = false;
		}
	}
	selected = true;
	audio_play_sound(select, 1, false);
}

//con el index de la imagen sabemos el tipo de juego y la dificultad
global.type_game = image_index;
