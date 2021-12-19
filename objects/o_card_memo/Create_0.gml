/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

randomize();
switch (room){
	case rm_memorama_esey:
		ds_list_shuffle(global.memo_easy);
		id_img_index = ds_list_find_value(global.memo_easy, 0);
		ds_list_delete(global.memo_easy, 0);
	break;
	case rm_memorama_medium:
		ds_list_shuffle(global.memo_norm);
		id_img_index = ds_list_find_value(global.memo_norm, 0);
		ds_list_delete(global.memo_norm, 0);	
	break;
	
	case rm_memorama_hard:
		ds_list_shuffle(global.memo_hard);
		id_img_index = ds_list_find_value(global.memo_hard, 0);
		ds_list_delete(global.memo_hard, 0);
	break;
}


