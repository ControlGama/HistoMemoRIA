// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function Cambio_Turno(){
	
	var_select_next = 0;
	
	if global.win = 1{
		// Sumamos puntos
		for (var i = 0; i < instance_number(o_player); ++i;)
	    {    
			var_player = instance_find(o_player,i);
			if	var_player.id_player = global.turno_ant_id_player
			{
				var_player.points = var_player.points + global.points_win;
				//ds_list_add(var_player.mis_casillas,global.id_casilla);
			}
		}
		
		
		//Cambiamos casilla por monumento normal
		for (var i = 0; i < instance_number(o_casilla); ++i;)
		{    
			var_casilla = instance_find(o_casilla,i);
			if	var_casilla.selected = true{
				global.id_casilla = var_casilla.id_casilla;
				var_monumento = instance_create_layer(var_casilla.x,var_casilla.y,"Instances",o_monumento_base);
				instance_destroy(var_casilla, false);
				with(var_monumento){
					
					//Selecciona Sprint depende de la civilizacion
					switch(global.id_civilization)
					{
						case 1:
							sprite_index = sp_monumentos_griegos_1;
							break;
						case 2:
							sprite_index = sp_monumentos_egipcios_1;
							break;
						case 3:
							sprite_index = sp_monumento_mayas_1;
							break;
						case 4:
							sprite_index = sp_monumentos_babilonios_1;
							break;
					}
					image_index = 0;
					peso = 1;
					id_casilla = global.id_casilla;
					id_player = global.turno_ant_id_player;
				}
				
			}
			else //Seleccionamos la primea casilla que encontremos, porque la que estaba seleccionada se va a eliminar
			{
				if var_select_next = 0
				{
					var_casilla.selected = true
					var_casilla.image_index = var_casilla.image_index + 10
					var_select_next = 1;
				}
				
			}
			
		}
		
	} else {
		//Cambiamos casilla por monumento normal
		for (var i = 0; i < instance_number(o_casilla); ++i;) 
		{  
			var_casilla = instance_find(o_casilla,i);
			if	var_casilla.selected = true{
				var_casilla = instance_find(o_casilla,i);
				var_casilla.selected = false
				var_casilla.image_index = var_casilla.image_index - 10;
				break;
			}
		}
		for (var i = 0; i < instance_number(o_casilla); ++i;)
		{  
			var_casilla = instance_find(o_casilla,i);
			var_casilla = instance_find(o_casilla,i);
			var_casilla.selected = true
			var_casilla.image_index = var_casilla.image_index + 10;
			break;
		}

	
	}
	

	
	//quitamos la seleccion de los monumentos
	for (var i = 0; i < instance_number(o_monumento_base); ++i;)
	   {    
		var_monumento = instance_find(o_monumento_base,i);
		var_monumento.image_index = 0
	}

	//quitamos la seleccion de los monumentos
	for (var i = 0; i < instance_number(o_monumento_raro); ++i;)
	   {    
		var_monumento = instance_find(o_monumento_raro,i);
		var_monumento.image_index = 0
	}
	
	//Cambiamos el marco del jugador en turno
	for (var i = 0; i < instance_number(o_player_marco); ++i;)
	{    
		var_marco = instance_find(o_player_marco,i);
		if	var_marco.id_marco_player = global.turno_id_player{
			var_marco.image_index = 4;
		}else{
			var_marco.image_index = 0;		
		}
	}
	
	//Revisar quien gano
	if instance_number(o_casilla) = 0{ //Solo cuanod ya no hay casillas
		//Contasr casillas base
		for (var i = 0; i < instance_number(o_monumento_base); ++i;)
		{    
			var_monumento = instance_find(o_monumento_base,i);
			switch(var_monumento.id_player){
				case 1:
					global.player_1_casillas = global.player_1_casillas +1;
				break;
				case 2:
					global.player_2_casillas = global.player_2_casillas + 1;
				break;
				case 3:
					global.player_3_casillas = global.player_2_casillas + 1;
				break;
				case 4:
					global.player_4_casillas = global.player_2_casillas + 1;
				break;
			}
		}
		
		for (var i = 0; i < instance_number(o_monumento_raro); ++i;)
		{    
			var_monumento = instance_find(o_monumento_raro,i);
			switch(var_monumento.id_player){
				case 1:
					global.player_1_casillas = global.player_1_casillas + 4;
				break;
				case 2:
					global.player_2_casillas = global.player_2_casillas + 4;
				break;
				case 3:
					global.player_3_casillas = global.player_2_casillas + 4;
				break;
				case 4:
					global.player_4_casillas = global.player_2_casillas + 4;
				break;
			}
		}
		
		for (var i = 0; i < instance_number(o_monumento_legendario); ++i;)
		{    
			var_monumento = instance_find(o_monumento_legendario,i);
			switch(var_monumento.id_player){
				case 1:
					global.player_1_casillas = global.player_1_casillas + 9;
				break;
				case 2:
					global.player_2_casillas = global.player_2_casillas + 9;
				break;
				case 3:
					global.player_3_casillas = global.player_2_casillas + 9;
				break;
				case 4:
					global.player_4_casillas = global.player_2_casillas + 9;
				break;
			}
		}
		
		room_goto(EndGame);

	}

	//Reseteamos variables de puntos
	global.win = 0;
	global.points_win = 0;
	global.peso = 0;
		
}