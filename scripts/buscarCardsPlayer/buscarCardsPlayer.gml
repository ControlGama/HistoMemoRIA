// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function buscarCardsPlayer(id_card_player,spr_index){

	if id_card_player <= global.total_players 
	{
		for (var i = 0; i < instance_number(o_player); ++i;)
	    {     
			var_player = instance_find(o_player,i);
			if var_player.id_player = id_card_player
			{
				switch(var_player.id_civilization){
					case 1: //Griegos
						sprite_index = sp_griegos_cards;
					break;
					case 2: //Egipcios
						sprite_index = sp_egipcios_cards;
					break;
					case 3: //Mayas
						sprite_index = sp_mayas_cards;
					break;
					case 4: //Babilonios
						sprite_index = sp_babilonios_cards;
					break;
				}
				image_index = spr_index;
			}
		}
	} 

}