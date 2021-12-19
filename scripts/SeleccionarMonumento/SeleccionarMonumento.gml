// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function SeleccionarMonumento(peso,id_player){
	
	//Revisa si el monumento le pertenece al jugador
	if id_player = global.turno_id_player
	{
		if image_index = 0{
			global.peso = global.peso + peso;
			if global.peso > 10
			{
				image_index = 0; //No se puede seleccionar, porque exede el peso
				global.peso = global.peso - peso;
			}else{
				image_index = 1;
			}
		}else{
			global.peso = global.peso - peso;
			if global.peso < 0
			{
				global.peso = 0;
			}
			image_index = 0;
		}
	}
	
}