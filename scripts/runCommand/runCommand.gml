// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function runCommand(command){

  //var command = argument[0];

  var array = stringSplit(command, " ");
  if (string_length(array[0]) > 0)
  {
    if (string_char_at(array[0], 1) == "/")
    {
      array[0] = string_delete(array[0], 1, 1);
      var scriptIndex = asset_get_index(array[0] + "Execute");
      if (script_exists(scriptIndex))
        commandResult = string(script_execute(scriptIndex, array));
      else
        commandResult = "Unknown command.";
    }
  }


}