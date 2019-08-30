/// string_wordwrap(string,length,break,split)
//
//  Returns a string with break characters inserted 
//  between words at a given character interval.
//
//      string      text to word wrap, string
//      length      maximum string length before a line break, real
//      break       line break characters to insert into text, string
//      split       split words that are longer than the maximum, bool
//
/// GMLscripts.com/license
{
    var str,num,brk,cut,out,i,j;
    str = argument0;
    num = argument1;
    brk = argument2;
    cut = argument3;
    out = "";
    while (string_length(str)) {
        while (string_pos(brk,str) <= num + 1) && (string_pos(brk,str) > 0) {
            out += string_copy(str,1,string_pos(brk,str)+string_length(brk));
            str = string_delete(str,1,string_pos(brk,str)+string_length(brk));
        }
        i = string_length(str) + 1;
        if (i > num + 1) {
            for (i = num + 1; i > 0; i -= 1) {
                if (string_char_at(str,i) == " ") break;
            }
        }
        if (i == 0) {
            if (cut) {
                j = num;
                i = j;
            } else {
                i = string_pos(" ",str);
                if (i == 0) {
                    j = string_length(str);
                    i = j;
                } else {
                    j = i;
                    i -= 1;
                }
            }
        } else {
            j = i;
            i -= 1;
        }
        out += string_copy(str,1,i) + brk;
        str = string_delete(str,1,j);
    }
    out = string_copy(out,1,string_length(out) - string_length(brk));
    return out;
}