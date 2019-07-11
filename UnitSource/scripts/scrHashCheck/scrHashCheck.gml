if file_exists("Data.ini") {
    hashLoad = sha1_file("Info.dat")
    
    ini_open("Data.ini")
    hashCheck=ini_read_string("Data", "Data", 0)
    ini_close()
    
    if hashLoad != hashCheck {
       file_delete("Info.dat")
       file_delete("Data.ini")
       game_end()
    }
} else {
  file_delete("Info.dat")
  file_delete("Data.ini")
  game_end()
}
