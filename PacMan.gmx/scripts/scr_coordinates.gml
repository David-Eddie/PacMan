///scr_coordinates(row,col)
var row = argument0;
var col = argument1;
var x_loc, y_loc;
y_loc = (3 + row) * 32 + 16;
x_loc = col * 32 + 16;
var retval = ds_map_create();
ds_map_add(retval,"x",x_loc);
ds_map_add(retval,"y",y_loc);
return retval;
