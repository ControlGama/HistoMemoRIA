// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function Cambio_Variable_Turno(){
	//Cambiamos variable de turno
	switch(global.total_players){
		case 2:
			switch(global.turno_id_player){
				case 0:
					global.turno_id_player = 1;
					break;
				case 1:
					global.turno_id_player = 2;
					global.turno_ant_id_player = 1;
					break;
				case 2:
					global.turno_id_player = 1;
					global.turno_ant_id_player = 2;
					break;
			}
			break;
		case 3:
			switch(global.turno_id_player){
				case 0:
					global.turno_id_player = 1;
					break;
				case 1:
					global.turno_id_player = 2;
					global.turno_ant_id_player = 1;
					break;
				case 2:
					global.turno_id_player = 3;
					global.turno_ant_id_player = 2;
					break;
				case 3:
					global.turno_id_player = 1;
					global.turno_ant_id_player = 3;
					break;
			}
			break;
		case 4:
			switch(global.turno_id_player){
				case 0:
					global.turno_id_player = 1;
					break;
				case 1:
					global.turno_id_player = 2;
					global.turno_ant_id_player = 1;
					break;
				case 2:
					global.turno_id_player = 3;
					global.turno_ant_id_player = 2;
					break;
				case 3:
					global.turno_id_player = 4;
					global.turno_ant_id_player = 3;
					break;
				case 4:
					global.turno_id_player = 1;
					global.turno_ant_id_player = 4;
					break;
			}	
			break;
	}
	
	//Cambiar a la civilizacion del turno
	for (var i = 0; i < instance_number(o_player); ++i;)
	{    
		var_player = instance_find(o_player,i);
		if	var_player.id_player = global.turno_ant_id_player
		{
			global.id_civilization = var_player.id_civilization;
		}
	}
		
	
}