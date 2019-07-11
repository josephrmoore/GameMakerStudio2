/*if Multiplayer!=0 {
    data=buffer_create(16384, buffer_vbuffer, 1)
    buffer_write(data, buffer_u8, 5)
    buffer_write(data, buffer_s8, MoveType)
    buffer_write(data, buffer_u8, networkiD)
    network_send_packet(clientSocket, data, buffer_get_size(data))
    buffer_delete(data)
}
