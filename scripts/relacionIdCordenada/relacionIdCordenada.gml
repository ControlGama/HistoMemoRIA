// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function relacionCordenadaId(x,y){
	
	
	// x = unidades
	x_val = (x/64) + 1;
	// y = decenas
	y_val = (y/64) * 10;
	
	
	return x_val + y_val;
}