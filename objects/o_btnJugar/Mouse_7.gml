/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

var player = instance_create_layer(x_poistion,y_poistion,"Instances",o_player);

	with(player){
	
		id_player = global.num_players;
	
		if (global.player_name = ""){
			name = "Player_" + string(global.num_players);
		} else {
			name = global.player_name;
		}
	
		id_civilization = global.id_civilization;
	}


x_poistion = x_poistion + 0;
y_poistion = y_poistion + 192;


if (global.total_players == global.num_players){
	room_goto(rm_board);
	//room_goto(EndGame);
}

if ((global.total_players-1) == global.num_players){
	image_index=1;
}

global.num_players += 1;

//Limpiar variables
global.player_name = "";
global.name_refresh = 1; //Para borrar nombre
//o_boxText.player_name = "";