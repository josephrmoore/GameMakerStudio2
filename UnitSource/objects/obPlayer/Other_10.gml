alarm[2]=10
data=buffer_create(16384, buffer_vbuffer, 1)
buffer_write(data, buffer_u8, 7)
buffer_write(data, buffer_s16, x)
buffer_write(data, buffer_f32, image_xscale)
buffer_write(data, buffer_s16, networkiD)
buffer_write(data, buffer_s16, Health)
network_send_packet(clientSocket, data, buffer_get_size(data))
buffer_delete(data)

