///scr_character_select_menu()

var voice=noone;

if menu="select_character"{image_alpha=0;

/*Voice clips for when you select a character*/
menuvoice_select_character0=choose(snd_menuvoice_sticky,snd_menuvoice_sticky_2,snd_menuvoice_sticky_3);
menuvoice_select_character1=choose(snd_catlyn_menuvoice_catlyn,snd_catlyn_menuvoice_catlyn_2,snd_catlyn_menuvoice_catlyn_3);
/*Voice clips for when you select a character END*/

xx1=lerp(xx1,player1_display_x,0.1);
xx2=lerp(xx2,player2_display_x,0.1);
xx3=lerp(xx3,player3_display_x,0.1);
xx4=lerp(xx4,player4_display_x,0.1);

/*Colors*/
/*Player 1*/
if global.color_for_player_1=0{global.hex_color_for_player_1=c_white;}
if global.color_for_player_1=1{global.hex_color_for_player_1=c_ltgray;}
if global.color_for_player_1=2{global.hex_color_for_player_1=c_dkgray;}
if global.color_for_player_1=3{global.hex_color_for_player_1=c_black;}
if global.color_for_player_1=4{global.hex_color_for_player_1=make_colour_rgb(40,26,13);}
if global.color_for_player_1=5{global.hex_color_for_player_1=c_red;}
if global.color_for_player_1=6{global.hex_color_for_player_1=c_orange;}
if global.color_for_player_1=7{global.hex_color_for_player_1=c_yellow;}
if global.color_for_player_1=8{global.hex_color_for_player_1=c_lime;}
if global.color_for_player_1=9{global.hex_color_for_player_1=c_green;}
if global.color_for_player_1=10{global.hex_color_for_player_1=make_colour_rgb(0,255,255);}
if global.color_for_player_1=11{global.hex_color_for_player_1=make_colour_rgb(173,216,230);}
if global.color_for_player_1=12{global.hex_color_for_player_1=c_blue;}
if global.color_for_player_1=13{global.hex_color_for_player_1=c_purple;}
if global.color_for_player_1=14{global.hex_color_for_player_1=make_colour_rgb(255,0,255);}
if global.color_for_player_1=15{global.hex_color_for_player_1=make_colour_rgb(255,192,203);}/*Player 1 END*/

/*Player 2*/
if global.color_for_player_2=0{global.hex_color_for_player_2=c_white;}
if global.color_for_player_2=1{global.hex_color_for_player_2=c_ltgray;}
if global.color_for_player_2=2{global.hex_color_for_player_2=c_dkgray;}
if global.color_for_player_2=3{global.hex_color_for_player_2=c_black;}
if global.color_for_player_2=4{global.hex_color_for_player_2=make_colour_rgb(40,26,13);}
if global.color_for_player_2=5{global.hex_color_for_player_2=c_red;}
if global.color_for_player_2=6{global.hex_color_for_player_2=c_orange;}
if global.color_for_player_2=7{global.hex_color_for_player_2=c_yellow;}
if global.color_for_player_2=8{global.hex_color_for_player_2=c_lime;}
if global.color_for_player_2=9{global.hex_color_for_player_2=c_green;}
if global.color_for_player_2=10{global.hex_color_for_player_2=make_colour_rgb(0,255,255);}
if global.color_for_player_2=11{global.hex_color_for_player_2=make_colour_rgb(173,216,230);}
if global.color_for_player_2=12{global.hex_color_for_player_2=c_blue;}
if global.color_for_player_2=13{global.hex_color_for_player_2=c_purple;}
if global.color_for_player_2=14{global.hex_color_for_player_2=make_colour_rgb(255,0,255);}
if global.color_for_player_2=15{global.hex_color_for_player_2=make_colour_rgb(255,192,203);}/*Player 2 END*/

/*Player 3*/
if global.color_for_player_3=0{global.hex_color_for_player_3=c_white;}
if global.color_for_player_3=1{global.hex_color_for_player_3=c_ltgray;}
if global.color_for_player_3=2{global.hex_color_for_player_3=c_dkgray;}
if global.color_for_player_3=3{global.hex_color_for_player_3=c_black;}
if global.color_for_player_3=4{global.hex_color_for_player_3=make_colour_rgb(40,26,13);}
if global.color_for_player_3=5{global.hex_color_for_player_3=c_red;}
if global.color_for_player_3=6{global.hex_color_for_player_3=c_orange;}
if global.color_for_player_3=7{global.hex_color_for_player_3=c_yellow;}
if global.color_for_player_3=8{global.hex_color_for_player_3=c_lime;}
if global.color_for_player_3=9{global.hex_color_for_player_3=c_green;}
if global.color_for_player_3=10{global.hex_color_for_player_3=make_colour_rgb(0,255,255);}
if global.color_for_player_3=11{global.hex_color_for_player_3=make_colour_rgb(173,216,230);}
if global.color_for_player_3=12{global.hex_color_for_player_3=c_blue;}
if global.color_for_player_3=13{global.hex_color_for_player_3=c_purple;}
if global.color_for_player_3=14{global.hex_color_for_player_3=make_colour_rgb(255,0,255);}
if global.color_for_player_3=15{global.hex_color_for_player_3=make_colour_rgb(255,192,203);}/*Player 3 END*/

/*Player 4*/
if global.color_for_player_4=0{global.hex_color_for_player_4=c_white;}
if global.color_for_player_4=1{global.hex_color_for_player_4=c_ltgray;}
if global.color_for_player_4=2{global.hex_color_for_player_4=c_dkgray;}
if global.color_for_player_4=3{global.hex_color_for_player_4=c_black;}
if global.color_for_player_4=4{global.hex_color_for_player_4=make_colour_rgb(40,26,13);}
if global.color_for_player_4=5{global.hex_color_for_player_4=c_red;}
if global.color_for_player_4=6{global.hex_color_for_player_4=c_orange;}
if global.color_for_player_4=7{global.hex_color_for_player_4=c_yellow;}
if global.color_for_player_4=8{global.hex_color_for_player_4=c_lime;}
if global.color_for_player_4=9{global.hex_color_for_player_4=c_green;}
if global.color_for_player_4=10{global.hex_color_for_player_4=make_colour_rgb(0,255,255);}
if global.color_for_player_4=11{global.hex_color_for_player_4=make_colour_rgb(173,216,230);}
if global.color_for_player_4=12{global.hex_color_for_player_4=c_blue;}
if global.color_for_player_4=13{global.hex_color_for_player_4=c_purple;}
if global.color_for_player_4=14{global.hex_color_for_player_4=make_colour_rgb(255,0,255);}
if global.color_for_player_4=15{global.hex_color_for_player_4=make_colour_rgb(255,192,203);}/*Player 4 END*/

/*Select your character text*/
draw_text_transformed_colour(view_xview+view_wview/2-2,64,"Select your character!",global.default_text_size*2,global.default_text_size*2,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+2,64,"Select your character!",global.default_text_size*2,global.default_text_size*2,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2,64-2,"Select your character!",global.default_text_size*2,global.default_text_size*2,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2,64+2,"Select your character!",global.default_text_size*2,global.default_text_size*2,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2,64,"Select your character!",global.default_text_size*2,global.default_text_size*2,0,c_white,c_white,c_white,c_white,1);/*Select your character text END*/

/*Play the game text*/
if player1_start_game=true and instance_number(obj_camera)>0{if obj_camera.iris_xscale>=1 and obj_camera.iris_yscale>=1{
draw_text_transformed_colour(view_xview+view_wview/2-2-40,650,"Play the game!",global.default_text_size*2,global.default_text_size*2,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+2-40,650,"Play the game!",global.default_text_size*2,global.default_text_size*2,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-40,650-2,"Play the game!",global.default_text_size*2,global.default_text_size*2,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-40,650+2,"Play the game!",global.default_text_size*2,global.default_text_size*2,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-40,650,"Play the game!",global.default_text_size*2,global.default_text_size*2,0,c_white,c_white,c_white,c_white,1);
/*Key A*/if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,0,view_xview+view_wview/2+140,650,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_jump,view_xview+view_wview/2+140,650,0.5,0.5,0,c_white,1);}/*Key A END*/
if global.playergame>=1
{draw_text_transformed_colour(view_xview+view_wview/2-2-40,690,"Player 1 starts the game",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+2-40,690,"Player 1 starts the game",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-40,690-2,"Player 1 starts the game",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-40,690+2,"Player 1 starts the game",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-40,690,"Player 1 starts the game",global.default_text_size,global.default_text_size,0,c_red,c_red,c_red,c_red,1);}
}}/*Play the game text END*/

/*Show Back key when you can go back to main menu*/
if player1_accept_selection=false{
draw_set_halign(fa_center);draw_set_valign(fa_center);
draw_text_transformed_colour(view_xview+60-2,view_yview+view_hview-32,"Go Back:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+60+2,view_yview+view_hview-32,"Go Back:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+60,view_yview+view_hview-32-2,"Go Back:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+60,view_yview+view_hview-32+2,"Go Back:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+60,view_yview+view_hview-32,"Go Back:",global.default_text_size,global.default_text_size,0,c_white,c_white,c_white,c_white,1);
if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,1,view_xview+150,view_yview+view_hview-32,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_dash,view_xview+150,view_yview+view_hview-32,0.5,0.5,0,c_white,1);}}/*Show Back key when you can go back to main menu END*/

/*Select the sprite for each character portrait*/
if global.character_for_player_1=0{sprite_select_character_1=spr_select_character_0;}
if global.character_for_player_1=1{sprite_select_character_1=spr_select_character_1;}
if global.character_for_player_2=0{sprite_select_character_2=spr_select_character_0;}
if global.character_for_player_2=1{sprite_select_character_2=spr_select_character_1;}
if global.character_for_player_3=0{sprite_select_character_3=spr_select_character_0;}
if global.character_for_player_3=1{sprite_select_character_3=spr_select_character_1;}
if global.character_for_player_4=0{sprite_select_character_4=spr_select_character_0;}
if global.character_for_player_4=1{sprite_select_character_4=spr_select_character_1;}/*Select the sprite for each character portrait END*/

/*Positions and Scale for each character display*/
if global.playergame<=0{player1_display_x=0;player2_display_x=room_width*2;player3_display_x=room_width*2;player4_display_x=room_width*2;player1_scale=0.40;player2_scale=0;player3_scale=0;player4_scale=0;}else
if global.playergame=1{player1_display_x=-200;player2_display_x=+200;player3_display_x=room_width*2;player4_display_x=room_width*2;player1_scale=0.35;player2_scale=0.35;player3_scale=0;player4_scale=0;}else
if global.playergame=2{player1_display_x=-300;player2_display_x=0;player3_display_x=+300;player4_display_x=room_width*2;player1_scale=0.30;player2_scale=0.30;player3_scale=0.30;player4_scale=0;}else
if global.playergame>=3{player1_display_x=-300;player2_display_x=-100;player3_display_x=+100;player4_display_x=+300;player1_scale=0.25;player2_scale=0.25;player3_scale=0.25;player4_scale=0.25;}

