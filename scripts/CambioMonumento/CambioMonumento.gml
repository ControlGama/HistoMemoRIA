// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CambioMonumento(tipo_monumento,casilla_origen){
	
	//Primero destruimos casillas seleccionadas
	var_inctances_num = instance_number(o_monumento_base);
	for (var i = 0; i < var_inctances_num; ++i;)
	{    
		try
		{
			var_casilla = instance_find(o_monumento_base,i);
			if	var_casilla.image_index = 1{
				instance_destroy(var_casilla, false);
				i = -1; //para buscar de nuevo desde el inicio de la lista
			}
		}catch( _exception)
		{
		    show_debug_message(_exception.message);
		    show_debug_message(_exception.longMessage);
		    show_debug_message(_exception.script);
		    show_debug_message(_exception.stacktrace);
		}
	}
	
	var_inctances_num = instance_number(o_monumento_raro);
	for (var i = 0; i < var_inctances_num; ++i;)
	{    
		try
		{
		var_casilla = instance_find(o_monumento_raro,i);
		if	var_casilla.image_index = 1{
			instance_destroy(var_casilla, false);
			i = -1; //para buscar de nuevo desde el inicio de la lista
			}
		}catch( _exception)
		{
		    show_debug_message(_exception.message);
		    show_debug_message(_exception.longMessage);
		    show_debug_message(_exception.script);
		    show_debug_message(_exception.stacktrace);
		}
	}
	
	Coordenadas = relacionIdCordenada(casilla_origen);
	global.id_casilla = casilla_origen;
	
	if tipo_monumento = 1 // Monumento raro
	{
		var_monumento = instance_create_layer(Coordenadas[0],Coordenadas[1],"Instances",o_monumento_raro);
		
		with(var_monumento){
		//Selecciona Sprint depende de la civilizacion
		switch(global.id_civilization)
		{
			case 1:
				sprite_index = sp_monumentos_griegos_2;
				break;
			case 2:
				sprite_index = sp_monumentos_egipcios_2;
				break;
			case 3:
				sprite_index = sp_monumento_mayas_2;
				break;
			case 4:
				sprite_index = sp_monumentos_babilonios_2;
				break;
		}
			image_index = 0;
			peso = 4;
			id_casilla = global.id_casilla;
			id_player = global.turno_ant_id_player;
	}
		
	}
	else if tipo_monumento = 2 // Monumento raro
	{
		var_monumento = instance_create_layer(Coordenadas[0],Coordenadas[1],"Instances",o_monumento_legendario);
	
		with(var_monumento){
		//Selecciona Sprint depende de la civilizacion
		switch(global.id_civilization)
		{
			case 1:
				sprite_index = sp_monumentos_griegos_3;
				break;
			case 2:
				sprite_index = sp_monumentos_egipcios_3;
				break;
			case 3:
				sprite_index = sp_monumento_mayas_3;
				break;
			case 4:
				sprite_index = sp_monumentos_babilonios_3;
				break;
		}
			image_index = 0;
			peso = 9;
			id_casilla = global.id_casilla;
			id_player = global.turno_ant_id_player;
		}
	}
	
	


}