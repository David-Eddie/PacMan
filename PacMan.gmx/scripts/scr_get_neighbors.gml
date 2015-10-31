///scr_get_neighbors(row,col)
//Returns a list of adjacent path objects

var row = argument0;
var col = argument1;
var r,c;
var xy, x_loc, y_loc;
var neighbor;
var retval = ds_list_create();
//Up
r = row - 1;
c = col;
xy = scr_coordinates(r,c);
x_loc = ds_map_find_value(xy,"x");
y_loc = ds_map_find_value(xy,"y");
neighbor = instance_place(x_loc,y_loc,obj_path);
if(neighbor > 0){
    ds_list_add(retval, neighbor);
}
//Down
r = row + 1;
c = col;
xy = scr_coordinates(r,c);
x_loc = ds_map_find_value(xy,"x");
y_loc = ds_map_find_value(xy,"y");
neighbor = instance_place(x_loc,y_loc,obj_path);
if(neighbor > 0){
    ds_list_add(retval, neighbor);
}
//Left
r = row;
c = col - 1;
xy = scr_coordinates(r,c);
x_loc = ds_map_find_value(xy,"x");
y_loc = ds_map_find_value(xy,"y");
neighbor = instance_place(x_loc,y_loc,obj_path);
if(neighbor > 0){
    ds_list_add(retval, neighbor);
}
//Right
r = row;
c = col + 1;
xy = scr_coordinates(r,c);
x_loc = ds_map_find_value(xy,"x");
y_loc = ds_map_find_value(xy,"y");
neighbor = instance_place(x_loc,y_loc,obj_path);
if(neighbor > 0){
    ds_list_add(retval, neighbor);
}

return retval;
