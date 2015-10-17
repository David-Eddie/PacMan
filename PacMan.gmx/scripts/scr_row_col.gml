///scr_row_col(x,y)
var x_loc = argument0;
var y_loc = argument1;
var row, col;
row = (y_loc div 32) - 3;
col = x_loc div 32;
var retval = ds_map_create();
ds_map_add(retval,"row",row);
ds_map_add(retval,"col",col);
return retval;
