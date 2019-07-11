/// @description scrSaveData(name, string)
/// @param name
/// @param  string

a=md5_string_utf8(argument0)
b=((argument1))

ini_open("Info.dat")
ini_write_string("Data", a, b)
ini_close()

scrHashSave()

/*
if Victory>=3 and string_length(Name)>=2 and string_length(Pass)>=2 {
   clientData=buffer_create(16384, buffer_vbuffer, 1)
   buffer_write(clientData, buffer_u8, 1)
   buffer_write(clientData, buffer_string, a)
   buffer_write(clientData, buffer_string, b)
   network_send_packet(clientSocket, clientData, buffer_get_size(clientData))
   buffer_delete(clientData)
}
*/
