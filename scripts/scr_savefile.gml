if(file_exists("File"+string(global.file)+".ini")){file_delete("File"+string(global.file)+".ini");}
ini_open("File"+string(global.file)+".ini");

if asset_get_type("obj_player_map")==asset_object{if instance_number(obj_player_map)>0{
var player_x=obj_player_map.x;
var player_y=obj_player_map.y;}}

ini_write_real("File","player_x",player_x);
ini_write_real("File","player_y",player_y);
ini_close();
