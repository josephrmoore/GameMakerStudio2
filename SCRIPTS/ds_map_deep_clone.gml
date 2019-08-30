/// ds_map_deep_clone(map)
//
//  Clones a map deeply to a new copy, 
//  cloning any nested maps and lists,
//  and returning the created root map.
//
//      map         The map to clone
//
/// GMLscripts.com/license
{
    var map, json, clone;
    map = argument0;
    json = json_encode(map);
    clone = json_decode(json);
    return clone;
}