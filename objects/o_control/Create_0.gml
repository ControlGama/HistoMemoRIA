/// @description Objeto Control del Juego
// Vive en todo el juego

//Para controlar el total de jugadores
global.num_players = 1;
global.total_players = 0;

//Total de casillas por jugador
global.player_1_casillas = 0;
global.player_2_casillas = 0;
global.player_3_casillas = 15;
global.player_4_casillas = 0;

//Para guardar datos de jugador
global.player_name = "";
global.id_civilization = 1;

//Para borrar el nombre del jugador
global.name_refresh = 0;

//global casilla
global.id_casilla = 1;
global.type_game = 0;

//global Turnos
global.win = 0; //para saber si gano
global.points_win = 0; //si gano, cuantos puntos gano?
global.turno_id_player = 1; //comienza en 1
global.turno_ant_id_player = 0; //Guarda siempre el turno anteriuor
global.peso = 0; //Peso de los monumentos seleccionados

//global Memorama
global.memo_hard = ds_list_create();
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

global.memo_norm = ds_list_create();
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


global.memo_easy = ds_list_create();
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


//Para Guardar la respuesta del piktureka
global.correctAnswPiK = "";
global.correctAnswPiK_id = -1;


//Para saber si respondio bien
global.quiz_id = 0;
global.intentos_quiz = 1;
global.total_intentos_quiz = 0; 

//Start Music
audio_play_sound(game_Song, 10, true);
