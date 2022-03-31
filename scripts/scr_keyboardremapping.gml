///scr_keyboardremapping()
if!keyboard_check_pressed(vk_escape)and keyboard_check_pressed(vk_anykey){lastkey=keyboard_lastkey;can_remap_key=true;}else if keyboard_check_pressed(vk_escape){lastkey=0;can_remap_key=true;}

/*Remapping 1*/
if remapping_player=1{
if can_remap_key=true
{if menu="remap_key_up"{global.player1_key_up=lastkey;}else if menu="remap_key_down"{global.player1_key_down=lastkey;}else if menu="remap_key_left"{global.player1_key_left=lastkey;}else if menu="remap_key_right"{global.player1_key_right=lastkey;}else if menu="remap_key_dash"{global.player1_key_dash=lastkey;}else if menu="remap_key_jump"{global.player1_key_jump=lastkey;}can_remap_key=false;input_key=false;menu_delay=10;}
}/*Remapping 1*/

/*Remapping 2*/
else if remapping_player=2{
if can_remap_key=true
{if menu="remap_key_up"{global.player2_key_up=lastkey;}else if menu="remap_key_down"{global.player2_key_down=lastkey;}else if menu="remap_key_left"{global.player2_key_left=lastkey;}else if menu="remap_key_right"{global.player2_key_right=lastkey;}else if menu="remap_key_dash"{global.player2_key_dash=lastkey;}else if menu="remap_key_jump"{global.player2_key_jump=lastkey;}can_remap_key=false;input_key=false;menu_delay=10;}
}/*Remapping 2*/

/*Remapping 3*/
else if remapping_player=3{
if can_remap_key=true
{if menu="remap_key_up"{global.player3_key_up=lastkey;}else if menu="remap_key_down"{global.player3_key_down=lastkey;}else if menu="remap_key_left"{global.player3_key_left=lastkey;}else if menu="remap_key_right"{global.player3_key_right=lastkey;}else if menu="remap_key_dash"{global.player3_key_dash=lastkey;}else if menu="remap_key_jump"{global.player3_key_jump=lastkey;}can_remap_key=false;input_key=false;menu_delay=10;}
}/*Remapping 3 End*/

/*Remapping 4*/
else if remapping_player=4{
if can_remap_key=true
{if menu="remap_key_up"{global.player4_key_up=lastkey;}else if menu="remap_key_down"{global.player4_key_down=lastkey;}else if menu="remap_key_left"{global.player4_key_left=lastkey;}else if menu="remap_key_right"{global.player4_key_right=lastkey;}else if menu="remap_key_dash"{global.player4_key_dash=lastkey;}else if menu="remap_key_jump"{global.player4_key_jump=lastkey;}can_remap_key=false;input_key=false;menu_delay=10;}
}/*Remapping 4 End*/

//if global.player1_key_up!=lastkey and global.player1_key_down!=lastkey and global.player1_key_left!=lastkey and global.player1_key_right!=lastkey and global.player1_key_dash!=lastkey and global.player1_key_jump!=lastkey
//if global.player2_key_up!=lastkey and global.player2_key_down!=lastkey and global.player2_key_left!=lastkey and global.player2_key_right!=lastkey and global.player2_key_dash!=lastkey and global.player2_key_jump!=lastkey
//if global.player3_key_up!=lastkey and global.player3_key_down!=lastkey and global.player3_key_left!=lastkey and global.player3_key_right!=lastkey and global.player3_key_dash!=lastkey and global.player3_key_jump!=lastkey
//if global.player4_key_up!=lastkey and global.player4_key_down!=lastkey and global.player4_key_left!=lastkey and global.player4_key_right!=lastkey and global.player4_key_dash!=lastkey and global.player4_key_jump!=lastkey

