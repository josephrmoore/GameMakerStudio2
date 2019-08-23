/// approach(start, ending, difference);
var start, ending, difference;
 
start = argument0;
ending = argument1;
difference = argument2;
 
var r;
 
if (start < ending){
    r = min(start + difference, ending);
}else{
    r = max(start - difference, ending);
}
 
return r;