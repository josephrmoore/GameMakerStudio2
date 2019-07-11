/// @description Save
var lvlstr, nl;

lvlstr = "";
nl = chr(13) + chr(10);

with(all) {
    lvlstr += "instance_create(";
    lvlstr += string(x);
    lvlstr += ", ";
    lvlstr += string(y);
    lvlstr += ", ";
    lvlstr += string(object_get_name(object_index));
    lvlstr += ");";
    
    //add a new line
    lvlstr += nl;
}

var File, Filename;
Filename = string(room_get_name(room)) + ".txt"
File = file_text_open_write(get_save_filename("",Filename))
file_text_write_string(File,lvlstr);
file_text_close(File);
