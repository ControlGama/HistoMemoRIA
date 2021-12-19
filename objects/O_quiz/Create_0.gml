/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

list_questions = ds_list_create();

question = 0;
question[0] = "¿Qué líder tribal luchó contra la ocupación romana de Gran Bretaña (Britania)?"; 
question[1] = "A.- Tácito";
question[2] = "B.- Prasutagus";
question[3] = "C.- Boudica";
question[4] = "D.- Ariovistus";
question[5] = "C";
ds_list_add(list_questions,question);

question = 0;
question[0] = "¿Con qué nombre se conoce el escándalo que obligó al presidente estadounidense Richard Nixon a dimitir?"; 
question[1] = "A.- Vietnam";
question[2] = "B.- Powergate";
question[3] = "C.- NixonProcess";
question[4] = "D.- Watergate";
question[5] = "D";
ds_list_add(list_questions,question);

question = 0;
question[0] = "¿Qué esposas de Enrique VIII fueron decapitadas?"; 
question[1] = "A.- Ana Bolena y Catherine Howard";
question[2] = "B.- Ana de Cléveris y Ana Bolena";
question[3] = "C.- Ana Bolena y Catalina de Aragón";
question[4] = "D.- Catalina Howard y Catalina Parr";
question[5] = "A";
ds_list_add(list_questions,question);

question = 0;
question[0] = "¿Qué emperador romano legalizó el cristianismo y puso fin a la persecución de los cristianos?"; 
question[1] = "A.- Nerón";
question[2] = "B.- Adriano";
question[3] = "C.- Trajano";
question[4] = "D.- Constantino";
question[5] = "D";
ds_list_add(list_questions,question);


randomize();
ds_list_shuffle(list_questions);

selector_q = ds_list_find_value(list_questions,0);
v_question = selector_q[0];
v_A = selector_q[1];
v_B = selector_q[2];
v_C = selector_q[3];
v_D = selector_q[4];

