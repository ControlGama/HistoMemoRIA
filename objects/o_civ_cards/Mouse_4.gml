/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//Tipo de monumento Seleccionado
var_monumento_seleccionado = 0;

//Revisar si es el jugador en turno
if id_card_player = global.turno_id_player
{
	
	switch (image_index){
		case 1:
			var_monumento_seleccionado = 1; //Raro
		break;
		case 2:
			var_monumento_seleccionado = 2; //Legendario
		break;
	}
}else{
	show_message("No es tu turno");
}
		
if var_monumento_seleccionado = 1
{
	//Se necesitan 4 casillas
	list_casillas = ds_list_create();
	
	if (global.peso = 4)
	{
		//Revisar las casillas que selecciono
		for (var i = 0; i < instance_number(o_monumento_base); ++i;)
	    {
			var_monumento = instance_find(o_monumento_base,i);
			if var_monumento.image_index = 1 //Si es uno esta seleccionada
			{
				ds_list_add(list_casillas,var_monumento.id_casilla);
			}
		}
		
		//Revisar si forman un cuadrado de 4*4
		//(en este punto solo debe haber 4 casillas, se valida con el peso)
		ds_list_sort(list_casillas, true);
		if ( ( ds_list_find_value(list_casillas, 0) + 1) = ds_list_find_value(list_casillas, 1) )
		{
			if ( ( ds_list_find_value(list_casillas, 0) + 10) = ds_list_find_value(list_casillas, 2) )
			{
				if ( ( ds_list_find_value(list_casillas, 2) + 1) = ds_list_find_value(list_casillas, 3) )
				{
					show_message("Cambio a monumento Raro");
					Cambio_Variable_Turno();
					CambioMonumento(var_monumento_seleccionado,ds_list_find_value(list_casillas, 0));					
					Cambio_Turno();
					audio_play_sound(Sound4, 5, false);
				}else{
					show_message("Selecciona solo 4 casillas que formen un cuadrado 2x2");
				}
			}else{
				show_message("Selecciona solo 4 casillas que formen un cuadrado 2x2");
			}
		}else{
			show_message("Selecciona solo 4 casillas que formen un cuadrado 2x2");
		}		
	}else{
		show_message("Selecciona solo 4 casillas que formen un cuadrado 2x2");
	}

}else if var_monumento_seleccionado = 2
{
	//Se necesitan 9 casillas o 1 casilla 2x2
	list_casillas = ds_list_create();
	
	
	if (global.peso = 9)
	{
		//Revisar las casillas que selecciono
		for (var i = 0; i < instance_number(o_monumento_base); ++i;)
	    {
			var_monumento = instance_find(o_monumento_base,i);
			if var_monumento.image_index = 1 //Si es uno esta seleccionada
			{
				ds_list_add(list_casillas,var_monumento.id_casilla);
			}
		}
		
		var_mon_raro = 0;
		var_mon_raro_id = 0;
		//Revisar las casillas que selecciono
		for (var i = 0; i < instance_number(o_monumento_raro); ++i;)
	    {
			var_monumento = instance_find(o_monumento_raro,i);
			if var_monumento.image_index = 1 //Si es uno esta seleccionada
			{
				ds_list_add(list_casillas,var_monumento.id_casilla);
				var_mon_raro = var_mon_raro + 1;
				var_mon_raro_id = var_monumento.id_casilla;
			}
		}
		
		if var_mon_raro > 1{
			show_message("Solo se permite seleccionar un monumento raro");
		}else{
			//Revisar si forman un cuadrado de 4*4
			//(en este punto solo debe haber 4 casillas, se valida con el peso)
			
			ds_list_sort(list_casillas, true);
			ok_code = 1;
			
			if var_mon_raro = 1 //Validaciones si se selecciona uno raro
			{	
				//Primero validamos en que posicion de la lista esta
				
					if var_mon_raro_id = (ds_list_find_value(list_casillas, 0)){ //caso 0
						if ( ( ds_list_find_value(list_casillas, 0) + 2) = ds_list_find_value(list_casillas, 1) )
						{
							if ( ( ds_list_find_value(list_casillas, 0) + 20) = ds_list_find_value(list_casillas, 3) )
							{
								if ( ( ds_list_find_value(list_casillas, 3) + 2) = ds_list_find_value(list_casillas, 5) )
								{
									ok_code = 1;
								}else{
									show_message("Selecciona solo 9 casillas que formen un cuadrado 3x3");
								}
							}else{
								show_message("Selecciona solo 9 casillas que formen un cuadrado 3x3");
							}
						}else{
							show_message("Selecciona solo 9 casillas que formen un cuadrado 3x3");
						}	
					}
					else if var_mon_raro_id(ds_list_find_value(list_casillas, 1)){ //caso 1
						if ( ( ds_list_find_value(list_casillas, 0) + 2) = ds_list_find_value(list_casillas, 1) )
						{
							if ( ( ds_list_find_value(list_casillas, 0) + 20) = ds_list_find_value(list_casillas, 3) )
							{
								if ( ( ds_list_find_value(list_casillas, 3) + 2) = ds_list_find_value(list_casillas, 5) )
								{
									ok_code = 1;
								}else{
									show_message("Selecciona solo 9 casillas que formen un cuadrado 3x3");
								}
							}else{
								show_message("Selecciona solo 9 casillas que formen un cuadrado 3x3");
							}
						}else{
							show_message("Selecciona solo 9 casillas que formen un cuadrado 3x3");
						}
					}
					else if var_mon_raro_id = (ds_list_find_value(list_casillas, 3)){ //caso 3
						if ( ( ds_list_find_value(list_casillas, 0) + 2) = ds_list_find_value(list_casillas, 1) )
						{
							if ( ( ds_list_find_value(list_casillas, 0) + 10) = ds_list_find_value(list_casillas, 3) )
							{
								if ( ( ds_list_find_value(list_casillas, 2) + 20) = ds_list_find_value(list_casillas, 5) )
								{
									ok_code = 1;
								}else{
									show_message("Selecciona solo 9 casillas que formen un cuadrado 3x3");
								}
							}else{
								show_message("Selecciona solo 9 casillas que formen un cuadrado 3x3");
							}
						}else{
							show_message("Selecciona solo 9 casillas que formen un cuadrado 3x3");
						}
					}
					else if var_mon_raro_id = (ds_list_find_value(list_casillas, 4)){ //caso 4
						if ( ( ds_list_find_value(list_casillas, 0) + 20) = ds_list_find_value(list_casillas, 5) )
						{
							if ( ( ds_list_find_value(list_casillas, 0) + 2) = ds_list_find_value(list_casillas, 2) )
							{
								if ( ( ds_list_find_value(list_casillas, 3) + 1) = ds_list_find_value(list_casillas, 4) )
								{
									ok_code = 1;
								}else{
									show_message("Selecciona solo 9 casillas que formen un cuadrado 3x3");
								}
							}else{
								show_message("Selecciona solo 9 casillas que formen un cuadrado 3x3");
							}
						}else{
							show_message("Selecciona solo 9 casillas que formen un cuadrado 3x3");
						}
					}
					else{ 
						show_message("No se encuentra monumento raro D:!");
					}
				
			}else{ //Validaciones si son puros base
				distancia = 1;
				ok_code = 0;
				
					if ( ( ds_list_find_value(list_casillas, 0) + distancia) = ds_list_find_value(list_casillas, 1) )
					{
						if ( ( ds_list_find_value(list_casillas, 1) + distancia) = ds_list_find_value(list_casillas, 2) )
						{
							if ( ( ds_list_find_value(list_casillas, 3) + distancia) = ds_list_find_value(list_casillas, 4) )
							{
								if ( ( ds_list_find_value(list_casillas, 4) + distancia) = ds_list_find_value(list_casillas, 5) )
								{
									if ( ( ds_list_find_value(list_casillas, 6) + distancia) = ds_list_find_value(list_casillas, 7) )
									{
										if ( ( ds_list_find_value(list_casillas, 7) + distancia) = ds_list_find_value(list_casillas, 8) )
										{
											ok_code = 1;
										}else{
											show_message("Selecciona solo 9 casillas que formen un cuadrado 3x3");
										}
									}else{
										show_message("Selecciona solo 9 casillas que formen un cuadrado 3x3");
									}
								}else{
									show_message("Selecciona solo 9 casillas que formen un cuadrado 3x3");
								}
							}else{
								show_message("Selecciona solo 9 casillas que formen un cuadrado 3x3");
							}
						}else{
							show_message("Selecciona solo 9 casillas que formen un cuadrado 3x3");
						}
					}else{
						show_message("Selecciona solo 9 casillas que formen un cuadrado 3x3");
					}		
					
					distancia = 10;
					if ( ( ds_list_find_value(list_casillas, 0) + distancia) = ds_list_find_value(list_casillas, 3) )
					{
						if ( ( ds_list_find_value(list_casillas, 1) + distancia) = ds_list_find_value(list_casillas, 4) )
						{
							if ( ( ds_list_find_value(list_casillas, 2) + distancia) = ds_list_find_value(list_casillas, 5) )
							{
								if ( ( ds_list_find_value(list_casillas, 3) + distancia) = ds_list_find_value(list_casillas, 6) )
								{
									if ( ( ds_list_find_value(list_casillas, 4) + distancia) = ds_list_find_value(list_casillas, 7) )
									{
										if ( ( ds_list_find_value(list_casillas, 5) + distancia) = ds_list_find_value(list_casillas, 8) )
										{
											ok_code = 1;
										}else{
											show_message("Selecciona solo 9 casillas que formen un cuadrado 3x3");
											ok_code = 0;
										}
									}else{
										show_message("Selecciona solo 9 casillas que formen un cuadrado 3x3");
										ok_code = 0;
									}
								}else{
									show_message("Selecciona solo 9 casillas que formen un cuadrado 3x3");
									ok_code = 0;
								}
							}else{
								show_message("Selecciona solo 9 casillas que formen un cuadrado 3x3");
								ok_code = 0;
							}
						}else{
							show_message("Selecciona solo 9 casillas que formen un cuadrado 3x3");
							ok_code = 0;
						}
					}else{
						show_message("Selecciona solo 9 casillas que formen un cuadrado 3x3");
						ok_code = 0;
					}		
								
			}
			
			if ok_code = 1{
				show_message("Cambio a monumento Épico");
				Cambio_Variable_Turno();
				CambioMonumento(var_monumento_seleccionado,ds_list_find_value(list_casillas, 0));					
				Cambio_Turno();
				audio_play_sound(Epico, 6, false);
			}
			
		}
	}else{
		show_message("Selecciona solo 9 casillas que formen un cuadrado 3x3");
	}
}

	
