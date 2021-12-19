/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//Para asegurar que la respuesta este en pantalla
var_ok = 0;
for (var i = 0; i < instance_number(o_casilla_pictureka); ++i;)
{    
	var_casilla = instance_find(o_casilla_pictureka,i);
	if	var_casilla.image_index = global.correctAnswPiK_id{
		var_ok = 1;
		break;
	}
}

//Si no esta escogemos una instancia al azar
if var_ok = 0{
	var_index = irandom_range(0,instance_number(o_casilla_pictureka))
	var_casilla = instance_find(o_casilla_pictureka,var_index);
	var_casilla.image_index = global.correctAnswPiK_id;
}