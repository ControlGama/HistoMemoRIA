// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function relacionIdCordenada(id_coordenada){
	
	
	decenas = floor(id_coordenada / 10);
	unidades = id_coordenada - ( decenas * 10 ) - 1;
	
	if unidades < 0{
		Coordenadas[0] = 64 * 9; //X
		Coordenadas[1] = (64 * decenas) - 64; //Y
	}else{
		Coordenadas[0] = 64 * unidades; //X
		Coordenadas[1] = 64 * decenas; //Y
	}
	
	
	
	return Coordenadas;
}