max_number_of_characters=2;/*Update this whenever you add more playable characters! 1: Sticky, 2: Catlyn*/
max_number_of_colors=15;/*Update this whenever you add more colors!*/
/*Make sure that you don't have access to characters that doesn't exist*/
if global.character_for_player_1>=max_number_of_characters{global.character_for_player_1=max_number_of_characters-1;}
if global.character_for_player_2>=max_number_of_characters{global.character_for_player_2=max_number_of_characters-1;}
if global.character_for_player_3>=max_number_of_characters{global.character_for_player_3=max_number_of_characters-1;}
if global.character_for_player_4>=max_number_of_characters{global.character_for_player_4=max_number_of_characters-1;}/*Make sure that you don't have access to characters that doesn't exist END*/

/*Give feedback that you have selected a character*/
if player1_accept_selection=true{draw_sprite_ext(spr_select_character_background,image_index,view_xview+view_wview/2+player1_display_x,view_yview+view_hview/2,player1_scale,player1_scale,0,c_red,1);}
if player2_accept_selection=true{draw_sprite_ext(spr_select_character_background,image_index,view_xview+view_wview/2+player2_display_x,view_yview+view_hview/2,player2_scale,player2_scale,0,c_lime,1);}
if player3_accept_selection=true{draw_sprite_ext(spr_select_character_background,image_index,view_xview+view_wview/2+player3_display_x,view_yview+view_hview/2,player3_scale,player3_scale,0,c_yellow,1);}
if player4_accept_selection=true{draw_sprite_ext(spr_select_character_background,image_index,view_xview+view_wview/2+player4_display_x,view_yview+view_hview/2,player4_scale,player4_scale,0,c_aqua,1);}/*Give feedback that you have selected a character END*/

/*Display Selected Characters*/
/*Player 1*/if global.playergame>=0{draw_sprite_ext(sprite_select_character_1,0,view_xview+view_wview/2+xx1,view_yview+view_hview/2,player1_scale,player1_scale,0,global.hex_color_for_player_1,1);}/*Player 1 END*/
/*Player 2*/if global.playergame>=1{draw_sprite_ext(sprite_select_character_2,0,view_xview+view_wview/2+xx2,view_yview+view_hview/2,player2_scale,player2_scale,0,global.hex_color_for_player_2,1);}/*Player 2 END*/
/*Player 3*/if global.playergame>=2{draw_sprite_ext(sprite_select_character_3,0,view_xview+view_wview/2+xx3,view_yview+view_hview/2,player3_scale,player3_scale,0,global.hex_color_for_player_3,1);}/*Player 3 END*/
/*Player 4*/if global.playergame>=3{draw_sprite_ext(sprite_select_character_4,0,view_xview+view_wview/2+xx4,view_yview+view_hview/2,player4_scale,player4_scale,0,global.hex_color_for_player_4,1);}/*Player 4 END*/
/*Display Selected Characters END*/



/*Show Arrows when selecting character*/
if global.playergame>=0 and player_1_menu="select_character"{
/*Key Left*/if player1_accept_selection=false{if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,4,view_xview+view_wview/2+player1_display_x-75,view_yview+view_hview/2,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_left,view_xview+view_wview/2+player1_display_x-75,view_yview+view_hview/2,0.5,0.5,0,c_white,1);}/*Key Left END*/
/*Key Right*/if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,6,view_xview+view_wview/2+player1_display_x+75,view_yview+view_hview/2,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_right,view_xview+view_wview/2+player1_display_x+75,view_yview+view_hview/2,0.5,0.5,0,c_white,1);}}/*Key Right END*/}

if global.playergame>=1 and player_2_menu="select_character"{
/*Key Left*/if player2_accept_selection=false{if gamepad_is_connected(1){draw_sprite_ext(spr_xbox_buttons,4,view_xview+view_wview/2+player2_display_x-75,view_yview+view_hview/2,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player2_key_left,view_xview+view_wview/2+player2_display_x-75,view_yview+view_hview/2,0.5,0.5,0,c_white,1);}/*Key Left END*/
/*Key Right*/if gamepad_is_connected(1){draw_sprite_ext(spr_xbox_buttons,6,view_xview+view_wview/2+player2_display_x+75,view_yview+view_hview/2,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player2_key_right,view_xview+view_wview/2+player2_display_x+75,view_yview+view_hview/2,0.5,0.5,0,c_white,1);}}/*Key Right END*/}

if global.playergame>=2 and player_3_menu="select_character"{
/*Key Left*/if player3_accept_selection=false{if gamepad_is_connected(2){draw_sprite_ext(spr_xbox_buttons,4,view_xview+view_wview/2+player3_display_x-75,view_yview+view_hview/2,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player3_key_left,view_xview+view_wview/2+player3_display_x-75,view_yview+view_hview/2,0.5,0.5,0,c_white,1);}/*Key Left END*/
/*Key Right*/if gamepad_is_connected(2){draw_sprite_ext(spr_xbox_buttons,6,view_xview+view_wview/2+player3_display_x+75,view_yview+view_hview/2,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player3_key_right,view_xview+view_wview/2+player3_display_x+75,view_yview+view_hview/2,0.5,0.5,0,c_white,1);}}/*Key Right END*/}

if global.playergame>=3 and player_4_menu="select_character"{
/*Key Left*/if player4_accept_selection=false{if gamepad_is_connected(3){draw_sprite_ext(spr_xbox_buttons,4,view_xview+view_wview/2+player4_display_x-75,view_yview+view_hview/2,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player4_key_left,view_xview+view_wview/2+player4_display_x-75,view_yview+view_hview/2,0.5,0.5,0,c_white,1);}/*Key Left END*/
/*Key Right*/if gamepad_is_connected(3){draw_sprite_ext(spr_xbox_buttons,6,view_xview+view_wview/2+player4_display_x+75,view_yview+view_hview/2,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player4_key_right,view_xview+view_wview/2+player4_display_x+75,view_yview+view_hview/2,0.5,0.5,0,c_white,1);}}/*Key Right END*/}
/*Show Arrows when selecting character END*/

/*Show Arrows when selecting colors*/
if global.playergame>=0 and player_1_menu="select_color"{
/*Key Left*/if player1_accept_selection=false{if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,4,view_xview+view_wview/2+player1_display_x-75,view_yview+view_hview/2+203,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_left,view_xview+view_wview/2+player1_display_x-75,view_yview+view_hview/2+203,0.5,0.5,0,c_white,1);}/*Key Left END*/
/*Key Right*/if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,6,view_xview+view_wview/2+player1_display_x+75,view_yview+view_hview/2+203,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_right,view_xview+view_wview/2+player1_display_x+75,view_yview+view_hview/2+203,0.5,0.5,0,c_white,1);}}/*Key Right END*/}

if global.playergame>=1 and player_2_menu="select_color"{
/*Key Left*/if player2_accept_selection=false{if gamepad_is_connected(1){draw_sprite_ext(spr_xbox_buttons,4,view_xview+view_wview/2+player2_display_x-75,view_yview+view_hview/2+203,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player2_key_left,view_xview+view_wview/2+player2_display_x-75,view_yview+view_hview/2+203,0.5,0.5,0,c_white,1);}/*Key Left END*/
/*Key Right*/if gamepad_is_connected(1){draw_sprite_ext(spr_xbox_buttons,6,view_xview+view_wview/2+player2_display_x+75,view_yview+view_hview/2+203,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player2_key_right,view_xview+view_wview/2+player2_display_x+75,view_yview+view_hview/2+203,0.5,0.5,0,c_white,1);}}/*Key Right END*/}

if global.playergame>=2 and player_3_menu="select_color"{
/*Key Left*/if player3_accept_selection=false{if gamepad_is_connected(2){draw_sprite_ext(spr_xbox_buttons,4,view_xview+view_wview/2+player3_display_x-75,view_yview+view_hview/2+203,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player3_key_left,view_xview+view_wview/2+player3_display_x-75,view_yview+view_hview/2+203,0.5,0.5,0,c_white,1);}/*Key Left END*/
/*Key Right*/if gamepad_is_connected(2){draw_sprite_ext(spr_xbox_buttons,6,view_xview+view_wview/2+player3_display_x+75,view_yview+view_hview/2+203,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player3_key_right,view_xview+view_wview/2+player3_display_x+75,view_yview+view_hview/2+203,0.5,0.5,0,c_white,1);}}/*Key Right END*/}

if global.playergame>=3 and player_4_menu="select_color"{
/*Key Left*/if player4_accept_selection=false{if gamepad_is_connected(3){draw_sprite_ext(spr_xbox_buttons,4,view_xview+view_wview/2+player4_display_x-75,view_yview+view_hview/2+203,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player4_key_left,view_xview+view_wview/2+player4_display_x-75,view_yview+view_hview/2+203,0.5,0.5,0,c_white,1);}/*Key Left END*/
/*Key Right*/if gamepad_is_connected(3){draw_sprite_ext(spr_xbox_buttons,6,view_xview+view_wview/2+player4_display_x+75,view_yview+view_hview/2+203,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player4_key_right,view_xview+view_wview/2+player4_display_x+75,view_yview+view_hview/2+203,0.5,0.5,0,c_white,1);}}/*Key Right END*/}
/*Show Arrows when selecting colors END*/




/*Tell the player what button to push to select or cancel a selection*/draw_set_halign(fa_middle);draw_set_valign(fa_middle);
/*Player 1*/if player_1_menu!="select_name"{
if player1_accept_selection=false{
/*Accept Text*/draw_text_transformed_colour(view_xview+view_wview/2+player1_display_x-30-2,view_yview+view_hview/2+150,"Accept:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player1_display_x-30+2,view_yview+view_hview/2+150,"Accept:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player1_display_x-30,view_yview+view_hview/2+150-2,"Accept:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player1_display_x-30,view_yview+view_hview/2+150+2,"Accept:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player1_display_x-30,view_yview+view_hview/2+150,"Accept:",global.default_text_size,global.default_text_size,0,c_white,c_white,c_white,c_white,1);/*Accept Text END*/
/*Key A*/if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,0,view_xview+view_wview/2+player1_display_x+30,view_yview+view_hview/2+150,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_jump,view_xview+view_wview/2+player1_display_x+30,view_yview+view_hview/2+150,0.5,0.5,0,c_white,1);}/*Key A END*/}else
if player1_accept_selection=true{
/*Cancel Text*/draw_text_transformed_colour(view_xview+view_wview/2+player1_display_x-30-2,view_yview+view_hview/2+150,"Cancel:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player1_display_x-30+2,view_yview+view_hview/2+150,"Cancel:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player1_display_x-30,view_yview+view_hview/2+150-2,"Cancel:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player1_display_x-30,view_yview+view_hview/2+150+2,"Cancel:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player1_display_x-30,view_yview+view_hview/2+150,"Cancel:",global.default_text_size,global.default_text_size,0,c_white,c_white,c_white,c_white,1);/*Cancel Text END*/
/*Key B*/if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,1,view_xview+view_wview/2+player1_display_x+30,view_yview+view_hview/2+150,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_dash,view_xview+view_wview/2+player1_display_x+30,view_yview+view_hview/2+150,0.5,0.5,0,c_white,1);}/*Key B END*/}/*Player 1 END*/
}

