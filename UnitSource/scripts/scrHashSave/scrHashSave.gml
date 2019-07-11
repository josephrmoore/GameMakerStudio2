hash = sha1_file("Info.dat")

ini_open("Data.ini")
ini_write_string("Data", "Data", hash)
ini_write_string("Data", "Warning", "Changing any data will result in deleting your save file.")
ini_close()
