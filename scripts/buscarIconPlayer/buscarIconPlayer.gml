// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function buscarIconPlayer(id_icon_player){
	if id_icon_player <= global.total_players {
		sprite_index = sp_icon_player;
		for (var i = 0; i < instance_number(o_player); ++i;)
	    {     
			var_player = instance_find(o_player,i);
			if var_player.id_player = id_icon_player
			{
				image_index = var_player.id_civilization;
			}
		}
	} 
}