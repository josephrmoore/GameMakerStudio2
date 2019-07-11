/// @description scrSaveData(name, value)
/// @param name
/// @param  value

//a=md5_string_utf8(argument0)
a=(argument0)
b=((argument1))

ini_open("Info.dat")
ini_write_real("Data", a, b)
ini_close()

scrHashSave()
/*
if Victory>=3 and string_length(Name)>=2 and string_length(Pass)>=2 {
   bufferString=buffer_create(16384, buffer_vbuffer, 1)
   buffer_write(bufferString, buffer_u8, 2)
   buffer_write(bufferString, buffer_string, Name)
   buffer_write(bufferString, buffer_string, Pass)
   buffer_write(bufferString, buffer_string, a)
   buffer_write(bufferString, buffer_s16, b)
   network_send_packet(clientSocket, bufferString, buffer_get_size(bufferString))
   buffer_delete(bufferString)
}
*/