/*Tell the player what button to push to select or cancel a selection END*/

/*Tell the player what button to push to select or cancel a selection*/draw_set_halign(fa_middle);draw_set_valign(fa_middle);
/*Player 2*/if player_2_menu!="select_name"{
if player2_accept_selection=false{
/*Accept Text*/draw_text_transformed_colour(view_xview+view_wview/2+player2_display_x-30-2,view_yview+view_hview/2+150,"Accept:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player2_display_x-30+2,view_yview+view_hview/2+150,"Accept:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player2_display_x-30,view_yview+view_hview/2+150-2,"Accept:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player2_display_x-30,view_yview+view_hview/2+150+2,"Accept:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player2_display_x-30,view_yview+view_hview/2+150,"Accept:",global.default_text_size,global.default_text_size,0,c_white,c_white,c_white,c_white,1);/*Accept Text END*/
/*Key A*/if gamepad_is_connected(1){draw_sprite_ext(spr_xbox_buttons,0,view_xview+view_wview/2+player2_display_x+30,view_yview+view_hview/2+150,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player2_key_jump,view_xview+view_wview/2+player2_display_x+30,view_yview+view_hview/2+150,0.5,0.5,0,c_white,1);}/*Key A END*/}else
if player2_accept_selection=true{
/*Cancel Text*/draw_text_transformed_colour(view_xview+view_wview/2+player2_display_x-30-2,view_yview+view_hview/2+150,"Cancel:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player2_display_x-30+2,view_yview+view_hview/2+150,"Cancel:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player2_display_x-30,view_yview+view_hview/2+150-2,"Cancel:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player2_display_x-30,view_yview+view_hview/2+150+2,"Cancel:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player2_display_x-30,view_yview+view_hview/2+150,"Cancel:",global.default_text_size,global.default_text_size,0,c_white,c_white,c_white,c_white,1);/*Cancel Text END*/
/*Key B*/if gamepad_is_connected(1){draw_sprite_ext(spr_xbox_buttons,1,view_xview+view_wview/2+player2_display_x+30,view_yview+view_hview/2+150,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player2_key_dash,view_xview+view_wview/2+player2_display_x+30,view_yview+view_hview/2+150,0.5,0.5,0,c_white,1);}/*Key B END*/}/*Player 2 END*/
}/*Tell the player what button to push to select or cancel a selection END*/

/*Tell the player what button to push to select or cancel a selection*/draw_set_halign(fa_middle);draw_set_valign(fa_middle);
/*Player 3*/if player_3_menu!="select_name"{
if player3_accept_selection=false{
/*Accept Text*/draw_text_transformed_colour(view_xview+view_wview/2+player3_display_x-30-2,view_yview+view_hview/2+150,"Accept:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player3_display_x-30+2,view_yview+view_hview/2+150,"Accept:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player3_display_x-30,view_yview+view_hview/2+150-2,"Accept:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player3_display_x-30,view_yview+view_hview/2+150+2,"Accept:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player3_display_x-30,view_yview+view_hview/2+150,"Accept:",global.default_text_size,global.default_text_size,0,c_white,c_white,c_white,c_white,1);/*Accept Text END*/
/*Key A*/if gamepad_is_connected(2){draw_sprite_ext(spr_xbox_buttons,0,view_xview+view_wview/2+player3_display_x+30,view_yview+view_hview/2+150,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player3_key_jump,view_xview+view_wview/2+player3_display_x+30,view_yview+view_hview/2+150,0.5,0.5,0,c_white,1);}/*Key A END*/}else
if player3_accept_selection=true{
/*Cancel Text*/draw_text_transformed_colour(view_xview+view_wview/2+player3_display_x-30-2,view_yview+view_hview/2+150,"Cancel:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player3_display_x-30+2,view_yview+view_hview/2+150,"Cancel:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player3_display_x-30,view_yview+view_hview/2+150-2,"Cancel:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player3_display_x-30,view_yview+view_hview/2+150+2,"Cancel:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player3_display_x-30,view_yview+view_hview/2+150,"Cancel:",global.default_text_size,global.default_text_size,0,c_white,c_white,c_white,c_white,1);/*Cancel Text END*/
/*Key B*/if gamepad_is_connected(2){draw_sprite_ext(spr_xbox_buttons,1,view_xview+view_wview/2+player3_display_x+30,view_yview+view_hview/2+150,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player3_key_dash,view_xview+view_wview/2+player3_display_x+30,view_yview+view_hview/2+150,0.5,0.5,0,c_white,1);}/*Key B END*/}/*Player 3 END*/
}/*Tell the player what button to push to select or cancel a selection END*/

/*Tell the player what button to push to select or cancel a selection*/draw_set_halign(fa_middle);draw_set_valign(fa_middle);
/*Player 4*/if player_4_menu!="select_name"{
if player4_accept_selection=false{
/*Accept Text*/draw_text_transformed_colour(view_xview+view_wview/2+player4_display_x-30-2,view_yview+view_hview/2+150,"Accept:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player4_display_x-30+2,view_yview+view_hview/2+150,"Accept:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player4_display_x-30,view_yview+view_hview/2+150-2,"Accept:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player4_display_x-30,view_yview+view_hview/2+150+2,"Accept:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player4_display_x-30,view_yview+view_hview/2+150,"Accept:",global.default_text_size,global.default_text_size,0,c_white,c_white,c_white,c_white,1);/*Accept Text END*/
/*Key A*/if gamepad_is_connected(3){draw_sprite_ext(spr_xbox_buttons,0,view_xview+view_wview/2+player4_display_x+30,view_yview+view_hview/2+150,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player4_key_jump,view_xview+view_wview/2+player4_display_x+30,view_yview+view_hview/2+150,0.5,0.5,0,c_white,1);}/*Key A END*/}else
if player4_accept_selection=true{
/*Cancel Text*/draw_text_transformed_colour(view_xview+view_wview/2+player4_display_x-30-2,view_yview+view_hview/2+150,"Cancel:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player4_display_x-30+2,view_yview+view_hview/2+150,"Cancel:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player4_display_x-30,view_yview+view_hview/2+150-2,"Cancel:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player4_display_x-30,view_yview+view_hview/2+150+2,"Cancel:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player4_display_x-30,view_yview+view_hview/2+150,"Cancel:",global.default_text_size,global.default_text_size,0,c_white,c_white,c_white,c_white,1);/*Cancel Text END*/
/*Key B*/if gamepad_is_connected(3){draw_sprite_ext(spr_xbox_buttons,1,view_xview+view_wview/2+player4_display_x+30,view_yview+view_hview/2+150,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player4_key_dash,view_xview+view_wview/2+player4_display_x+30,view_yview+view_hview/2+150,0.5,0.5,0,c_white,1);}/*Key B END*/}/*Player 4 END*/
}/*Tell the player what button to push to select or cancel a selection END*/



/*Tell player 1 what button to push to enter a name*/draw_set_halign(fa_middle);draw_set_valign(fa_middle);
/*Player 1*/if player_1_menu="select_name"{
/*Accept Text*/draw_text_transformed_colour(view_xview+view_wview/2+player1_display_x-30-2,view_yview+view_hview/2+280,"Enter Name:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player1_display_x-30+2,view_yview+view_hview/2+280,"Enter Name:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player1_display_x-30,view_yview+view_hview/2+280-2,"Enter Name:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player1_display_x-30,view_yview+view_hview/2+280+2,"Enter Name:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player1_display_x-30,view_yview+view_hview/2+280,"Enter Name:",global.default_text_size,global.default_text_size,0,c_white,c_white,c_white,c_white,1);/*Accept Text END*/
/*Key A*/if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,0,view_xview+view_wview/2+player1_display_x+60,view_yview+view_hview/2+280,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_jump,view_xview+view_wview/2+player1_display_x+60,view_yview+view_hview/2+280,0.5,0.5,0,c_white,1);}/*Key A END*/}
/*Tell player 1 what button to push to enter a name END*/

/*Tell player 2 what button to push to enter a name*/draw_set_halign(fa_middle);draw_set_valign(fa_middle);
/*Player 2*/if player_2_menu="select_name"{
/*Accept Text*/draw_text_transformed_colour(view_xview+view_wview/2+player2_display_x-30-2,view_yview+view_hview/2+280,"Enter Name:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player2_display_x-30+2,view_yview+view_hview/2+280,"Enter Name:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player2_display_x-30,view_yview+view_hview/2+280-2,"Enter Name:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player2_display_x-30,view_yview+view_hview/2+280+2,"Enter Name:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player2_display_x-30,view_yview+view_hview/2+280,"Enter Name:",global.default_text_size,global.default_text_size,0,c_white,c_white,c_white,c_white,1);/*Accept Text END*/
/*Key A*/if gamepad_is_connected(1){draw_sprite_ext(spr_xbox_buttons,0,view_xview+view_wview/2+player2_display_x+60,view_yview+view_hview/2+280,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player2_key_jump,view_xview+view_wview/2+player2_display_x+60,view_yview+view_hview/2+280,0.5,0.5,0,c_white,1);}/*Key A END*/}
/*Tell player 2 what button to push to enter a name END*/

/*Tell player 3 what button to push to enter a name*/draw_set_halign(fa_middle);draw_set_valign(fa_middle);
/*Player 3*/if player_3_menu="select_name"{
/*Accept Text*/draw_text_transformed_colour(view_xview+view_wview/2+player3_display_x-30-2,view_yview+view_hview/2+280,"Enter Name:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player3_display_x-30+2,view_yview+view_hview/2+280,"Enter Name:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player3_display_x-30,view_yview+view_hview/2+280-2,"Enter Name:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player3_display_x-30,view_yview+view_hview/2+280+2,"Enter Name:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player3_display_x-30,view_yview+view_hview/2+280,"Enter Name:",global.default_text_size,global.default_text_size,0,c_white,c_white,c_white,c_white,1);/*Accept Text END*/
/*Key A*/if gamepad_is_connected(2){draw_sprite_ext(spr_xbox_buttons,0,view_xview+view_wview/2+player3_display_x+60,view_yview+view_hview/2+280,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player3_key_jump,view_xview+view_wview/2+player3_display_x+60,view_yview+view_hview/2+280,0.5,0.5,0,c_white,1);}/*Key A END*/}
/*Tell player 3 what button to push to enter a name END*/

