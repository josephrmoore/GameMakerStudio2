/// @description scrLoadDataString(name, value)
/// @param name
/// @param  value

t=md5_string_utf8(argument0)
h=((argument1))

ini_open("Info.dat")
var readType=ini_read_string("Data", t, h)
ini_close()

return readType
