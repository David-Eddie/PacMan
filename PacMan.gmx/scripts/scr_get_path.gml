///scr_get_path(row,col)
//Returns Path Object at Given Row and Column
var row = argument0;
var col = argument1;
var xy, x_loc, y_loc, retval;
xy = scr_coordinates(row,col);
x_loc = ds_map_find_value(xy, "x");
y_loc = ds_map_find_value(xy, "y");
retval = instance_place(x_loc,y_loc,obj_path);
return retval;
