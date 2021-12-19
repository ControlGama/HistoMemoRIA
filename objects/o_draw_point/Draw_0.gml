/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

draw_set_color(c_black); 
draw_set_font(fn_name_player);
draw_set_halign(fa_left)
	
for (var i = 0; i < instance_number(o_player); ++i;)
    {    
		var_player = instance_find(o_player,i);
		var_winner = max(global.player_1_casillas,global.player_2_casillas,global.player_3_casillas,global.player_4_casillas);
		var_winner_name = "";
		
		draw_text(64, 20, "FIN DEL JUEGO!! ");
		
		switch(var_player.id_player) {
			case 1:
				draw_text(64, 64, var_player.name);
				draw_text(64, 96, "Total de casillas: " + string(global.player_1_casillas));
				draw_text(64, 128, "Total de puntos: " + string(var_player.points));
				
				if global.player_1_casillas = var_winner{
					var_winner_name	= var_player.name;
				}
				
			break;
			case 2:
				draw_text(64, 192, var_player.name);
				draw_text(64, 224, "Total de casillas: " + string(global.player_2_casillas));
				draw_text(64, 256, "Total de puntos: " + string(var_player.points));
				
				if global.player_2_casillas = var_winner{
					var_winner_name	= var_player.name;
				}
				
			break;
			case 3:
				draw_text(64, 320, var_player.name);
				draw_text(64, 352, "Total de casillas: " + string(global.player_3_casillas));
				draw_text(64, 384, "Total de puntos: " + string(var_player.points));
				
				if global.player_3_casillas = var_winner{
					var_winner_name	= var_player.name;
				}
				
			break;
			case 4:
				draw_text(64, 448, var_player.name);
				draw_text(64, 480, "Total de casillas: " + string(global.player_4_casillas));
				draw_text(64, 512, "Total de puntos: " + string(var_player.points));
				
				if global.player_4_casillas = var_winner{
					var_winner_name	= var_player.name;
				}
				
			break;
		}
		
		
		draw_text(64, 576, "Ganador: " + var_winner_name);
		
	}

	
	