/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//Asignar ID
id_casilla = relacionCordenadaId(x,y);
global.id_casilla = global.id_casilla + 1;


randomise()  
typeGame = choose(0,3,6);
if typeGame = 0{
	difficultlevel = choose(0,1,2);
} else if typeGame = 3{
	difficultlevel = choose(3,4,5);
}else{
	difficultlevel = choose(6,7,8);
}
image_index = difficultlevel;

