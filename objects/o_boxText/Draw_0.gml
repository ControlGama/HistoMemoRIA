/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if global.name_refresh = 1{
	runCommand(player_name);
	player_name = "";
	keyboard_string = "";
	global.name_refresh = 0;
} 

draw_self();
draw_set_valign(fa_middle);
draw_set_halign(fa_middle);
draw_set_font(fn_name_player);
draw_text(x, y, player_name);

global.player_name = player_name;


