/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var_i = 0;
var_memo_1=0;
var_memo_2=0;


if turned = true{
	image_index = id_img_index;
}else{
	if image_index = 0{
		image_index = id_img_index;
		selected = true;
	}else{
		image_index = 0;
		selected = false;
	}
	for (var i = 0; i < instance_number(o_card_memo); ++i;)
	{    
		var_card_memo = instance_find(o_card_memo,i);
		if	var_card_memo.selected = true{
			switch(var_i){
				case 0:
					var_memo_1 = var_card_memo.id_img_index;
				break;
				case 1:
					var_memo_2 = var_card_memo.id_img_index;
				break;
			}
			var_i=var_i+1;
		}
	}

	if var_memo_1=var_memo_2{ //Gano
		
		switch (room){
		case rm_memorama_esey:
			global.points_win = global.points_win + 2;
		break;
		case rm_memorama_medium:
			global.points_win = global.points_win + 3;
		break;
		case rm_memorama_hard:
			global.points_win = global.points_win + 4;
		break;
		}
		global.win = 1;
	
		//Marecar cartas ganadoras
		for (var i = 0; i < instance_number(o_card_memo); ++i;)
		{    
			var_card_memo = instance_find(o_card_memo,i);
			if	var_card_memo.selected = true{
				var_card_memo.turned = true;
				var_card_memo.selected = false; //deselecionamos carta
			}
		}
	
		show_message("¡¡Felicidades!!");
	}else{ //Perdio
		if var_i = 2{
			//Regreasr a tablero prueba
			Cambio_Variable_Turno();
			//Voltear boca abajo todas las cartas no ganadoras
			for (var i = 0; i < instance_number(o_card_memo); ++i;)
			{    
				var_card_memo = instance_find(o_card_memo,i);
				if	var_card_memo.turned = false{
					var_card_memo.selected = false;
					var_card_memo.image_index = 0;
				}
			}
			show_message("¡¡Suerte en la siguiente vez!! ");
			//Regresar al tablero
			room_goto(rm_board);
		}
	}
}


//Revisar si ya se terminaron los pares para comenzar de nuevo
total_memo = 0;
for (var i = 0; i < instance_number(o_card_memo); ++i;)
	{    
		var_card_memo = instance_find(o_card_memo,i);
		if	var_card_memo.turned = true{
			total_memo = total_memo + 1;
		}
	}
	
if total_memo = instance_number(o_card_memo)
{
	switch (room){
		case rm_memorama_esey:
			ds_list_add(global.memo_easy, 1);
			ds_list_add(global.memo_easy, 2);
			ds_list_add(global.memo_easy, 3);
			ds_list_add(global.memo_easy, 4);
			ds_list_add(global.memo_easy, 5);
			ds_list_add(global.memo_easy, 6);
			ds_list_add(global.memo_easy, 1);
			ds_list_add(global.memo_easy, 2);
			ds_list_add(global.memo_easy, 3);
			ds_list_add(global.memo_easy, 4);
			ds_list_add(global.memo_easy, 5);
			ds_list_add(global.memo_easy, 6);
		break;
		case rm_memorama_medium:
			ds_list_add(global.memo_norm, 1);
			ds_list_add(global.memo_norm, 2);
			ds_list_add(global.memo_norm, 3);
			ds_list_add(global.memo_norm, 4);
			ds_list_add(global.memo_norm, 5);
			ds_list_add(global.memo_norm, 6);
			ds_list_add(global.memo_norm, 7);
			ds_list_add(global.memo_norm, 8);
			ds_list_add(global.memo_norm, 9);
			ds_list_add(global.memo_norm, 1);
			ds_list_add(global.memo_norm, 2);
			ds_list_add(global.memo_norm, 3);
			ds_list_add(global.memo_norm, 4);
			ds_list_add(global.memo_norm, 5);
			ds_list_add(global.memo_norm, 6);
			ds_list_add(global.memo_norm, 7);
			ds_list_add(global.memo_norm, 8);
			ds_list_add(global.memo_norm, 9);
		break;
		case rm_memorama_hard:
			ds_list_add(global.memo_hard, 1);
			ds_list_add(global.memo_hard, 2);
			ds_list_add(global.memo_hard, 3);
			ds_list_add(global.memo_hard, 4);
			ds_list_add(global.memo_hard, 5);
			ds_list_add(global.memo_hard, 6);
			ds_list_add(global.memo_hard, 7);
			ds_list_add(global.memo_hard, 8);
			ds_list_add(global.memo_hard, 9);
			ds_list_add(global.memo_hard, 10);
			ds_list_add(global.memo_hard, 11);
			ds_list_add(global.memo_hard, 12);
			ds_list_add(global.memo_hard, 13);
			ds_list_add(global.memo_hard, 14);
			ds_list_add(global.memo_hard, 15);
			ds_list_add(global.memo_hard, 1);
			ds_list_add(global.memo_hard, 2);
			ds_list_add(global.memo_hard, 3);
			ds_list_add(global.memo_hard, 4);
			ds_list_add(global.memo_hard, 5);
			ds_list_add(global.memo_hard, 6);
			ds_list_add(global.memo_hard, 7);
			ds_list_add(global.memo_hard, 8);
			ds_list_add(global.memo_hard, 9);
			ds_list_add(global.memo_hard, 10);
			ds_list_add(global.memo_hard, 11);
			ds_list_add(global.memo_hard, 12);
			ds_list_add(global.memo_hard, 13);
			ds_list_add(global.memo_hard, 14);
			ds_list_add(global.memo_hard, 15);
		break;
	}
	
	for (var i = 0; i < instance_number(o_card_memo); ++i;)
	{    
		var_card_memo = instance_find(o_card_memo,i);
		var_card_memo.turned = false;
		var_card_memo.selected = false;
		var_card_memo.image_index = 0;
		
		switch (room){
			case rm_memorama_esey:
				ds_list_shuffle(global.memo_easy);
				var_card_memo.id_img_index = ds_list_find_value(global.memo_easy, 0);
				ds_list_delete(global.memo_easy, 0);
			break;
			case rm_memorama_medium:
				ds_list_shuffle(global.memo_norm);
				var_card_memo.id_img_index = ds_list_find_value(global.memo_norm, 0);
				ds_list_delete(global.memo_norm, 0);	
			break;
	
			case rm_memorama_hard:
				ds_list_shuffle(global.memo_hard);
				var_card_memo.id_img_index = ds_list_find_value(global.memo_hard, 0);
				ds_list_delete(global.memo_hard, 0);
			break;
		}
		
	}
}


//global.win = 1;//TEST