/*Tell player 4 what button to push to enter a name*/draw_set_halign(fa_middle);draw_set_valign(fa_middle);
/*Player 4*/if player_4_menu="select_name"{
/*Accept Text*/draw_text_transformed_colour(view_xview+view_wview/2+player4_display_x-30-2,view_yview+view_hview/2+280,"Enter Name:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player4_display_x-30+2,view_yview+view_hview/2+280,"Enter Name:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player4_display_x-30,view_yview+view_hview/2+280-2,"Enter Name:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player4_display_x-30,view_yview+view_hview/2+280+2,"Enter Name:",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player4_display_x-30,view_yview+view_hview/2+280,"Enter Name:",global.default_text_size,global.default_text_size,0,c_white,c_white,c_white,c_white,1);/*Accept Text END*/
/*Key A*/if gamepad_is_connected(3){draw_sprite_ext(spr_xbox_buttons,0,view_xview+view_wview/2+player4_display_x+60,view_yview+view_hview/2+280,0.5,0.5,0,c_white,1);}
else{draw_sprite_ext(spr_keyboard_keys,global.player4_key_jump,view_xview+view_wview/2+player4_display_x+60,view_yview+view_hview/2+280,0.5,0.5,0,c_white,1);}/*Key A END*/}
/*Tell player 4 what button to push to enter a name END*/




/*Tell the player what button to push to select a color*/draw_set_halign(fa_middle);draw_set_valign(fa_middle);
/*Player 1*/if player1_accept_selection=false{
/*Color Selected Text*/draw_text_transformed_colour(view_xview+view_wview/2+player1_display_x-2,view_yview+view_hview/2+200,"Color: "+string(global.color_for_player_1+1),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player1_display_x+2,view_yview+view_hview/2+200,"Color: "+string(global.color_for_player_1+1),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player1_display_x,view_yview+view_hview/2+200-2,"Color: "+string(global.color_for_player_1+1),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player1_display_x,view_yview+view_hview/2+200+2,"Color: "+string(global.color_for_player_1+1),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player1_display_x,view_yview+view_hview/2+200,"Color: "+string(global.color_for_player_1+1),global.default_text_size,global.default_text_size,0,c_white,c_white,c_white,c_white,1);}/*Color Selected Text END*/

/*Player 2*/if player2_accept_selection=false{
/*Color Selected Text*/draw_text_transformed_colour(view_xview+view_wview/2+player2_display_x-2,view_yview+view_hview/2+200,"Color: "+string(global.color_for_player_2+1),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player2_display_x+2,view_yview+view_hview/2+200,"Color: "+string(global.color_for_player_2+1),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player2_display_x,view_yview+view_hview/2+200-2,"Color: "+string(global.color_for_player_2+1),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player2_display_x,view_yview+view_hview/2+200+2,"Color: "+string(global.color_for_player_2+1),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player2_display_x,view_yview+view_hview/2+200,"Color: "+string(global.color_for_player_2+1),global.default_text_size,global.default_text_size,0,c_white,c_white,c_white,c_white,1);}/*Color Selected Text END*/

/*Player 3*/if player3_accept_selection=false{
/*Color Selected Text*/draw_text_transformed_colour(view_xview+view_wview/2+player3_display_x-2,view_yview+view_hview/2+200,"Color: "+string(global.color_for_player_3+1),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player3_display_x+2,view_yview+view_hview/2+200,"Color: "+string(global.color_for_player_3+1),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player3_display_x,view_yview+view_hview/2+200-2,"Color: "+string(global.color_for_player_3+1),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player3_display_x,view_yview+view_hview/2+200+2,"Color: "+string(global.color_for_player_3+1),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player3_display_x,view_yview+view_hview/2+200,"Color: "+string(global.color_for_player_3+1),global.default_text_size,global.default_text_size,0,c_white,c_white,c_white,c_white,1);}/*Color Selected Text END*/

/*Player 4*/if player4_accept_selection=false{
/*Color Selected Text*/draw_text_transformed_colour(view_xview+view_wview/2+player4_display_x-2,view_yview+view_hview/2+200,"Color: "+string(global.color_for_player_4+1),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player4_display_x+2,view_yview+view_hview/2+200,"Color: "+string(global.color_for_player_4+1),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player4_display_x,view_yview+view_hview/2+200-2,"Color: "+string(global.color_for_player_4+1),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player4_display_x,view_yview+view_hview/2+200+2,"Color: "+string(global.color_for_player_4+1),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player4_display_x,view_yview+view_hview/2+200,"Color: "+string(global.color_for_player_4+1),global.default_text_size,global.default_text_size,0,c_white,c_white,c_white,c_white,1);}/*Color Selected Text END*/
/*Tell the player what button to push to select a color END*/

/*Tell the player the inputed name*/draw_set_halign(fa_middle);draw_set_valign(fa_middle);
/*Player 1*/
/*Inputed Name Text*/draw_text_transformed_colour(view_xview+view_wview/2+player1_display_x-2,view_yview+view_hview/2+250,"Name: "+string(global.player1_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player1_display_x+2,view_yview+view_hview/2+250,"Name: "+string(global.player1_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player1_display_x,view_yview+view_hview/2+250-2,"Name: "+string(global.player1_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player1_display_x,view_yview+view_hview/2+250+2,"Name: "+string(global.player1_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player1_display_x,view_yview+view_hview/2+250,"Name: "+string(global.player1_name),global.default_text_size,global.default_text_size,0,c_white,c_white,c_white,c_white,1);/*Inputed Name Text END*/

/*Player 2*/
/*Inputed Name Text*/draw_text_transformed_colour(view_xview+view_wview/2+player2_display_x-2,view_yview+view_hview/2+250,"Name: "+string(global.player2_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player2_display_x+2,view_yview+view_hview/2+250,"Name: "+string(global.player2_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player2_display_x,view_yview+view_hview/2+250-2,"Name: "+string(global.player2_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player2_display_x,view_yview+view_hview/2+250+2,"Name: "+string(global.player2_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player2_display_x,view_yview+view_hview/2+250,"Name: "+string(global.player2_name),global.default_text_size,global.default_text_size,0,c_white,c_white,c_white,c_white,1);/*Inputed Name Text END*/

/*Player 3*/
/*Inputed Name Text*/draw_text_transformed_colour(view_xview+view_wview/2+player3_display_x-2,view_yview+view_hview/2+250,"Name: "+string(global.player3_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player3_display_x+2,view_yview+view_hview/2+250,"Name: "+string(global.player3_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player3_display_x,view_yview+view_hview/2+250-2,"Name: "+string(global.player3_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player3_display_x,view_yview+view_hview/2+250+2,"Name: "+string(global.player3_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player3_display_x,view_yview+view_hview/2+250,"Name: "+string(global.player3_name),global.default_text_size,global.default_text_size,0,c_white,c_white,c_white,c_white,1);/*Inputed Name Text END*/

/*Player 4*/
/*Inputed Name Text*/draw_text_transformed_colour(view_xview+view_wview/2+player4_display_x-2,view_yview+view_hview/2+250,"Name: "+string(global.player4_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player4_display_x+2,view_yview+view_hview/2+250,"Name: "+string(global.player4_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player4_display_x,view_yview+view_hview/2+250-2,"Name: "+string(global.player4_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player4_display_x,view_yview+view_hview/2+250+2,"Name: "+string(global.player4_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+player4_display_x,view_yview+view_hview/2+250,"Name: "+string(global.player4_name),global.default_text_size,global.default_text_size,0,c_white,c_white,c_white,c_white,1);/*Inputed Name Text END*/
/*Tell the player the inputed name END*/

name_enter_blink+=0.05;if name_enter_blink>1.5{name_enter_blink=0;}

/*Name Input*/
/*PLAYER 1 INPUT NAME NOW*/if can_input_player1_name=true{
draw_set_alpha(0.9);draw_rectangle_colour(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);draw_set_alpha(1);draw_set_halign(fa_left);draw_set_valign(fa_center);
/*Inputed Name Text*/if name_enter_blink<1{draw_text_transformed_colour(view_xview+view_wview/2-200-2,view_yview+view_hview/2,"Type a name on the keyboard for player 1#Press Enter when done typing# #Name: "+string(global.player1_name)+"|",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200+2,view_yview+view_hview/2,"Type a name on the keyboard for player 1#Press Enter when done typing# #Name: "+string(global.player1_name)+"|",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2-2,"Type a name on the keyboard for player 1#Press Enter when done typing# #Name: "+string(global.player1_name)+"|",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2+2,"Type a name on the keyboard for player 1#Press Enter when done typing# #Name: "+string(global.player1_name)+"|",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2,"Type a name on the keyboard for player 1#Press Enter when done typing# #Name: "+string(global.player1_name)+"|",global.default_text_size,global.default_text_size,0,c_red,c_red,c_red,c_red,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2-200-2,view_yview+view_hview/2,"Type a name on the keyboard for player 1#Press Enter when done typing# #Name: "+string(global.player1_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200+2,view_yview+view_hview/2,"Type a name on the keyboard for player 1#Press Enter when done typing# #Name: "+string(global.player1_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2-2,"Type a name on the keyboard for player 1#Press Enter when done typing# #Name: "+string(global.player1_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2+2,"Type a name on the keyboard for player 1#Press Enter when done typing# #Name: "+string(global.player1_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2,"Type a name on the keyboard for player 1#Press Enter when done typing# #Name: "+string(global.player1_name),global.default_text_size,global.default_text_size,0,c_red,c_red,c_red,c_red,1);}/*Inputed Name Text END*/
global.player1_name=keyboard_string;
/*Limit Name Input Length for Player 1*/draw_set_halign(fa_center);draw_set_valign(fa_center);
draw_text_transformed_colour(view_xview+view_wview/2-2,view_yview+view_hview/2+100,"Limit: "+string(string_length(global.player1_name))+"/15",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+2,view_yview+view_hview/2+100,"Limit: "+string(string_length(global.player1_name))+"/15",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+100-2,"Limit: "+string(string_length(global.player1_name))+"/15",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+100+2,"Limit: "+string(string_length(global.player1_name))+"/15",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+100,"Limit: "+string(string_length(global.player1_name))+"/15",global.default_text_size,global.default_text_size,0,c_white,c_white,c_white,c_white,1);
if string_length(global.player1_name)>15{global.player1_name=string_copy(global.player1_name,1,15);}/*Limit Name Input Length for Player 1 END*/}/*PLAYER 1 INPUT NAME NOW END*/

/*PLAYER 2 INPUT NAME NOW*/if can_input_player2_name=true{
draw_set_alpha(0.9);draw_rectangle_colour(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);draw_set_alpha(1);draw_set_halign(fa_left);draw_set_valign(fa_center);
/*Inputed Name Text*/if name_enter_blink<1{draw_text_transformed_colour(view_xview+view_wview/2-200-2,view_yview+view_hview/2,"Type a name on the keyboard for player 2#Press Enter when done typing# #Name: "+string(global.player2_name)+"|",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200+2,view_yview+view_hview/2,"Type a name on the keyboard for player 2#Press Enter when done typing# #Name: "+string(global.player2_name)+"|",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2-2,"Type a name on the keyboard for player 2#Press Enter when done typing# #Name: "+string(global.player2_name)+"|",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2+2,"Type a name on the keyboard for player 2#Press Enter when done typing# #Name: "+string(global.player2_name)+"|",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2,"Type a name on the keyboard for player 2#Press Enter when done typing# #Name: "+string(global.player2_name)+"|",global.default_text_size,global.default_text_size,0,c_lime,c_lime,c_lime,c_lime,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2-200-2,view_yview+view_hview/2,"Type a name on the keyboard for player 2#Press Enter when done typing# #Name: "+string(global.player2_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200+2,view_yview+view_hview/2,"Type a name on the keyboard for player 2#Press Enter when done typing# #Name: "+string(global.player2_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2-2,"Type a name on the keyboard for player 2#Press Enter when done typing# #Name: "+string(global.player2_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2+2,"Type a name on the keyboard for player 2#Press Enter when done typing# #Name: "+string(global.player2_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2,"Type a name on the keyboard for player 2#Press Enter when done typing# #Name: "+string(global.player2_name),global.default_text_size,global.default_text_size,0,c_lime,c_lime,c_lime,c_lime,1);}/*Inputed Name Text END*/
global.player2_name=keyboard_string;
/*Limit Name Input Length for Player 2*/draw_set_halign(fa_center);draw_set_valign(fa_center);
draw_text_transformed_colour(view_xview+view_wview/2-2,view_yview+view_hview/2+100,"Limit: "+string(string_length(global.player2_name))+"/15",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+2,view_yview+view_hview/2+100,"Limit: "+string(string_length(global.player2_name))+"/15",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+100-2,"Limit: "+string(string_length(global.player2_name))+"/15",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+100+2,"Limit: "+string(string_length(global.player2_name))+"/15",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+100,"Limit: "+string(string_length(global.player2_name))+"/15",global.default_text_size,global.default_text_size,0,c_white,c_white,c_white,c_white,1);
if string_length(global.player2_name)>15{global.player2_name=string_copy(global.player2_name,1,15);}/*Limit Name Input Length for Player 2 END*/}/*PLAYER 2 INPUT NAME NOW END*/

/*PLAYER 3 INPUT NAME NOW*/if can_input_player3_name=true{
draw_set_alpha(0.9);draw_rectangle_colour(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);draw_set_alpha(1);draw_set_halign(fa_left);draw_set_valign(fa_center);
/*Inputed Name Text*/if name_enter_blink<1{draw_text_transformed_colour(view_xview+view_wview/2-200-2,view_yview+view_hview/2,"Type a name on the keyboard for player 3#Press Enter when done typing# #Name: "+string(global.player3_name)+"|",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200+2,view_yview+view_hview/2,"Type a name on the keyboard for player 3#Press Enter when done typing# #Name: "+string(global.player3_name)+"|",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2-2,"Type a name on the keyboard for player 3#Press Enter when done typing# #Name: "+string(global.player3_name)+"|",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2+2,"Type a name on the keyboard for player 3#Press Enter when done typing# #Name: "+string(global.player3_name)+"|",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2,"Type a name on the keyboard for player 3#Press Enter when done typing# #Name: "+string(global.player3_name)+"|",global.default_text_size,global.default_text_size,0,c_yellow,c_yellow,c_yellow,c_yellow,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2-200-2,view_yview+view_hview/2,"Type a name on the keyboard for player 3#Press Enter when done typing# #Name: "+string(global.player3_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200+2,view_yview+view_hview/2,"Type a name on the keyboard for player 3#Press Enter when done typing# #Name: "+string(global.player3_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2-2,"Type a name on the keyboard for player 3#Press Enter when done typing# #Name: "+string(global.player3_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2+2,"Type a name on the keyboard for player 3#Press Enter when done typing# #Name: "+string(global.player3_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2,"Type a name on the keyboard for player 3#Press Enter when done typing# #Name: "+string(global.player3_name),global.default_text_size,global.default_text_size,0,c_yellow,c_yellow,c_yellow,c_yellow,1);}/*Inputed Name Text END*/
global.player3_name=keyboard_string;
/*Limit Name Input Length for Player 3*/draw_set_halign(fa_center);draw_set_valign(fa_center);
draw_text_transformed_colour(view_xview+view_wview/2-2,view_yview+view_hview/2+100,"Limit: "+string(string_length(global.player3_name))+"/15",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+2,view_yview+view_hview/2+100,"Limit: "+string(string_length(global.player3_name))+"/15",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+100-2,"Limit: "+string(string_length(global.player3_name))+"/15",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+100+2,"Limit: "+string(string_length(global.player3_name))+"/15",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+100,"Limit: "+string(string_length(global.player3_name))+"/15",global.default_text_size,global.default_text_size,0,c_white,c_white,c_white,c_white,1);
if string_length(global.player3_name)>15{global.player3_name=string_copy(global.player3_name,1,15);}/*Limit Name Input Length for Player 3 END*/}/*PLAYER 3 INPUT NAME NOW END*/

/*PLAYER 4 INPUT NAME NOW*/if can_input_player4_name=true{
draw_set_alpha(0.9);draw_rectangle_colour(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);draw_set_alpha(1);draw_set_halign(fa_left);draw_set_valign(fa_center);
/*Inputed Name Text*/if name_enter_blink<1{draw_text_transformed_colour(view_xview+view_wview/2-200-2,view_yview+view_hview/2,"Type a name on the keyboard for player 4#Press Enter when done typing# #Name: "+string(global.player4_name)+"|",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200+2,view_yview+view_hview/2,"Type a name on the keyboard for player 4#Press Enter when done typing# #Name: "+string(global.player4_name)+"|",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2-2,"Type a name on the keyboard for player 4#Press Enter when done typing# #Name: "+string(global.player4_name)+"|",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2+2,"Type a name on the keyboard for player 4#Press Enter when done typing# #Name: "+string(global.player4_name)+"|",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2,"Type a name on the keyboard for player 4#Press Enter when done typing# #Name: "+string(global.player4_name)+"|",global.default_text_size,global.default_text_size,0,c_aqua,c_aqua,c_aqua,c_aqua,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2-200-2,view_yview+view_hview/2,"Type a name on the keyboard for player 4#Press Enter when done typing# #Name: "+string(global.player4_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200+2,view_yview+view_hview/2,"Type a name on the keyboard for player 4#Press Enter when done typing# #Name: "+string(global.player4_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2-2,"Type a name on the keyboard for player 4#Press Enter when done typing# #Name: "+string(global.player4_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2+2,"Type a name on the keyboard for player 4#Press Enter when done typing# #Name: "+string(global.player4_name),global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2,"Type a name on the keyboard for player 4#Press Enter when done typing# #Name: "+string(global.player4_name),global.default_text_size,global.default_text_size,0,c_aqua,c_aqua,c_aqua,c_aqua,1);}/*Inputed Name Text END*/
global.player4_name=keyboard_string;
/*Limit Name Input Length for Player 4*/draw_set_halign(fa_center);draw_set_valign(fa_center);
draw_text_transformed_colour(view_xview+view_wview/2-2,view_yview+view_hview/2+100,"Limit: "+string(string_length(global.player4_name))+"/15",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+2,view_yview+view_hview/2+100,"Limit: "+string(string_length(global.player4_name))+"/15",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+100-2,"Limit: "+string(string_length(global.player4_name))+"/15",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+100+2,"Limit: "+string(string_length(global.player4_name))+"/15",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+100,"Limit: "+string(string_length(global.player4_name))+"/15",global.default_text_size,global.default_text_size,0,c_white,c_white,c_white,c_white,1);
if string_length(global.player4_name)>15{global.player4_name=string_copy(global.player4_name,1,15);}/*Limit Name Input Length for Player 4 END*/}/*PLAYER 4 INPUT NAME NOW END*/

/*Press enter when done typing*/if can_input_player1_name=true or can_input_player2_name=true or can_input_player3_name=true or can_input_player4_name=true{if keyboard_check_pressed(vk_escape)or keyboard_check_pressed(vk_enter){if menu_delay=0{menu_delay=10;can_input_player1_name=false;can_input_player2_name=false;can_input_player3_name=false;can_input_player4_name=false;}}}/*Press enter when done typing END*/
/*Limit Name Input Length for all players*/if string_length(keyboard_string)>15{keyboard_string=string_copy(keyboard_string,1,15);}/*Limit Name Input Length for all players END*/
/*Name Input END*/

/*Menu Navigation*/
if can_input_player1_name=false and can_input_player2_name=false and can_input_player3_name=false and can_input_player4_name=false{
if player_1_menu="select_character"{
/*Navigate Character Selection*/
/*Player 1*/if global.playergame>=0{if menu_joystick1_delay<=0 and input_key=false and can_navigate=true and player1_accept_selection=false{
/*Key Left*/if(keyboard_check_pressed(global.player1_key_left))and(!keyboard_check_pressed(global.player1_key_right))or(gamepad_button_check_pressed(0,gp_padl))and(!gamepad_button_check_pressed(0,gp_padr))or(gamepad_axis_value(0,gp_axislh)<0)and menu_joystick1_delay<=0/*Key Left END*/{if menu_delay=0{menu_delay=10;menu_joystick1_delay=30;if global.character_for_player_1>0{global.character_for_player_1-=1;}else if global.character_for_player_1<=0{global.character_for_player_1=max_number_of_characters-1;}xx1=player1_display_x-32;}}
/*Key Right*/if(keyboard_check_pressed(global.player1_key_right))and(!keyboard_check_pressed(global.player1_key_left))or(gamepad_button_check_pressed(0,gp_padr))and(!gamepad_button_check_pressed(0,gp_padl))or(gamepad_axis_value(0,gp_axislh)>0)and menu_joystick1_delay<=0/*Key Right END*/{if menu_delay=0{menu_delay=10;menu_joystick1_delay=30;if global.character_for_player_1<max_number_of_characters-1{global.character_for_player_1+=1;}else if global.character_for_player_1>=max_number_of_characters-1{global.character_for_player_1=0;}xx1=player1_display_x+32;}}}}/*Player 1 END*/
/*Player 1 key down*/if(keyboard_check_pressed(global.player1_key_down))and(!keyboard_check_pressed(global.player1_key_up))or(gamepad_button_check_pressed(0,gp_padd))and(!gamepad_button_check_pressed(0,gp_padu))or(gamepad_axis_value(0,gp_axislv)>0)and menu_joystick1_delay<=0{if player1_accept_selection=false and menu_delay=0{menu_delay=10;menu_joystick1_delay=30;player_1_menu="select_color";}}/*Player 1 key down END*/}
if player_1_menu="select_color"{
/*Player 1 key up*/if(keyboard_check_pressed(global.player1_key_up))and(!keyboard_check_pressed(global.player1_key_down))or(gamepad_button_check_pressed(0,gp_padu))and(!gamepad_button_check_pressed(0,gp_padd))or(gamepad_axis_value(0,gp_axislv)<0)and menu_joystick1_delay<=0{if player1_accept_selection=false and menu_delay=0{menu_delay=10;menu_joystick1_delay=30;player_1_menu="select_character";}}/*Player 1 key up END*/
/*Player 1 key down*/if(keyboard_check_pressed(global.player1_key_down))and(!keyboard_check_pressed(global.player1_key_up))or(gamepad_button_check_pressed(0,gp_padd))and(!gamepad_button_check_pressed(0,gp_padu))or(gamepad_axis_value(0,gp_axislv)>0)and menu_joystick1_delay<=0{if player1_accept_selection=false and menu_delay=0{menu_delay=10;menu_joystick1_delay=30;player_1_menu="select_name";}}/*Player 1 key down END*/
/*Player 1 key left*/if(keyboard_check_pressed(global.player1_key_left))and(!keyboard_check_pressed(global.player1_key_right))or(gamepad_button_check_pressed(0,gp_padl))and(!gamepad_button_check_pressed(0,gp_padr))or(gamepad_axis_value(0,gp_axislh)<0)and menu_joystick1_delay<=0{if menu_delay=0 and player1_accept_selection=false{if global.color_for_player_1>0{global.color_for_player_1-=1;}}}/*Player 1 key left END*/
/*Player 1 key right*/if(keyboard_check_pressed(global.player1_key_right))and(!keyboard_check_pressed(global.player1_key_left))or(gamepad_button_check_pressed(0,gp_padr))and(!gamepad_button_check_pressed(0,gp_padl))or(gamepad_axis_value(0,gp_axislh)>0)and menu_joystick1_delay<=0{if menu_delay=0 and player1_accept_selection=false{if global.color_for_player_1<max_number_of_colors{global.color_for_player_1+=1;}}}/*Player 1 key right END*/}
if player_1_menu="select_name"{
/*Player 1 key up*/if(keyboard_check_pressed(global.player1_key_up))and(!keyboard_check_pressed(global.player1_key_down))or(gamepad_button_check_pressed(0,gp_padu))and(!gamepad_button_check_pressed(0,gp_padd))or(gamepad_axis_value(0,gp_axislv)<0)and menu_joystick1_delay<=0{if player1_accept_selection=false and menu_delay=0{menu_delay=10;menu_joystick1_delay=30;player_1_menu="select_color";}}/*Player 1 key up END*/
if can_input_player1_name=false and can_input_player2_name=false and can_input_player3_name=false and can_input_player4_name=false{if(gamepad_button_check_pressed(0,gp_face1))or(keyboard_check_pressed(vk_enter))or(keyboard_check_pressed(global.player1_key_jump)){if menu_delay=0{menu_delay=10;keyboard_string=global.player1_name;can_input_player1_name=true;can_input_player2_name=false;can_input_player3_name=false;can_input_player4_name=false;}}}
}

if player_2_menu="select_character"{
/*Navigate Character Selection*/
/*Player 2*/if global.playergame>=1{if menu_joystick2_delay<=0 and input_key=false and can_navigate=true and player2_accept_selection=false{
/*Key Left*/if(keyboard_check_pressed(global.player2_key_left))and(!keyboard_check_pressed(global.player2_key_right))or(gamepad_button_check_pressed(1,gp_padl))and(!gamepad_button_check_pressed(1,gp_padr))or(gamepad_axis_value(1,gp_axislh)<0)and menu_joystick2_delay<=0/*Key Left END*/{if menu_delay=0{menu_delay=10;menu_joystick2_delay=30;if global.character_for_player_2>0{global.character_for_player_2-=1;}else if global.character_for_player_2<=0{global.character_for_player_2=max_number_of_characters-1;}xx2=player2_display_x-32;}}
/*Key Right*/if(keyboard_check_pressed(global.player2_key_right))and(!keyboard_check_pressed(global.player2_key_left))or(gamepad_button_check_pressed(1,gp_padr))and(!gamepad_button_check_pressed(1,gp_padl))or(gamepad_axis_value(1,gp_axislh)>0)and menu_joystick2_delay<=0/*Key Right END*/{if menu_delay=0{menu_delay=10;menu_joystick2_delay=30;if global.character_for_player_2<max_number_of_characters-1{global.character_for_player_2+=1;}else if global.character_for_player_2>=max_number_of_characters-1{global.character_for_player_2=0;}xx2=player2_display_x+32;}}}}/*Player 2 END*/
/*Player 2 key down*/if(keyboard_check_pressed(global.player2_key_down))and(!keyboard_check_pressed(global.player2_key_up))or(gamepad_button_check_pressed(1,gp_padd))and(!gamepad_button_check_pressed(1,gp_padu))or(gamepad_axis_value(1,gp_axislv)>0)and menu_joystick2_delay<=0{if player2_accept_selection=false and menu_delay=0{menu_delay=10;menu_joystick2_delay=30;player_2_menu="select_color";}}/*Player 2 key down END*/}
if player_2_menu="select_color"{
/*Player 2 key up*/if(keyboard_check_pressed(global.player2_key_up))and(!keyboard_check_pressed(global.player2_key_down))or(gamepad_button_check_pressed(1,gp_padu))and(!gamepad_button_check_pressed(1,gp_padd))or(gamepad_axis_value(1,gp_axislv)<0)and menu_joystick2_delay<=0{if player2_accept_selection=false and menu_delay=0{menu_delay=10;menu_joystick2_delay=30;player_2_menu="select_character";}}/*Player 2 key up END*/
/*Player 2 key down*/if(keyboard_check_pressed(global.player2_key_down))and(!keyboard_check_pressed(global.player2_key_up))or(gamepad_button_check_pressed(1,gp_padd))and(!gamepad_button_check_pressed(1,gp_padu))or(gamepad_axis_value(1,gp_axislv)>0)and menu_joystick2_delay<=0{if player2_accept_selection=false and menu_delay=0{menu_delay=10;menu_joystick2_delay=30;player_2_menu="select_name";}}/*Player 2 key down END*/
/*Player 2 key left*/if(keyboard_check_pressed(global.player2_key_left))and(!keyboard_check_pressed(global.player2_key_right))or(gamepad_button_check_pressed(1,gp_padl))and(!gamepad_button_check_pressed(1,gp_padr))or(gamepad_axis_value(1,gp_axislh)<0)and menu_joystick2_delay<=0{if menu_delay=0 and player2_accept_selection=false{if global.color_for_player_2>0{global.color_for_player_2-=1;}}}/*Player 2 key left END*/
/*Player 2 key right*/if(keyboard_check_pressed(global.player2_key_right))and(!keyboard_check_pressed(global.player2_key_left))or(gamepad_button_check_pressed(1,gp_padr))and(!gamepad_button_check_pressed(1,gp_padl))or(gamepad_axis_value(1,gp_axislh)>0)and menu_joystick2_delay<=0{if menu_delay=0 and player2_accept_selection=false{if global.color_for_player_2<max_number_of_colors{global.color_for_player_2+=1;}}}/*Player 2 key right END*/}
if player_2_menu="select_name"{
/*Player 2 key up*/if(keyboard_check_pressed(global.player2_key_up))and(!keyboard_check_pressed(global.player2_key_down))or(gamepad_button_check_pressed(1,gp_padu))and(!gamepad_button_check_pressed(1,gp_padd))or(gamepad_axis_value(1,gp_axislv)<0)and menu_joystick2_delay<=0{if player2_accept_selection=false and menu_delay=0{menu_delay=10;menu_joystick2_delay=30;player_2_menu="select_color";}}/*Player 2 key up END*/
if can_input_player1_name=false and can_input_player2_name=false and can_input_player3_name=false and can_input_player4_name=false{if(gamepad_button_check_pressed(1,gp_face1))or(keyboard_check_pressed(global.player2_key_jump)){if menu_delay=0{menu_delay=10;keyboard_string=global.player2_name;can_input_player1_name=false;can_input_player2_name=true;can_input_player3_name=false;can_input_player4_name=false;}}}
}


if player_3_menu="select_character"{
/*Navigate Character Selection*/
/*Player 3*/if global.playergame>=2{if menu_joystick3_delay<=0 and input_key=false and can_navigate=true and player3_accept_selection=false{
/*Key Left*/if(keyboard_check_pressed(global.player3_key_left))and(!keyboard_check_pressed(global.player3_key_right))or(gamepad_button_check_pressed(2,gp_padl))and(!gamepad_button_check_pressed(2,gp_padr))or(gamepad_axis_value(2,gp_axislh)<0)and menu_joystick3_delay<=0/*Key Left END*/{if menu_delay=0{menu_delay=10;menu_joystick3_delay=30;if global.character_for_player_3>0{global.character_for_player_3-=1;}else if global.character_for_player_3<=0{global.character_for_player_3=max_number_of_characters-1;}xx3=player3_display_x-32;}}
/*Key Right*/if(keyboard_check_pressed(global.player3_key_right))and(!keyboard_check_pressed(global.player3_key_left))or(gamepad_button_check_pressed(2,gp_padr))and(!gamepad_button_check_pressed(2,gp_padl))or(gamepad_axis_value(2,gp_axislh)>0)and menu_joystick3_delay<=0/*Key Right END*/{if menu_delay=0{menu_delay=10;menu_joystick3_delay=30;if global.character_for_player_3<max_number_of_characters-1{global.character_for_player_3+=1;}else if global.character_for_player_3>=max_number_of_characters-1{global.character_for_player_3=0;}xx3=player3_display_x+32;}}}}/*Player 3 END*/
/*Player 3 key down*/if(keyboard_check_pressed(global.player3_key_down))and(!keyboard_check_pressed(global.player3_key_up))or(gamepad_button_check_pressed(2,gp_padd))and(!gamepad_button_check_pressed(2,gp_padu))or(gamepad_axis_value(2,gp_axislv)>0)and menu_joystick3_delay<=0{if player3_accept_selection=false and menu_delay=0{menu_delay=10;menu_joystick3_delay=30;player_3_menu="select_color";}}/*Player 3 key down END*/}
if player_3_menu="select_color"{
/*Player 3 key up*/if(keyboard_check_pressed(global.player3_key_up))and(!keyboard_check_pressed(global.player3_key_down))or(gamepad_button_check_pressed(2,gp_padu))and(!gamepad_button_check_pressed(2,gp_padd))or(gamepad_axis_value(2,gp_axislv)<0)and menu_joystick3_delay<=0{if player3_accept_selection=false and menu_delay=0{menu_delay=10;menu_joystick3_delay=30;player_3_menu="select_character";}}/*Player 3 key up END*/
/*Player 3 key down*/if(keyboard_check_pressed(global.player3_key_down))and(!keyboard_check_pressed(global.player3_key_up))or(gamepad_button_check_pressed(2,gp_padd))and(!gamepad_button_check_pressed(2,gp_padu))or(gamepad_axis_value(2,gp_axislv)>0)and menu_joystick3_delay<=0{if player3_accept_selection=false and menu_delay=0{menu_delay=10;menu_joystick3_delay=30;player_3_menu="select_name";}}/*Player 3 key down END*/
/*Player 3 key left*/if(keyboard_check_pressed(global.player3_key_left))and(!keyboard_check_pressed(global.player3_key_right))or(gamepad_button_check_pressed(2,gp_padl))and(!gamepad_button_check_pressed(2,gp_padr))or(gamepad_axis_value(2,gp_axislh)<0)and menu_joystick3_delay<=0{if menu_delay=0 and player3_accept_selection=false{if global.color_for_player_3>0{global.color_for_player_3-=1;}}}/*Player 3 key left END*/
/*Player 3 key right*/if(keyboard_check_pressed(global.player3_key_right))and(!keyboard_check_pressed(global.player3_key_left))or(gamepad_button_check_pressed(2,gp_padr))and(!gamepad_button_check_pressed(2,gp_padl))or(gamepad_axis_value(2,gp_axislh)>0)and menu_joystick3_delay<=0{if menu_delay=0 and player3_accept_selection=false{if global.color_for_player_3<max_number_of_colors{global.color_for_player_3+=1;}}}/*Player 3 key right END*/}
if player_3_menu="select_name"{
/*Player 3 key up*/if(keyboard_check_pressed(global.player3_key_up))and(!keyboard_check_pressed(global.player3_key_down))or(gamepad_button_check_pressed(2,gp_padu))and(!gamepad_button_check_pressed(2,gp_padd))or(gamepad_axis_value(2,gp_axislv)<0)and menu_joystick3_delay<=0{if player3_accept_selection=false and menu_delay=0{menu_delay=10;menu_joystick3_delay=30;player_3_menu="select_color";}}/*Player 3 key up END*/
if can_input_player1_name=false and can_input_player2_name=false and can_input_player3_name=false and can_input_player4_name=false{if(gamepad_button_check_pressed(2,gp_face1))or(keyboard_check_pressed(global.player3_key_jump)){if menu_delay=0{menu_delay=10;keyboard_string=global.player3_name;can_input_player1_name=false;can_input_player3_name=false;can_input_player3_name=true;can_input_player4_name=false;}}}
}


if player_4_menu="select_character"{
/*Navigate Character Selection*/
/*Player 4*/if global.playergame>=3{if menu_joystick4_delay<=0 and input_key=false and can_navigate=true and player4_accept_selection=false{
/*Key Left*/if(keyboard_check_pressed(global.player4_key_left))and(!keyboard_check_pressed(global.player4_key_right))or(gamepad_button_check_pressed(3,gp_padl))and(!gamepad_button_check_pressed(3,gp_padr))or(gamepad_axis_value(3,gp_axislh)<0)and menu_joystick4_delay<=0/*Key Left END*/{if menu_delay=0{menu_delay=10;menu_joystick4_delay=30;if global.character_for_player_4>0{global.character_for_player_4-=1;}else if global.character_for_player_4<=0{global.character_for_player_4=max_number_of_characters-1;}xx4=player4_display_x-32;}}
/*Key Right*/if(keyboard_check_pressed(global.player4_key_right))and(!keyboard_check_pressed(global.player4_key_left))or(gamepad_button_check_pressed(3,gp_padr))and(!gamepad_button_check_pressed(3,gp_padl))or(gamepad_axis_value(3,gp_axislh)>0)and menu_joystick4_delay<=0/*Key Right END*/{if menu_delay=0{menu_delay=10;menu_joystick4_delay=30;if global.character_for_player_4<max_number_of_characters-1{global.character_for_player_4+=1;}else if global.character_for_player_4>=max_number_of_characters-1{global.character_for_player_4=0;}xx4=player4_display_x+32;}}}}/*Player 4 END*/
/*Player 4 key down*/if(keyboard_check_pressed(global.player4_key_down))and(!keyboard_check_pressed(global.player4_key_up))or(gamepad_button_check_pressed(3,gp_padd))and(!gamepad_button_check_pressed(3,gp_padu))or(gamepad_axis_value(3,gp_axislv)>0)and menu_joystick4_delay<=0{if player4_accept_selection=false and menu_delay=0{menu_delay=10;menu_joystick4_delay=30;player_4_menu="select_color";}}/*Player 4 key down END*/}
if player_4_menu="select_color"{
/*Player 4 key up*/if(keyboard_check_pressed(global.player4_key_up))and(!keyboard_check_pressed(global.player4_key_down))or(gamepad_button_check_pressed(3,gp_padu))and(!gamepad_button_check_pressed(3,gp_padd))or(gamepad_axis_value(3,gp_axislv)<0)and menu_joystick4_delay<=0{if player4_accept_selection=false and menu_delay=0{menu_delay=10;menu_joystick4_delay=30;player_4_menu="select_character";}}/*Player 4 key up END*/
/*Player 4 key down*/if(keyboard_check_pressed(global.player4_key_down))and(!keyboard_check_pressed(global.player4_key_up))or(gamepad_button_check_pressed(3,gp_padd))and(!gamepad_button_check_pressed(3,gp_padu))or(gamepad_axis_value(3,gp_axislv)>0)and menu_joystick4_delay<=0{if player4_accept_selection=false and menu_delay=0{menu_delay=10;menu_joystick4_delay=30;player_4_menu="select_name";}}/*Player 4 key down END*/
/*Player 4 key left*/if(keyboard_check_pressed(global.player4_key_left))and(!keyboard_check_pressed(global.player4_key_right))or(gamepad_button_check_pressed(3,gp_padl))and(!gamepad_button_check_pressed(3,gp_padr))or(gamepad_axis_value(3,gp_axislh)<0)and menu_joystick4_delay<=0{if menu_delay=0 and player4_accept_selection=false{if global.color_for_player_4>0{global.color_for_player_4-=1;}}}/*Player 4 key left END*/
/*Player 4 key right*/if(keyboard_check_pressed(global.player4_key_right))and(!keyboard_check_pressed(global.player4_key_left))or(gamepad_button_check_pressed(3,gp_padr))and(!gamepad_button_check_pressed(3,gp_padl))or(gamepad_axis_value(3,gp_axislh)>0)and menu_joystick4_delay<=0{if menu_delay=0 and player4_accept_selection=false{if global.color_for_player_4<max_number_of_colors{global.color_for_player_4+=1;}}}/*Player 4 key right END*/}
if player_4_menu="select_name"{
/*Player 4 key up*/if(keyboard_check_pressed(global.player4_key_up))and(!keyboard_check_pressed(global.player4_key_down))or(gamepad_button_check_pressed(3,gp_padu))and(!gamepad_button_check_pressed(3,gp_padd))or(gamepad_axis_value(3,gp_axislv)<0)and menu_joystick4_delay<=0{if player4_accept_selection=false and menu_delay=0{menu_delay=10;menu_joystick4_delay=30;player_4_menu="select_color";}}/*Player 4 key up END*/
if can_input_player1_name=false and can_input_player2_name=false and can_input_player3_name=false and can_input_player4_name=false{if(gamepad_button_check_pressed(3,gp_face1))or(keyboard_check_pressed(global.player4_key_jump)){if menu_delay=0{menu_delay=10;keyboard_string=global.player4_name;can_input_player1_name=false;can_input_player4_name=false;can_input_player4_name=false;can_input_player4_name=true;}}}
}



}/*Menu Navigation END*/

/*Accept*/
if can_input_player1_name=false and can_input_player2_name=false and can_input_player3_name=false and can_input_player4_name=false{
if(gamepad_button_check_pressed(0,gp_face1))or(keyboard_check_pressed(vk_enter))or(keyboard_check_pressed(global.player1_key_jump)){if player1_accept_selection=false and menu_delay=0{menu_delay=10;player1_accept_selection=true;
if global.character_for_player_1=0{audio_stop_sound(voice);voice=audio_play_sound(menuvoice_select_character0,0,0);audio_sound_gain(menuvoice_select_character0,global.voices_volume,0);}else
if global.character_for_player_1=1{audio_stop_sound(voice);voice=audio_play_sound(menuvoice_select_character1,0,0);audio_sound_gain(menuvoice_select_character1,global.voices_volume,0);}
}audio_stop_sound(menuvoice_1player);audio_stop_sound(menuvoice_2player);audio_stop_sound(menuvoice_3player);audio_stop_sound(menuvoice_4player);}
if(gamepad_button_check_pressed(1,gp_face1))or(keyboard_check_pressed(global.player2_key_jump)){if player2_accept_selection=false and menu_delay=0{menu_delay=10;player2_accept_selection=true;
if global.character_for_player_2=0{audio_stop_sound(voice);voice=audio_play_sound(menuvoice_select_character0,0,0);audio_sound_gain(menuvoice_select_character0,global.voices_volume,0);}else
if global.character_for_player_2=1{audio_stop_sound(voice);voice=audio_play_sound(menuvoice_select_character1,0,0);audio_sound_gain(menuvoice_select_character1,global.voices_volume,0);}
}audio_stop_sound(menuvoice_1player);audio_stop_sound(menuvoice_2player);audio_stop_sound(menuvoice_3player);audio_stop_sound(menuvoice_4player);}
if(gamepad_button_check_pressed(2,gp_face1))or(keyboard_check_pressed(global.player3_key_jump)){if player3_accept_selection=false and menu_delay=0{menu_delay=10;player3_accept_selection=true;
if global.character_for_player_3=0{audio_stop_sound(voice);voice=audio_play_sound(menuvoice_select_character0,0,0);audio_sound_gain(menuvoice_select_character0,global.voices_volume,0);}else
if global.character_for_player_3=1{audio_stop_sound(voice);voice=audio_play_sound(menuvoice_select_character1,0,0);audio_sound_gain(menuvoice_select_character1,global.voices_volume,0);}
}audio_stop_sound(menuvoice_1player);audio_stop_sound(menuvoice_2player);audio_stop_sound(menuvoice_3player);audio_stop_sound(menuvoice_4player);}
if(gamepad_button_check_pressed(3,gp_face1))or(keyboard_check_pressed(global.player4_key_jump)){if player4_accept_selection=false and menu_delay=0{menu_delay=10;player4_accept_selection=true;
if global.character_for_player_4=0{audio_stop_sound(voice);voice=audio_play_sound(menuvoice_select_character0,0,0);audio_sound_gain(menuvoice_select_character0,global.voices_volume,0);}else
if global.character_for_player_4=1{audio_stop_sound(voice);voice=audio_play_sound(menuvoice_select_character1,0,0);audio_sound_gain(menuvoice_select_character1,global.voices_volume,0);}
}audio_stop_sound(menuvoice_1player);audio_stop_sound(menuvoice_2player);audio_stop_sound(menuvoice_3player);audio_stop_sound(menuvoice_4player);}

/*If 1 Player Game is selected and player 1 has selected a character*/if global.playergame<=0{if player1_accept_selection=true{player1_start_game=true;}else{player1_start_game=false;}}/*If 1 Player Game is selected and player 1 has selected a character END*/
/*If 1 Player Game is selected and player 1 and 2 has selected a character*/if global.playergame=1{if player1_accept_selection=true and player2_accept_selection=true{player1_start_game=true;}else{player1_start_game=false;}}/*If 1 Player Game is selected and player 1 and 2 has selected a character END*/
/*If 1 Player Game is selected and player 1, 2 and 3 has selected a character*/if global.playergame=2{if player1_accept_selection=true and player2_accept_selection=true and player3_accept_selection=true{player1_start_game=true;}else{player1_start_game=false;}}/*If 1 Player Game is selected and player 1, 2 and 3 has selected a character END*/
/*If 1 Player Game is selected and player 1, 2, 3 and 4 has selected a character*/if global.playergame>=3{if player1_accept_selection=true and player2_accept_selection=true and player3_accept_selection=true and player4_accept_selection=true{player1_start_game=true;}else{player1_start_game=false;}}/*If 1 Player Game is selected and player 1, 2, 3 and 4 has selected a character END*/

if(gamepad_button_check_pressed(0,gp_face1))or(keyboard_check_pressed(vk_enter))or(keyboard_check_pressed(global.player1_key_jump)){if player1_start_game=true and menu_delay=0{
if global.file=1{if character_select_when="game"{can_navigate=false;menu_delay=999;}else{menu="select_custom_level"can_navigate=true;menu_delay=10;player1_accept_selection=false;player2_accept_selection=false;player3_accept_selection=false;player4_accept_selection=false;can_input_player1_name=false;can_input_player2_name=false;can_input_player3_name=false;can_input_player4_name=false;}}
if global.file=2{if character_select_when="game"{can_navigate=false;menu_delay=999;}else{menu="select_custom_level"can_navigate=true;menu_delay=10;player1_accept_selection=false;player2_accept_selection=false;player3_accept_selection=false;player4_accept_selection=false;can_input_player1_name=false;can_input_player2_name=false;can_input_player3_name=false;can_input_player4_name=false;}}
if global.file=3{if character_select_when="game"{can_navigate=false;menu_delay=999;}else{menu="select_custom_level"can_navigate=true;menu_delay=10;player1_accept_selection=false;player2_accept_selection=false;player3_accept_selection=false;player4_accept_selection=false;can_input_player1_name=false;can_input_player2_name=false;can_input_player3_name=false;can_input_player4_name=false;}}}}
/*Accept END*/

/*Back / Cancel Selection*/
if(gamepad_button_check_pressed(0,gp_face2))or(keyboard_check_pressed(global.player1_key_dash))or(keyboard_check_pressed(vk_escape)){if player1_accept_selection=true and can_input_player1_name=false and can_input_player2_name=false and can_input_player3_name=false and can_input_player4_name=false{menu_delay=10;player1_accept_selection=false;can_navigate=true;}}
if(gamepad_button_check_pressed(1,gp_face2))or(keyboard_check_pressed(global.player2_key_dash)){if player2_accept_selection=true{menu_delay=10;player2_accept_selection=false;can_navigate=true;}}
if(gamepad_button_check_pressed(2,gp_face2))or(keyboard_check_pressed(global.player3_key_dash)){if player3_accept_selection=true{menu_delay=10;player3_accept_selection=false;can_navigate=true;}}
if(gamepad_button_check_pressed(3,gp_face2))or(keyboard_check_pressed(global.player4_key_dash)){if player4_accept_selection=true{menu_delay=10;player4_accept_selection=false;can_navigate=true;}}

/*If 1 Player Game is selected and player 1 has selected a character*/if global.playergame<=0{if player1_accept_selection=true{player1_start_game=true;}else{player1_start_game=false;}}/*If 1 Player Game is selected and player 1 has selected a character END*/
/*If 2 Player Game is selected and player 1 and 2 has selected a character*/if global.playergame=1{if player1_accept_selection=true and player2_accept_selection=true{player1_start_game=true;}else{player1_start_game=false;}}/*If 2 Player Game is selected and player 1 and 2 has selected a character END*/
/*If 3 Player Game is selected and player 1, 2 and 3 has selected a character*/if global.playergame=2{if player1_accept_selection=true and player2_accept_selection=true and player3_accept_selection=true{player1_start_game=true;}else{player1_start_game=false;}}/*If 3 Player Game is selected and player 1, 2 and 3 has selected a character END*/
/*If 4 Player Game is selected and player 1, 2, 3 and 4 has selected a character*/if global.playergame>=3{if player1_accept_selection=true and player2_accept_selection=true and player3_accept_selection=true and player4_accept_selection=true{player1_start_game=true;}else{player1_start_game=false;}}/*If 4 Player Game is selected and player 1, 2, 3 and 4 has selected a character END*/

if(keyboard_check_pressed(global.player1_key_dash))or(keyboard_check_pressed(vk_escape)){if menu_delay=0 and player1_start_game=false and player1_accept_selection=false and can_input_player1_name=false and can_input_player2_name=false and can_input_player3_name=false and can_input_player4_name=false
and can_input_player1_name=false and can_input_player2_name=false and can_input_player3_name=false and can_input_player4_name=false{image_alpha=1;
player1_accept_selection=false;player2_accept_selection=false;player3_accept_selection=false;player4_accept_selection=false;
can_input_player1_name=false;can_input_player2_name=false;can_input_player3_name=false;can_input_player4_name=false;
player_1_menu="select_character";player_2_menu="select_character";player_3_menu="select_character";player_4_menu="select_character";
xx1=player1_display_x;xx2=player2_display_x;xx3=player3_display_x;xx4=player4_display_x;
if global.playergame<=0{menu="1player";can_navigate=true;menu_delay=10;global.level_editor_level=1;/*Update Thumbnail*/if file_exists(working_directory+"\Custom Levels\Level"+string(global.level_editor_level)+"/Thumbnail.png"){global.thumbnail_sprite=sprite_add(working_directory+"\Custom Levels\Level"+string(global.level_editor_level)+"/Thumbnail.png",0,false,true,view_xview+view_wview/2,0);}/*Update Thumbnail END*/}
if global.playergame=1{menu="2player";can_navigate=true;menu_delay=10;global.level_editor_level=1;/*Update Thumbnail*/if file_exists(working_directory+"\Custom Levels\Level"+string(global.level_editor_level)+"/Thumbnail.png"){global.thumbnail_sprite=sprite_add(working_directory+"\Custom Levels\Level"+string(global.level_editor_level)+"/Thumbnail.png",0,false,true,view_xview+view_wview/2,0);}/*Update Thumbnail END*/}
if global.playergame=2{menu="3player";can_navigate=true;menu_delay=10;global.level_editor_level=1;/*Update Thumbnail*/if file_exists(working_directory+"\Custom Levels\Level"+string(global.level_editor_level)+"/Thumbnail.png"){global.thumbnail_sprite=sprite_add(working_directory+"\Custom Levels\Level"+string(global.level_editor_level)+"/Thumbnail.png",0,false,true,view_xview+view_wview/2,0);}/*Update Thumbnail END*/}
if global.playergame>=3{menu="4player";can_navigate=true;menu_delay=10;global.level_editor_level=1;/*Update Thumbnail*/if file_exists(working_directory+"\Custom Levels\Level"+string(global.level_editor_level)+"/Thumbnail.png"){global.thumbnail_sprite=sprite_add(working_directory+"\Custom Levels\Level"+string(global.level_editor_level)+"/Thumbnail.png",0,false,true,view_xview+view_wview/2,0);}/*Update Thumbnail END*/}
}}}
/*Back / Cancel Selection END*/

if menu_delay>0{menu_delay-=1;}if menu_delay<0{menu_delay=0;}


/*Menu navigation with joystick*/
if(gamepad_axis_value(0,gp_axislv)<0)or(gamepad_axis_value(0,gp_axislv)>0)or(gamepad_axis_value(0,gp_axislh)<0)or(gamepad_axis_value(0,gp_axislh)>0){if menu_joystick1_delay=0{menu_joystick1_delay=30;}}
if(gamepad_axis_value(1,gp_axislv)<0)or(gamepad_axis_value(1,gp_axislv)>0)or(gamepad_axis_value(1,gp_axislh)<0)or(gamepad_axis_value(1,gp_axislh)>0){if menu_joystick2_delay=0{menu_joystick2_delay=30;}}
if(gamepad_axis_value(2,gp_axislv)<0)or(gamepad_axis_value(2,gp_axislv)>0)or(gamepad_axis_value(2,gp_axislh)<0)or(gamepad_axis_value(2,gp_axislh)>0){if menu_joystick3_delay=0{menu_joystick3_delay=30;}}
if(gamepad_axis_value(3,gp_axislv)<0)or(gamepad_axis_value(3,gp_axislv)>0)or(gamepad_axis_value(3,gp_axislh)<0)or(gamepad_axis_value(3,gp_axislh)>0){if menu_joystick4_delay=0{menu_joystick4_delay=30;}}
if(gamepad_axis_value(0,gp_axislv)=0)and(gamepad_axis_value(0,gp_axislh)=0){menu_joystick1_delay=0;}
if(gamepad_axis_value(1,gp_axislv)=0)and(gamepad_axis_value(1,gp_axislh)=0){menu_joystick2_delay=0;}
if(gamepad_axis_value(2,gp_axislv)=0)and(gamepad_axis_value(2,gp_axislh)=0){menu_joystick3_delay=0;}
if(gamepad_axis_value(3,gp_axislv)=0)and(gamepad_axis_value(3,gp_axislh)=0){menu_joystick4_delay=0;}
if menu_joystick1_delay>0{menu_joystick1_delay-=1;}
if menu_joystick2_delay>0{menu_joystick2_delay-=1;}
if menu_joystick3_delay>0{menu_joystick3_delay-=1;}
if menu_joystick4_delay>0{menu_joystick4_delay-=1;}/*Menu navigation with joystick END*/

}
