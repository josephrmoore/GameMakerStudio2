globalvar clientSocket Player Port Add;

Port=953
Add="localhost"
//Add="buckman.ddns.net"
Player=0

champ=-1
count=-1

clientSocket=network_create_socket(network_socket_tcp)

//network_set_config(network_config_use_non_blocking_socket, 1)
Connected=network_connect_raw(clientSocket, Add, Port)

alarm[0]=10

//Name=("user")+string(irandom(500))
//msg=Name

Name=scrLoadDataString("Name", "user")
msg=scrLoadDataString("Name", "user")

if Name="user"
   msg=get_string_async("Username", "")
   else Name=scrLoadDataString("Name", "user")
