// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function stringSplit(string, delimiter){
  //var delimiter = argument[1];
  var theString = string + delimiter;

  var delimiterLength = string_length(delimiter);
  var count = string_count(delimiter, theString);
  var position = 0;

  var returnArray;
  for (var i = 0; i < count; ++i)
  {
    position = string_pos(delimiter, theString) - 1;
    returnArray[i] = string_copy(theString, 1, position);
    theString = string_delete(theString, 1, position + delimiterLength);
  }

  return returnArray;
}