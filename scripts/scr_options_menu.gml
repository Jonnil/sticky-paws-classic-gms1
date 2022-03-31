///scr_options_menu()
/*Save Config*/scr_saveconfig();/*Save Config END*/

/*Don't animate*/image_speed=0;/*Don't animate END*/

/*Make volumes stay between 0 and 1*/
if global.music_volume<0{global.music_volume=0;}
else if global.music_volume>1{global.music_volume=1;}
if global.sfx_volume<0{global.sfx_volume=0;}
else if global.sfx_volume>1{global.sfx_volume=1;}
if global.voices_volume<0{global.voices_volume=0;}
else if global.voices_volume>1{global.voices_volume=1;}/*Make volumes stay between 0 and 1 END*/

/*Keyboard Controls*/
//gamepad_set_axis_deadzone(0,0.50);
//key_up=(keyboard_check_pressed(vk_up))and(!keyboard_check_pressed(vk_down))or(gamepad_button_check_pressed(0,gp_padu))and(!gamepad_button_check_pressed(0,gp_padd))or(gamepad_axis_value(0,gp_axislv)<0);
//key_left=(keyboard_check_pressed(vk_left))and(!keyboard_check_pressed(vk_right))or(gamepad_button_check_pressed(0,gp_padl))and(!gamepad_button_check_pressed(0,gp_padr))or(gamepad_axis_value(0,gp_axislh)<0);
//key_right=(keyboard_check_pressed(vk_right))and(!keyboard_check_pressed(vk_left))or(gamepad_button_check_pressed(0,gp_padr))and(!gamepad_button_check_pressed(0,gp_padl))or(gamepad_axis_value(0,gp_axislh)>0);
//key_down=(keyboard_check_pressed(vk_down))and(!keyboard_check_pressed(vk_up))or(gamepad_button_check_pressed(0,gp_padd))and(!gamepad_button_check_pressed(0,gp_padu))or(gamepad_axis_value(0,gp_axislv)>0);
//key_a=(gamepad_button_check_pressed(0,gp_face1))or(keyboard_check_pressed(ord("Z")));
//key_b_pressed=(gamepad_button_check_pressed(0,gp_face2))or(keyboard_check_pressed(ord("X")));
/*Keyboard Controls END*/

/*Draw Event*/
/*Set a default font*/if asset_get_type("font_default")==asset_font{draw_set_font(font_default);}/*Set a default font END*/

draw_set_halign(fa_center);draw_set_valign(fa_center);

/*Options*/
if menu="gameplay_settings"or menu="graphics_settings"or menu="audio_settings"or menu="input_settings" or menu="settings_back"{image_alpha=1;

if menu="gameplay_settings"{
draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+50,"> Gameplay Settings <",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+50,"Gameplay Settings",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}

if menu="graphics_settings"{
draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+80,"> Graphics Settings <",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+80,"Graphics Settings",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}

if menu="audio_settings"{
draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+110,"> Audio Settings <",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+110,"Audio Settings",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}

if menu="input_settings"{
draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+140,"> Input Settings <",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+140,"Input Settings",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}

if menu="settings_back"{
draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+170,"> Back <",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+170,"Back",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}

}/*Options END*/

/*Gameplay Settings*/
if menu="show_tutorial_signs"or menu="hud_hide_time"or menu="players_can_collide"or menu="assist_settings"or menu="convention_mode"{

if menu="show_tutorial_signs"{
if global.show_tutorial_signs=true
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+50,"> Show Tutorial Signs: True",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+50,"> Show Tutorial Signs: False",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}
else if global.show_tutorial_signs=true
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+50,"Show Tutorial Signs: True",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+50,"Show Tutorial Signs: False",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}

if menu="hud_hide_time"{
if global.hud_show_timer>0{/*Show left arrow*/if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,4,view_xview+view_wview/2-200,view_yview+view_hview/2+menu_y_offset+80,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_left,view_xview+view_wview/2-200,view_yview+view_hview/2+menu_y_offset+80,0.5,0.5,0,c_white,1);}/*Show left arrow END*/}
if global.hud_show_timer<600{/*Show right arrow*/if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,6,view_xview+view_wview/2+200,view_yview+view_hview/2+menu_y_offset+80,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_right,view_xview+view_wview/2+200,view_yview+view_hview/2+menu_y_offset+80,0.5,0.5,0,c_white,1);}/*Show right arrow END*/}

/*HUD hide timer: 1 Second*/if global.hud_show_timer>0 and global.hud_show_timer<=60{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+80,"HUD hide timer: "+string(global.hud_show_timer/60)+" Second",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}/*HUD hide timer END*/
/*HUD hide timer: 2 or more Seconds*/else if global.hud_show_timer>60 and global.hud_show_timer<600{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+80,"HUD hide timer: "+string(global.hud_show_timer/60)+" Seconds",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}/*HUD hide timer END*/
/*HUD hide timer: Never show*/else if global.hud_show_timer<=0{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+80,"HUD: Never show",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}/*HUD hide timer: Never show END*/
/*HUD hide timer: Always show*/else if global.hud_show_timer>=600{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+80,"HUD: Always show",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}/*HUD hide timer: Always show END*/
}else
{
/*HUD hide timer: 1 Second*/if global.hud_show_timer>0 and global.hud_show_timer<=60{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+80,"HUD hide timer: "+string(global.hud_show_timer/60)+" Second",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}/*HUD hide timer END*/
/*HUD hide timer: 2 or more Seconds*/else if global.hud_show_timer>60 and global.hud_show_timer<600{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+80,"HUD hide timer: "+string(global.hud_show_timer/60)+" Seconds",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}/*HUD hide timer END*/
/*HUD hide timer: Never show*/else if global.hud_show_timer<=0{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+80,"HUD: Never show",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}/*HUD hide timer: Never show END*/
/*HUD hide timer: Always show*/else if global.hud_show_timer>=600{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+80,"HUD: Always show",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}/*HUD hide timer: Always show END*/
}

if menu="players_can_collide"{
if global.players_can_collide=true
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+110,"> Players can collide with each other: True",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+110,"> Players can collide with each other: False",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}
else if global.players_can_collide=true
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+110,"Players can collide with each other: True",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+110,"Players can collide with each other: False",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}

if menu="assist_settings"
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+140,"> Assist Settings <",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+140,"Assist Settings",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}

if menu="convention_mode"{
if global.convention_mode=true
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+170,"> Convention Mode: True",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+190,"Puts the game in a special convention mode for event showcasing",global.default_text_size*0.5,global.default_text_size*0.5,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+170,"> Convention Mode: False",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+190,"Puts the game in a special convention mode for event showcasing",global.default_text_size*0.5,global.default_text_size*0.5,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}
else if global.convention_mode=true
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+170,"Convention Mode: True",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+190,"Puts the game in a special convention mode for event showcasing",global.default_text_size*0.5,global.default_text_size*0.5,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+170,"Convention Mode: False",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+190,"Puts the game in a special convention mode for event showcasing",global.default_text_size*0.5,global.default_text_size*0.5,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
}
/*Gameplay Settings END*/

/*Assist Settings*/
if menu="assist_item_appear"or menu="assist_default_hp"or menu="assist_guiding_arrows"or menu="assist_back"{

if menu="assist_item_appear"{
if global.assist_item_appear>=1 and global.assist_item_appear<=9{
/*Show left arrow*/if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,4,view_xview+view_wview/2-300,view_yview+view_hview/2+menu_y_offset+50,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_left,view_xview+view_wview/2-300,view_yview+view_hview/2+menu_y_offset+50,0.5,0.5,0,c_white,1);}/*Show left arrow END*/
/*Show right arrow*/if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,6,view_xview+view_wview/2+300,view_yview+view_hview/2+menu_y_offset+50,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_right,view_xview+view_wview/2+300,view_yview+view_hview/2+menu_y_offset+50,0.5,0.5,0,c_white,1);}/*Show right arrow END*/}

if global.assist_item_appear=0{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+50,"Assist Item: Always Appear",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);/*Show right arrow*/if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,6,view_xview+view_wview/2+200,view_yview+view_hview/2+menu_y_offset+50,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_right,view_xview+view_wview/2+200,view_yview+view_hview/2+menu_y_offset+50,0.5,0.5,0,c_white,1);}/*Show right arrow END*/}
else if global.assist_item_appear=1{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+50,"Assist Item: Appear after 1 death on a level",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.assist_item_appear>=2 and global.assist_item_appear<=9{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+50,"Assist Item: Appear after "+string(global.assist_item_appear)+" deaths on a level",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.assist_item_appear>=10{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+50,"Assist Item: Never Appear",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);/*Show left arrow*/if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,4,view_xview+view_wview/2-200,view_yview+view_hview/2+menu_y_offset+50,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_left,view_xview+view_wview/2-200,view_yview+view_hview/2+menu_y_offset+50,0.5,0.5,0,c_white,1);}/*Show left arrow END*/}}
else{
if global.assist_item_appear=0{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+50,"Assist Item: Always Appear",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.assist_item_appear=1{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+50,"Assist Item: Appear after 1 death on a level",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.assist_item_appear>=2 and global.assist_item_appear<=9{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+50,"Assist Item: Appear after "+string(global.assist_item_appear)+" deaths on a level",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.assist_item_appear>=10{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+50,"Assist Item: Never Appear",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}

if menu="assist_default_hp"
{if global.assist_default_hp>=2 and global.assist_default_hp<=9{/*Show left arrow*/if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,4,view_xview+view_wview/2-200,view_yview+view_hview/2+menu_y_offset+80,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_left,view_xview+view_wview/2-200,view_yview+view_hview/2+menu_y_offset+80,0.5,0.5,0,c_white,1);}/*Show left arrow END*/}
if global.assist_default_hp>=10{/*Show left arrow*/if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,4,view_xview+view_wview/2-250,view_yview+view_hview/2+menu_y_offset+80,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_left,view_xview+view_wview/2-250,view_yview+view_hview/2+menu_y_offset+80,0.5,0.5,0,c_white,1);}/*Show left arrow END*/}
if global.assist_default_hp<=9{/*Show right arrow*/if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,6,view_xview+view_wview/2+200,view_yview+view_hview/2+menu_y_offset+80,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_right,view_xview+view_wview/2+200,view_yview+view_hview/2+menu_y_offset+80,0.5,0.5,0,c_white,1);}/*Show right arrow END*/}
if global.assist_default_hp<=9{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+80,"Default Health Points: "+string(global.assist_default_hp),global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.assist_default_hp>=10{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+80,"Default Health Points: Invincible",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}
else{if global.assist_default_hp<=9{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+80,"Default Health Points: "+string(global.assist_default_hp),global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.assist_default_hp>=10{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+80,"Default Health Points: Invincible",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}

if menu="assist_guiding_arrows"
{if global.assist_guiding_arrows>=1{/*Show left arrow*/if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,4,view_xview+view_wview/2-300,view_yview+view_hview/2+menu_y_offset+110,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_left,view_xview+view_wview/2-300,view_yview+view_hview/2+menu_y_offset+110,0.5,0.5,0,c_white,1);}/*Show left arrow END*/}
if global.assist_guiding_arrows<=2{/*Show right arrow*/if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,6,view_xview+view_wview/2+300,view_yview+view_hview/2+menu_y_offset+110,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_right,view_xview+view_wview/2+300,view_yview+view_hview/2+menu_y_offset+110,0.5,0.5,0,c_white,1);}/*Show right arrow END*/}
if global.assist_guiding_arrows=0{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+110,"Guiding Arrows: Big and Small Arrows",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
if global.assist_guiding_arrows=1{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+110,"Guiding Arrows: Only Big Arrows",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
if global.assist_guiding_arrows=2{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+110,"Guiding Arrows: Only Small Arrows",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
if global.assist_guiding_arrows=3{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+110,"Guiding Arrows: No Arrows",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}
else{if global.assist_guiding_arrows=0{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+110,"Guiding Arrows: Big and Small Arrows",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
if global.assist_guiding_arrows=1{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+110,"Guiding Arrows: Only Big Arrows",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
if global.assist_guiding_arrows=2{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+110,"Guiding Arrows: Only Small Arrows",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
if global.assist_guiding_arrows=3{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+110,"Guiding Arrows: No Arrows",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}

if menu="assist_back"
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+140,"> Back <",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+140,"Back",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}

}/*Assist Settings END*/

/*Graphics Settings*/
if menu="fullscreen_mode"or menu="interpolate"or menu="show_fps"or menu="background_brightness"or menu="background_layers"or menu="enable_transitions"{

if os_type!=os_ios and os_type!=os_android{
if menu="fullscreen_mode"{
if window_get_fullscreen()
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+50,"> Fullscreen Mode: True (Press F4 to toggle anytime)",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+50,"> Fullscreen Mode: False (Press F4 to toggle anytime)",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}
else if window_get_fullscreen()
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+50,"Fullscreen Mode: True (Press F4 to toggle anytime)",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+50,"Fullscreen Mode: False (Press F4 to toggle anytime)",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}

if menu="interpolate"{
if global.interpolate=true
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+80,"> Interpolate colors between pixels: True",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+80,"> Interpolate colors between pixels: False",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}
else if global.interpolate=true
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+80,"Interpolate colors between pixels: True",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+80,"Interpolate colors between pixels: False",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}

if menu="show_fps"{
if global.show_fps=true
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+110,"> Show FPS: True",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+110,"> Show FPS: False",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}
else if global.show_fps=true
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+110,"Show FPS: True",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+110,"Show FPS: False",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}

if menu="background_brightness"{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+140,"> Background Brightness: "+string(global.background_brightness),global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+140,"Background Brightness: "+string(global.background_brightness),global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
if global.background_brightness>-0.1 and global.background_brightness<+0.1{global.background_brightness=0;background_visible[7]=false;background_alpha[7]=0;}

if menu="background_layers"{
draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+170,"> Background Layers <",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}else
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+170,"Background Layers",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}

if menu="enable_transitions"{
if global.enable_transitions=true
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+200,"> Enable Transitions: True",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+200,"> Enable Transitions: False",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}
else if global.enable_transitions=true
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+200,"Enable Transitions: True",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+200,"Enable Transitions: False",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}

}/*Graphics Settings END*/

/*Enable and Disable Background Layers*/
if menu="enable_background_layer1"or menu="enable_background_layer2"or menu="enable_background_layer3"or menu="enable_background_layer4"or menu="enable_foreground_layer1"or menu="enable_foreground_layer2"or menu="enable_background_back"{

if menu="enable_background_layer1"{
if global.enable_background_layer1=true
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+50,"> Enable Background Layer 1: True",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+50,"> Enable Background Layer 1: False",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}
else if global.enable_background_layer1=true
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+50,"Enable Background Layer 1: True",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+50,"Enable Background Layer 1: False",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}

if menu="enable_background_layer2"{
if global.enable_background_layer2=true
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+80,"> Enable Background Layer 2: True",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+80,"> Enable Background Layer 2: False",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}
else if global.enable_background_layer2=true
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+80,"Enable Background Layer 2: True",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+80,"Enable Background Layer 2: False",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}

if menu="enable_background_layer3"{
if global.enable_background_layer3=true
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+110,"> Enable Background Layer 3: True",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+110,"> Enable Background Layer 3: False",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}
else if global.enable_background_layer3=true
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+110,"Enable Background Layer 3: True",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+110,"Enable Background Layer 3: False",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}

if menu="enable_background_layer4"{
if global.enable_background_layer4=true
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+140,"> Enable Background Layer 4: True",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+140,"> Enable Background Layer 4: False",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}
else if global.enable_background_layer4=true
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+140,"Enable Background Layer 4: True",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+140,"Enable Background Layer 4: False",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}

if menu="enable_foreground_layer1"{
if global.enable_foreground_layer1=true
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"> Enable Foreground Layer 1: True",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"> Enable Foreground Layer 1: False",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}
else if global.enable_foreground_layer1=true
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Enable Foreground Layer 1: True",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Enable Foreground Layer 1: False",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}

if menu="enable_foreground_layer2"{
if global.enable_foreground_layer2=true
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+210,"> Enable Foreground Layer 2: True",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+210,"> Enable Foreground Layer 2: False",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}
else if global.enable_foreground_layer2=true
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+210,"Enable Foreground Layer 2: True",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+210,"Enable Foreground Layer 2: False",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}

if menu="enable_background_back"{
draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+240,"> Back <",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}else
{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+240,"Back",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
}

/*Enable and Disable Background Layers END*/

/*Audio Settings*/
if menu="music_volume" or menu="sfx_volume" or menu="voices_volume" or menu="select_narrator"{

/*Draw bars that represent how much volume each channel have*/
/*Music Bar*/draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+50-5,view_xview+view_wview/2-200+50+320,view_yview+view_hview/2+menu_y_offset+50+10,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false);
if global.music_volume=1{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+50-5,view_xview+view_wview/2-200+50+320,view_yview+view_hview/2+menu_y_offset+50+10,c_red,c_red,c_red,c_red,false);}
if global.music_volume=0.95{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+50-5,view_xview+view_wview/2-200+50+304,view_yview+view_hview/2+menu_y_offset+50+10,c_red,c_red,c_red,c_red,false);}
if global.music_volume=0.9{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+50-5,view_xview+view_wview/2-200+50+288,view_yview+view_hview/2+menu_y_offset+50+10,c_red,c_red,c_red,c_red,false);}
if global.music_volume=0.85{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+50-5,view_xview+view_wview/2-200+50+272,view_yview+view_hview/2+menu_y_offset+50+10,c_red,c_red,c_red,c_red,false);}
if global.music_volume=0.8{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+50-5,view_xview+view_wview/2-200+50+256,view_yview+view_hview/2+menu_y_offset+50+10,c_red,c_red,c_red,c_red,false);}
if global.music_volume=0.75{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+50-5,view_xview+view_wview/2-200+50+240,view_yview+view_hview/2+menu_y_offset+50+10,c_red,c_red,c_red,c_red,false);}
if global.music_volume=0.7{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+50-5,view_xview+view_wview/2-200+50+224,view_yview+view_hview/2+menu_y_offset+50+10,c_red,c_red,c_red,c_red,false);}
if global.music_volume=0.65{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+50-5,view_xview+view_wview/2-200+50+208,view_yview+view_hview/2+menu_y_offset+50+10,c_red,c_red,c_red,c_red,false);}
if global.music_volume=0.6{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+50-5,view_xview+view_wview/2-200+50+192,view_yview+view_hview/2+menu_y_offset+50+10,c_red,c_red,c_red,c_red,false);}
if global.music_volume=0.55{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+50-5,view_xview+view_wview/2-200+50+176,view_yview+view_hview/2+menu_y_offset+50+10,c_red,c_red,c_red,c_red,false);}
if global.music_volume=0.5{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+50-5,view_xview+view_wview/2-200+50+160,view_yview+view_hview/2+menu_y_offset+50+10,c_red,c_red,c_red,c_red,false);}
if global.music_volume=0.45{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+50-5,view_xview+view_wview/2-200+50+144,view_yview+view_hview/2+menu_y_offset+50+10,c_red,c_red,c_red,c_red,false);}
if global.music_volume=0.4{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+50-5,view_xview+view_wview/2-200+50+128,view_yview+view_hview/2+menu_y_offset+50+10,c_red,c_red,c_red,c_red,false);}
if global.music_volume=0.35{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+50-5,view_xview+view_wview/2-200+50+112,view_yview+view_hview/2+menu_y_offset+50+10,c_red,c_red,c_red,c_red,false);}
if global.music_volume=0.3{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+50-5,view_xview+view_wview/2-200+50+96,view_yview+view_hview/2+menu_y_offset+50+10,c_red,c_red,c_red,c_red,false);}
if global.music_volume=0.25{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+50-5,view_xview+view_wview/2-200+50+80,view_yview+view_hview/2+menu_y_offset+50+10,c_red,c_red,c_red,c_red,false);}
if global.music_volume=0.2{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+50-5,view_xview+view_wview/2-200+50+64,view_yview+view_hview/2+menu_y_offset+50+10,c_red,c_red,c_red,c_red,false);}
if global.music_volume=0.15{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+50-5,view_xview+view_wview/2-200+50+48,view_yview+view_hview/2+menu_y_offset+50+10,c_red,c_red,c_red,c_red,false);}
if global.music_volume=0.1{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+50-5,view_xview+view_wview/2-200+50+32,view_yview+view_hview/2+menu_y_offset+50+10,c_red,c_red,c_red,c_red,false);}
if global.music_volume=0.05{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+50-5,view_xview+view_wview/2-200+50+16,view_yview+view_hview/2+menu_y_offset+50+10,c_red,c_red,c_red,c_red,false);}/*Music Bar END*/

/*Sound Effects Bar*/draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+80-5,view_xview+view_wview/2-200+50+320,view_yview+view_hview/2+menu_y_offset+80+10,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false);
if global.sfx_volume=1{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+80-5,view_xview+view_wview/2-200+50+320,view_yview+view_hview/2+menu_y_offset+80+10,c_lime,c_lime,c_lime,c_lime,false);}
if global.sfx_volume=0.95{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+80-5,view_xview+view_wview/2-200+50+304,view_yview+view_hview/2+menu_y_offset+80+10,c_lime,c_lime,c_lime,c_lime,false);}
if global.sfx_volume=0.9{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+80-5,view_xview+view_wview/2-200+50+288,view_yview+view_hview/2+menu_y_offset+80+10,c_lime,c_lime,c_lime,c_lime,false);}
if global.sfx_volume=0.85{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+80-5,view_xview+view_wview/2-200+50+272,view_yview+view_hview/2+menu_y_offset+80+10,c_lime,c_lime,c_lime,c_lime,false);}
if global.sfx_volume=0.8{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+80-5,view_xview+view_wview/2-200+50+256,view_yview+view_hview/2+menu_y_offset+80+10,c_lime,c_lime,c_lime,c_lime,false);}
if global.sfx_volume=0.75{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+80-5,view_xview+view_wview/2-200+50+240,view_yview+view_hview/2+menu_y_offset+80+10,c_lime,c_lime,c_lime,c_lime,false);}
if global.sfx_volume=0.7{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+80-5,view_xview+view_wview/2-200+50+224,view_yview+view_hview/2+menu_y_offset+80+10,c_lime,c_lime,c_lime,c_lime,false);}
if global.sfx_volume=0.65{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+80-5,view_xview+view_wview/2-200+50+208,view_yview+view_hview/2+menu_y_offset+80+10,c_lime,c_lime,c_lime,c_lime,false);}
if global.sfx_volume=0.6{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+80-5,view_xview+view_wview/2-200+50+192,view_yview+view_hview/2+menu_y_offset+80+10,c_lime,c_lime,c_lime,c_lime,false);}
if global.sfx_volume=0.55{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+80-5,view_xview+view_wview/2-200+50+176,view_yview+view_hview/2+menu_y_offset+80+10,c_lime,c_lime,c_lime,c_lime,false);}
if global.sfx_volume=0.5{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+80-5,view_xview+view_wview/2-200+50+160,view_yview+view_hview/2+menu_y_offset+80+10,c_lime,c_lime,c_lime,c_lime,false);}
if global.sfx_volume=0.45{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+80-5,view_xview+view_wview/2-200+50+144,view_yview+view_hview/2+menu_y_offset+80+10,c_lime,c_lime,c_lime,c_lime,false);}
if global.sfx_volume=0.4{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+80-5,view_xview+view_wview/2-200+50+128,view_yview+view_hview/2+menu_y_offset+80+10,c_lime,c_lime,c_lime,c_lime,false);}
if global.sfx_volume=0.35{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+80-5,view_xview+view_wview/2-200+50+112,view_yview+view_hview/2+menu_y_offset+80+10,c_lime,c_lime,c_lime,c_lime,false);}
if global.sfx_volume=0.3{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+80-5,view_xview+view_wview/2-200+50+96,view_yview+view_hview/2+menu_y_offset+80+10,c_lime,c_lime,c_lime,c_lime,false);}
if global.sfx_volume=0.25{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+80-5,view_xview+view_wview/2-200+50+80,view_yview+view_hview/2+menu_y_offset+80+10,c_lime,c_lime,c_lime,c_lime,false);}
if global.sfx_volume=0.2{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+80-5,view_xview+view_wview/2-200+50+64,view_yview+view_hview/2+menu_y_offset+80+10,c_lime,c_lime,c_lime,c_lime,false);}
if global.sfx_volume=0.15{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+80-5,view_xview+view_wview/2-200+50+48,view_yview+view_hview/2+menu_y_offset+80+10,c_lime,c_lime,c_lime,c_lime,false);}
if global.sfx_volume=0.1{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+80-5,view_xview+view_wview/2-200+50+32,view_yview+view_hview/2+menu_y_offset+80+10,c_lime,c_lime,c_lime,c_lime,false);}
if global.sfx_volume=0.05{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+80-5,view_xview+view_wview/2-200+50+16,view_yview+view_hview/2+menu_y_offset+80+10,c_lime,c_lime,c_lime,c_lime,false);}/*Sound Effects Bar END*/

/*Voices Bar*/draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+110-5,view_xview+view_wview/2-200+50+320,view_yview+view_hview/2+menu_y_offset+110+10,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false);
if global.voices_volume=1{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+110-5,view_xview+view_wview/2-200+50+320,view_yview+view_hview/2+menu_y_offset+110+10,c_aqua,c_aqua,c_aqua,c_aqua,false);}
if global.voices_volume=0.95{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+110-5,view_xview+view_wview/2-200+50+304,view_yview+view_hview/2+menu_y_offset+110+10,c_aqua,c_aqua,c_aqua,c_aqua,false);}
if global.voices_volume=0.9{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+110-5,view_xview+view_wview/2-200+50+288,view_yview+view_hview/2+menu_y_offset+110+10,c_aqua,c_aqua,c_aqua,c_aqua,false);}
if global.voices_volume=0.85{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+110-5,view_xview+view_wview/2-200+50+272,view_yview+view_hview/2+menu_y_offset+110+10,c_aqua,c_aqua,c_aqua,c_aqua,false);}
if global.voices_volume=0.8{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+110-5,view_xview+view_wview/2-200+50+256,view_yview+view_hview/2+menu_y_offset+110+10,c_aqua,c_aqua,c_aqua,c_aqua,false);}
if global.voices_volume=0.75{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+110-5,view_xview+view_wview/2-200+50+240,view_yview+view_hview/2+menu_y_offset+110+10,c_aqua,c_aqua,c_aqua,c_aqua,false);}
if global.voices_volume=0.7{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+110-5,view_xview+view_wview/2-200+50+224,view_yview+view_hview/2+menu_y_offset+110+10,c_aqua,c_aqua,c_aqua,c_aqua,false);}
if global.voices_volume=0.65{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+110-5,view_xview+view_wview/2-200+50+208,view_yview+view_hview/2+menu_y_offset+110+10,c_aqua,c_aqua,c_aqua,c_aqua,false);}
if global.voices_volume=0.6{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+110-5,view_xview+view_wview/2-200+50+192,view_yview+view_hview/2+menu_y_offset+110+10,c_aqua,c_aqua,c_aqua,c_aqua,false);}
if global.voices_volume=0.55{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+110-5,view_xview+view_wview/2-200+50+176,view_yview+view_hview/2+menu_y_offset+110+10,c_aqua,c_aqua,c_aqua,c_aqua,false);}
if global.voices_volume=0.5{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+110-5,view_xview+view_wview/2-200+50+160,view_yview+view_hview/2+menu_y_offset+110+10,c_aqua,c_aqua,c_aqua,c_aqua,false);}
if global.voices_volume=0.45{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+110-5,view_xview+view_wview/2-200+50+144,view_yview+view_hview/2+menu_y_offset+110+10,c_aqua,c_aqua,c_aqua,c_aqua,false);}
if global.voices_volume=0.4{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+110-5,view_xview+view_wview/2-200+50+128,view_yview+view_hview/2+menu_y_offset+110+10,c_aqua,c_aqua,c_aqua,c_aqua,false);}
if global.voices_volume=0.35{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+110-5,view_xview+view_wview/2-200+50+112,view_yview+view_hview/2+menu_y_offset+110+10,c_aqua,c_aqua,c_aqua,c_aqua,false);}
if global.voices_volume=0.3{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+110-5,view_xview+view_wview/2-200+50+96,view_yview+view_hview/2+menu_y_offset+110+10,c_aqua,c_aqua,c_aqua,c_aqua,false);}
if global.voices_volume=0.25{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+110-5,view_xview+view_wview/2-200+50+80,view_yview+view_hview/2+menu_y_offset+110+10,c_aqua,c_aqua,c_aqua,c_aqua,false);}
if global.voices_volume=0.2{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+110-5,view_xview+view_wview/2-200+50+64,view_yview+view_hview/2+menu_y_offset+110+10,c_aqua,c_aqua,c_aqua,c_aqua,false);}
if global.voices_volume=0.15{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+110-5,view_xview+view_wview/2-200+50+48,view_yview+view_hview/2+menu_y_offset+110+10,c_aqua,c_aqua,c_aqua,c_aqua,false);}
if global.voices_volume=0.1{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+110-5,view_xview+view_wview/2-200+50+32,view_yview+view_hview/2+menu_y_offset+110+10,c_aqua,c_aqua,c_aqua,c_aqua,false);}
if global.voices_volume=0.05{draw_rectangle_colour(view_xview+view_wview/2-200+50,view_yview+view_hview/2+menu_y_offset+110-5,view_xview+view_wview/2-200+50+16,view_yview+view_hview/2+menu_y_offset+110+10,c_aqua,c_aqua,c_aqua,c_aqua,false);}/*Voices Bar END*/
/*Draw bars that represent how much volume each channel have END*/

if menu="music_volume"{
if global.music_volume>0{/*Show left arrow*/if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,4,view_xview+view_wview/2-200-100,view_yview+view_hview/2+menu_y_offset+50,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_left,view_xview+view_wview/2-200-100,view_yview+view_hview/2+menu_y_offset+50,0.5,0.5,0,c_white,1);}/*Show left arrow END*/}
if global.music_volume<1{/*Show right arrow*/if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,6,view_xview+view_wview/2+300,view_yview+view_hview/2+menu_y_offset+50,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_right,view_xview+view_wview/2+250,view_yview+view_hview/2+menu_y_offset+50,0.5,0.5,0,c_white,1);}/*Show right arrow END*/}
draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2+menu_y_offset+50,"Music:",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2+menu_y_offset+50,"Music:",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}

if menu="sfx_volume"{
if global.sfx_volume>0{/*Show left arrow*/if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,4,view_xview+view_wview/2-200-100,view_yview+view_hview/2+menu_y_offset+80,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_left,view_xview+view_wview/2-200-100,view_yview+view_hview/2+menu_y_offset+80,0.5,0.5,0,c_white,1);}/*Show left arrow END*/}
if global.sfx_volume<1{/*Show right arrow*/if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,6,view_xview+view_wview/2+300,view_yview+view_hview/2+menu_y_offset+80,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_right,view_xview+view_wview/2+250,view_yview+view_hview/2+menu_y_offset+80,0.5,0.5,0,c_white,1);}/*Show right arrow END*/}
draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2+menu_y_offset+80,"SFX:",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2+menu_y_offset+80,"SFX:",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}

if menu="voices_volume"{
if global.voices_volume>0{/*Show left arrow*/if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,4,view_xview+view_wview/2-200-100,view_yview+view_hview/2+menu_y_offset+110,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_left,view_xview+view_wview/2-200-100,view_yview+view_hview/2+menu_y_offset+110,0.5,0.5,0,c_white,1);}/*Show left arrow END*/}
if global.voices_volume<1{/*Show right arrow*/if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,6,view_xview+view_wview/2+300,view_yview+view_hview/2+menu_y_offset+110,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_right,view_xview+view_wview/2+250,view_yview+view_hview/2+menu_y_offset+110,0.5,0.5,0,c_white,1);}/*Show right arrow END*/}
draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2+menu_y_offset+110,"Voices:",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2-200,view_yview+view_hview/2+menu_y_offset+110,"Voices:",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}

if menu="select_narrator"{
if global.narrator>0{/*Show left arrow*/if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,4,view_xview+view_wview/2-130,view_yview+view_hview/2+menu_y_offset+140,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_left,view_xview+view_wview/2-130,view_yview+view_hview/2+menu_y_offset+140,0.5,0.5,0,c_white,1);}/*Show left arrow END*/}
if global.narrator<2{/*Show right arrow*/if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,6,view_xview+view_wview/2+130,view_yview+view_hview/2+menu_y_offset+140,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_right,view_xview+view_wview/2+130,view_yview+view_hview/2+menu_y_offset+140,0.5,0.5,0,c_white,1);}/*Show right arrow END*/}
if global.narrator=0{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+140,"Narrator: Nobody",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
if global.narrator=1{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+140,"Narrator: Sticky",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
if global.narrator=2{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+140,"Narrator: Catlyn",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
}else{
if global.narrator=0{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+140,"Narrator: Nobody",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
if global.narrator=1{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+140,"Narrator: Sticky",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
if global.narrator=2{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+140,"Narrator: Catlyn",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}

}}/*Audio Settings END*/

/*Input Settings*/
if menu="remap_select_player"or menu="keyboard_controls_remapping"or menu="up_key_is_jump_key"or menu="double_tap_to_run"or menu="hold_direction_walljump"or menu="drop_from_horizontral_rope"or menu="show_controls"{
input_key=false;

if menu="remap_select_player"{

/*Show left arrow*/if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,4,view_xview+view_wview/2-125,view_yview+view_hview/2+menu_y_offset,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_left,view_xview+view_wview/2-125,view_yview+view_hview/2+menu_y_offset,0.5,0.5,0,c_white,1);}/*Show left arrow END*/
/*Show right arrow*/if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,6,view_xview+view_wview/2+125,view_yview+view_hview/2+menu_y_offset,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_right,view_xview+view_wview/2+125,view_yview+view_hview/2+menu_y_offset,0.5,0.5,0,c_white,1);}/*Show right arrow END*/

if remapping_player=1{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset,"Remap Player 1",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if remapping_player=2{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset,"Remap Player 2",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if remapping_player=3{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset,"Remap Player 3",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if remapping_player=4{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset,"Remap Player 4",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}

else
{if remapping_player=1{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset,"< Remap Player 1 >",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if remapping_player=2{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset,"< Remap Player 2 >",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if remapping_player=3{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset,"< Remap Player 3 >",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if remapping_player=4{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset,"< Remap Player 4 >",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}


if os_type!=os_ios and os_type!=os_android{
if menu="keyboard_controls_remapping"{
draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+30,"> Keyboard Controls Remapping <",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+30,"Keyboard Controls Remapping",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}

/*Up Key Is Jump Key*/
if remapping_player=1{if menu="up_key_is_jump_key"{
if global.player1_up_key_is_jump_key=true{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+60,"> Up key is jump key: True",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+60,"> Up key is jump key: False",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}
else if global.player1_up_key_is_jump_key=true{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+60,"Up key is jump key: True",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+60,"Up key is jump key: False",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}

else if remapping_player=2{if menu="up_key_is_jump_key"{
if global.player2_up_key_is_jump_key=true{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+60,"> Up key is jump key: True",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+60,"> Up key is jump key: False",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}
else if global.player2_up_key_is_jump_key=true{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+60,"Up key is jump key: True",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+60,"Up key is jump key: False",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}

else if remapping_player=3{if menu="up_key_is_jump_key"{
if global.player3_up_key_is_jump_key=true{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+60,"> Up key is jump key: True",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+60,"> Up key is jump key: False",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}
else if global.player3_up_key_is_jump_key=true{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+60,"Up key is jump key: True",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+60,"Up key is jump key: False",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}

else if remapping_player=4{if menu="up_key_is_jump_key"{
if global.player4_up_key_is_jump_key=true{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+60,"> Up key is jump key: True",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+60,"> Up key is jump key: False",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}
else if global.player4_up_key_is_jump_key=true{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+60,"Up key is jump key: True",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+60,"Up key is jump key: False",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}

/*Up Key Is Jump Key END*/

/*Double tap direction to run*/
if remapping_player=1{if menu="double_tap_to_run"{
if global.player1_double_tap_to_run=true{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+90,"> Double tap direction to run: True",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+90,"> Double tap direction to run: False",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}
else if global.player1_double_tap_to_run=true{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+90,"Double tap direction to run: True",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+90,"Double tap direction to run: False",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}

else if remapping_player=2{if menu="double_tap_to_run"{
if global.player2_double_tap_to_run=true{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+90,"> Double tap direction to run: True",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+90,"> Double tap direction to run: False",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}
else if global.player2_double_tap_to_run=true{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+90,"Double tap direction to run: True",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+90,"Double tap direction to run: False",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}

else if remapping_player=3{if menu="double_tap_to_run"{
if global.player3_double_tap_to_run=true{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+90,"> Double tap direction to run: True",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+90,"> Double tap direction to run: False",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}
else if global.player3_double_tap_to_run=true{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+90,"Double tap direction to run: True",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+90,"Double tap direction to run: False",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}

else if remapping_player=4{if menu="double_tap_to_run"{
if global.player4_double_tap_to_run=true{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+90,"> Double tap direction to run: True",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+90,"> Double tap direction to run: False",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}
else if global.player4_double_tap_to_run=true{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+90,"Double tap direction to run: True",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+90,"Double tap direction to run: False",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}

/*Double tap direction to run END*/

/*Hold Direction Walljump*/
if remapping_player=1{if menu="hold_direction_walljump"{
if global.player1_hold_direction_walljump=true{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+120,"> Hold toward wall to stick to wall: True",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+120,"> Hold toward wall to stick to wall: False",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}
else if global.player1_hold_direction_walljump=true{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+120,"Hold toward wall to stick to wall: True",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+120,"Hold toward wall to stick to wall: False",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}

else if remapping_player=2{if menu="hold_direction_walljump"{
if global.player2_hold_direction_walljump=true{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+120,"> Hold toward wall to stick to wall: True",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+120,"> Hold toward wall to stick to wall: False",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}
else if global.player2_hold_direction_walljump=true{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+120,"Hold toward wall to stick to wall: True",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+120,"Hold toward wall to stick to wall: False",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}

else if remapping_player=3{if menu="hold_direction_walljump"{
if global.player3_hold_direction_walljump=true{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+120,"> Hold toward wall to stick to wall: True",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+120,"> Hold toward wall to stick to wall: False",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}
else if global.player3_hold_direction_walljump=true{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+120,"Hold toward wall to stick to wall: True",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+120,"Hold toward wall to stick to wall: False",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}

else if remapping_player=4{if menu="hold_direction_walljump"{
if global.player4_hold_direction_walljump=true{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+120,"> Hold toward wall to stick to wall: True",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+120,"> Hold toward wall to stick to wall: False",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}
else if global.player4_hold_direction_walljump=true{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+120,"Hold toward wall to stick to wall: True",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+120,"Hold toward wall to stick to wall: False",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}

/*Hold Direction Walljump END*/

/*Drop down from Horizontal Rope*/
if remapping_player=1{if menu="drop_from_horizontral_rope"{
/*Show left arrow*/if global.player1_drop_from_horizontral_rope>0{if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,4,view_xview+view_wview/2-325,view_yview+view_hview/2+menu_y_offset+150,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_left,view_xview+view_wview/2-325,view_yview+view_hview/2+menu_y_offset+150,0.5,0.5,0,c_white,1);}}/*Show left arrow END*/
/*Show right arrow*/if global.player1_drop_from_horizontral_rope<3{if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,6,view_xview+view_wview/2+325,view_yview+view_hview/2+menu_y_offset+150,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_right,view_xview+view_wview/2+325,view_yview+view_hview/2+menu_y_offset+150,0.5,0.5,0,c_white,1);}}/*Show right arrow END*/
if global.player1_drop_from_horizontral_rope=0{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Down or Jump",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}else
if global.player1_drop_from_horizontral_rope=1{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Only Down",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}else
if global.player1_drop_from_horizontral_rope=2{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Only Jump",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}else
if global.player1_drop_from_horizontral_rope=3{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Down + Jump",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
}else
{if global.player1_drop_from_horizontral_rope=0{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Down or Jump",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}else
if global.player1_drop_from_horizontral_rope=1{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Only Down",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}else
if global.player1_drop_from_horizontral_rope=2{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Only Jump",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}else
if global.player1_drop_from_horizontral_rope=3{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Down + Jump",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
}
}

else if remapping_player=2{if menu="drop_from_horizontral_rope"{
/*Show left arrow*/if global.player2_drop_from_horizontral_rope>0{if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,4,view_xview+view_wview/2-325,view_yview+view_hview/2+menu_y_offset+150,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_left,view_xview+view_wview/2-325,view_yview+view_hview/2+menu_y_offset+150,0.5,0.5,0,c_white,1);}}/*Show left arrow END*/
/*Show right arrow*/if global.player2_drop_from_horizontral_rope<3{if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,6,view_xview+view_wview/2+325,view_yview+view_hview/2+menu_y_offset+150,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_right,view_xview+view_wview/2+325,view_yview+view_hview/2+menu_y_offset+150,0.5,0.5,0,c_white,1);}}/*Show right arrow END*/
if global.player2_drop_from_horizontral_rope=0{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Down or Jump",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}else
if global.player2_drop_from_horizontral_rope=1{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Only Down",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}else
if global.player2_drop_from_horizontral_rope=2{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Only Jump",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}else
if global.player2_drop_from_horizontral_rope=3{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Down + Jump",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
}else
{if global.player2_drop_from_horizontral_rope=0{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Down or Jump",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}else
if global.player2_drop_from_horizontral_rope=1{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Only Down",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}else
if global.player2_drop_from_horizontral_rope=2{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Only Jump",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}else
if global.player2_drop_from_horizontral_rope=3{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Down + Jump",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
}
}

else if remapping_player=3{if menu="drop_from_horizontral_rope"{
/*Show left arrow*/if global.player3_drop_from_horizontral_rope>0{if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,4,view_xview+view_wview/2-325,view_yview+view_hview/2+menu_y_offset+150,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_left,view_xview+view_wview/2-325,view_yview+view_hview/2+menu_y_offset+150,0.5,0.5,0,c_white,1);}}/*Show left arrow END*/
/*Show right arrow*/if global.player3_drop_from_horizontral_rope<3{if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,6,view_xview+view_wview/2+325,view_yview+view_hview/2+menu_y_offset+150,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_right,view_xview+view_wview/2+325,view_yview+view_hview/2+menu_y_offset+150,0.5,0.5,0,c_white,1);}}/*Show right arrow END*/
if global.player3_drop_from_horizontral_rope=0{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Down or Jump",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}else
if global.player3_drop_from_horizontral_rope=1{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Only Down",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}else
if global.player3_drop_from_horizontral_rope=2{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Only Jump",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}else
if global.player3_drop_from_horizontral_rope=3{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Down + Jump",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
}else
{if global.player3_drop_from_horizontral_rope=0{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Down or Jump",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}else
if global.player3_drop_from_horizontral_rope=1{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Only Down",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}else
if global.player3_drop_from_horizontral_rope=2{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Only Jump",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}else
if global.player3_drop_from_horizontral_rope=3{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Down + Jump",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
}
}

else if remapping_player=4{if menu="drop_from_horizontral_rope"{
/*Show left arrow*/if global.player4_drop_from_horizontral_rope>0{if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,4,view_xview+view_wview/2-325,view_yview+view_hview/2+menu_y_offset+150,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_left,view_xview+view_wview/2-325,view_yview+view_hview/2+menu_y_offset+150,0.5,0.5,0,c_white,1);}}/*Show left arrow END*/
/*Show right arrow*/if global.player4_drop_from_horizontral_rope<3{if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,6,view_xview+view_wview/2+325,view_yview+view_hview/2+menu_y_offset+150,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_right,view_xview+view_wview/2+325,view_yview+view_hview/2+menu_y_offset+150,0.5,0.5,0,c_white,1);}}/*Show right arrow END*/
if global.player4_drop_from_horizontral_rope=0{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Down or Jump",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}else
if global.player4_drop_from_horizontral_rope=1{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Only Down",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}else
if global.player4_drop_from_horizontral_rope=2{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Only Jump",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}else
if global.player4_drop_from_horizontral_rope=3{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Down + Jump",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
}else
{if global.player4_drop_from_horizontral_rope=0{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Down or Jump",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}else
if global.player4_drop_from_horizontral_rope=1{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Only Down",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}else
if global.player4_drop_from_horizontral_rope=2{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Only Jump",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}else
if global.player4_drop_from_horizontral_rope=3{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+150,"Drop down from horizontal rope: Down + Jump",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
}
}

/*Drop down from Horizontal Rope END*/

/*Show Controls*/
if os_type!=os_ios and os_type!=os_android{
if remapping_player=1{if menu="show_controls"{
/*Show left arrow*/if global.player1_show_controls>0{if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,4,view_xview+view_wview/2-225,view_yview+view_hview/2+menu_y_offset+180,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_left,view_xview+view_wview/2-225,view_yview+view_hview/2+menu_y_offset+180,0.5,0.5,0,c_white,1);}}/*Show left arrow END*/
/*Show right arrow*/if global.player1_show_controls<10{if gamepad_is_connected(0){draw_sprite_ext(spr_xbox_buttons,6,view_xview+view_wview/2+225,view_yview+view_hview/2+menu_y_offset+180,0.5,0.5,0,c_white,1);}else{draw_sprite_ext(spr_keyboard_keys,global.player1_key_right,view_xview+view_wview/2+225,view_yview+view_hview/2+menu_y_offset+180,0.5,0.5,0,c_white,1);}}/*Show right arrow END*/
if global.player1_show_controls<=0{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls: Never Show",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.player1_show_controls=1{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls After: "+string(global.player1_show_controls)+" Second",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.player1_show_controls>=2 and global.player1_show_controls<=9{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls After: "+string(global.player1_show_controls)+" Seconds",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.player1_show_controls>=10{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls: Always Show",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}

else if global.player1_show_controls<=0{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls: Never Show",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.player1_show_controls=1{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls After: "+string(global.player1_show_controls)+" Second",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.player1_show_controls>=2 and global.player1_show_controls<=9{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls After: "+string(global.player1_show_controls)+" Seconds",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.player1_show_controls>=10{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls: Always Show",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
}

else if remapping_player=2{if menu="show_controls"{
if global.player2_show_controls<=0{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls: Never Show",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.player2_show_controls=1{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls After: "+string(global.player2_show_controls)+" Second",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.player2_show_controls>=2 and global.player2_show_controls<=9{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls After: "+string(global.player2_show_controls)+" Seconds",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.player2_show_controls>=10{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls: Always Show",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}

else if global.player2_show_controls<=0{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls: Never Show",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.player2_show_controls=1{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls After: "+string(global.player2_show_controls)+" Second",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.player2_show_controls>=2 and global.player2_show_controls<=9{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls After: "+string(global.player2_show_controls)+" Seconds",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.player2_show_controls>=10{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls: Always Show",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
}

else if remapping_player=3{if menu="show_controls"{
if global.player3_show_controls<=0{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls: Never Show",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.player3_show_controls=1{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls After: "+string(global.player3_show_controls)+" Second",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.player3_show_controls>=2 and global.player3_show_controls<=9{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls After: "+string(global.player3_show_controls)+" Seconds",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.player3_show_controls>=10{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls: Always Show",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}

else if global.player3_show_controls<=0{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls: Never Show",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.player3_show_controls=1{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls After: "+string(global.player3_show_controls)+" Second",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.player3_show_controls>=2 and global.player3_show_controls<=9{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls After: "+string(global.player3_show_controls)+" Seconds",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.player3_show_controls>=10{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls: Always Show",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
}

else if remapping_player=4{if menu="show_controls"{
if global.player4_show_controls<=0{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,">Show Controls: Never Show",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.player4_show_controls=1{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls After: "+string(global.player4_show_controls)+" Second",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.player4_show_controls>=2 and global.player4_show_controls<=9{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls After: "+string(global.player4_show_controls)+" Seconds",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.player4_show_controls>=10{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls: Always Show",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}}

else if global.player4_show_controls<=0{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls: Never Show",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.player4_show_controls=1{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls After: "+string(global.player4_show_controls)+" Second",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.player4_show_controls>=2 and global.player4_show_controls<=9{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls After: "+string(global.player4_show_controls)+" Seconds",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else if global.player4_show_controls>=10{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+menu_y_offset+180,"Show Controls: Always Show",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
}

}/*Show Controls END*/

}/*Input Settings END*/

/*Menu Navigation*/
if menu_joystick_delay<=0 and input_key=false and can_navigate=true{

/*Options Menu*/
if menu="gameplay_settings"{if key_up{menu="settings_back";}else if key_down{menu="graphics_settings";}}
else if menu="graphics_settings"{if key_up{menu="gameplay_settings";}else if key_down{menu="audio_settings";}}
else if menu="audio_settings"{if key_up{menu="graphics_settings";}else if key_down{menu="input_settings";}}
else if menu="input_settings"{if key_up{menu="audio_settings";}else if key_down{menu="settings_back";}}
else if menu="settings_back"{if key_up{menu="input_settings";}else if key_down{menu="gameplay_settings";}}

else if menu="show_tutorial_signs"{if key_up{menu="convention_mode"}else if key_down{menu="hud_hide_time";}}
else if menu="hud_hide_time"{if key_left{if global.hud_show_timer>0{global.hud_show_timer-=60;}}if key_right{if global.hud_show_timer<600{global.hud_show_timer+=60;}}if key_up{menu="show_tutorial_signs";}if key_down{menu="players_can_collide";}}
else if menu="players_can_collide"{if key_up{menu="hud_hide_time"}else if key_down{menu="assist_settings";}}
else if menu="assist_settings"{if key_up{menu="players_can_collide"}else if key_down{menu="convention_mode";}}
else if menu="convention_mode"{if key_up{menu="assist_settings";}else if key_down{menu="show_tutorial_signs";}}

else if menu="assist_item_appear"{if key_up{menu="assist_back";}else if key_down{menu="assist_default_hp";}else if key_left and global.assist_item_appear>0{global.assist_item_appear-=1;}else if key_right and global.assist_item_appear<10{global.assist_item_appear+=1;}}
else if menu="assist_default_hp"{if key_up{menu="assist_item_appear";}else if key_down{menu="assist_guiding_arrows";}else if key_left and global.assist_default_hp>1{global.assist_default_hp-=1;}else if key_right and global.assist_default_hp<10{global.assist_default_hp+=1;}}
else if menu="assist_guiding_arrows"{if key_up{menu="assist_default_hp";}else if key_down{menu="assist_back";}else if key_left and global.assist_guiding_arrows>0{global.assist_guiding_arrows-=1;}else if key_right and global.assist_guiding_arrows<3{global.assist_guiding_arrows+=1;}}
else if menu="assist_back"{if key_up{menu="assist_guiding_arrows";}else if key_down{menu="assist_item_appear";}}

else if menu="fullscreen_mode"{if key_down{menu="interpolate";}else if key_up{menu="enable_transitions";}}
else if menu="interpolate"{if key_up{if os_type!=os_ios and os_type!=os_android{menu="fullscreen_mode";}else{menu="enable_transitions";}}else if key_down{menu="show_fps";}}
else if menu="show_fps"{if key_up{menu="interpolate";}else if key_down{menu="background_brightness";}}
else if menu="background_brightness"{if key_left{if global.background_brightness>-1{global.background_brightness-=0.1;}}else if key_right{if global.background_brightness<+1{global.background_brightness+=0.1;}}else if key_up{menu="show_fps";}else if key_down{menu="background_layers";}}
else if menu="background_layers"{if key_up{menu="background_brightness";}else if key_down{menu="enable_transitions";}}
else if menu="enable_transitions"{if key_up{menu="background_layers";}else if key_down{if os_type!=os_ios and os_type!=os_android{menu="fullscreen_mode";}else{menu="interpolate";}}}

else if menu="enable_background_layer1"{if key_down{menu="enable_background_layer2"}}
else if menu="enable_background_layer2"{if key_up{menu="enable_background_layer1"}else if key_down{menu="enable_background_layer3"}}
else if menu="enable_background_layer3"{if key_up{menu="enable_background_layer2"}else if key_down{menu="enable_background_layer4"}}
else if menu="enable_background_layer4"{if key_up{menu="enable_background_layer3"}else if key_down{menu="enable_foreground_layer1"}}
else if menu="enable_foreground_layer1"{if key_up{menu="enable_background_layer4"}else if key_down{menu="enable_foreground_layer2"}}
else if menu="enable_foreground_layer2"{if key_up{menu="enable_foreground_layer1"}else if key_down{menu="enable_background_back"}}
else if menu="enable_background_back"{if key_up{menu="enable_foreground_layer2"}}

else if menu="music_volume"{if key_left{if global.music_volume>0{global.music_volume-=0.05;}}else if key_right{if global.music_volume<+1{global.music_volume+=0.05;}}else if key_up{menu="select_narrator";}else if key_down{menu="sfx_volume";}}
else if menu="sfx_volume"{if key_left{if global.sfx_volume>0{global.sfx_volume-=0.05;}}else if key_right{if global.sfx_volume<+1{global.sfx_volume+=0.05;}}else if key_up{menu="music_volume"}else if key_down{menu="voices_volume"}}
else if menu="voices_volume"{if key_left{if global.voices_volume>0{global.voices_volume-=0.05;}}else if key_right{if global.voices_volume<+1{global.voices_volume+=0.05;}}else if key_up{menu="sfx_volume"}else if key_down{menu="select_narrator";}}
else if menu="select_narrator"{if key_left{if global.narrator>0{global.narrator-=1;}}else if key_right{if global.narrator<+2{global.narrator+=1;}}else if key_up{menu="voices_volume"}else if key_down{menu="music_volume";}}

else if menu="remap_select_player"{
if key_left{
if remapping_player=1{remapping_player=4;}
else if remapping_player=2{remapping_player=1;}
else if remapping_player=3{remapping_player=2;}
else if remapping_player=4{remapping_player=3;}
}
else if key_right{
if remapping_player=1{remapping_player=2;}
else if remapping_player=2{remapping_player=3;}
else if remapping_player=3{remapping_player=4;}
else if remapping_player=4{remapping_player=1;}
}

else if key_up{if os_type!=os_ios and os_type!=os_android{menu="show_controls";}else{menu="drop_from_horizontral_rope";}}else if key_down{if os_type!=os_ios and os_type!=os_android{menu="keyboard_controls_remapping";}else{menu="up_key_is_jump_key";}}}
else if menu="keyboard_controls_remapping"{if key_up{menu="remap_select_player";}else if key_down{menu="up_key_is_jump_key";}}
else if menu="up_key_is_jump_key"{if key_up{if os_type!=os_ios and os_type!=os_android{menu="keyboard_controls_remapping";}else{menu="remap_select_player";}}else if key_down{menu="double_tap_to_run";}}
else if menu="double_tap_to_run"{if key_up{menu="up_key_is_jump_key";}else if key_down{menu="hold_direction_walljump";}}
else if menu="hold_direction_walljump"{if key_up{menu="double_tap_to_run";}else if key_down{menu="drop_from_horizontral_rope";}}
else if menu="drop_from_horizontral_rope"{
if remapping_player=1{if key_left{if global.player1_drop_from_horizontral_rope>0{global.player1_drop_from_horizontral_rope-=1;}}else if key_right{if global.player1_drop_from_horizontral_rope<+3{global.player1_drop_from_horizontral_rope+=1;}}}
if remapping_player=2{if key_left{if global.player2_drop_from_horizontral_rope>0{global.player2_drop_from_horizontral_rope-=1;}}else if key_right{if global.player2_drop_from_horizontral_rope<+3{global.player2_drop_from_horizontral_rope+=1;}}}
if remapping_player=3{if key_left{if global.player3_drop_from_horizontral_rope>0{global.player3_drop_from_horizontral_rope-=1;}}else if key_right{if global.player3_drop_from_horizontral_rope<+3{global.player3_drop_from_horizontral_rope+=1;}}}
if remapping_player=4{if key_left{if global.player4_drop_from_horizontral_rope>0{global.player4_drop_from_horizontral_rope-=1;}}else if key_right{if global.player4_drop_from_horizontral_rope<+3{global.player4_drop_from_horizontral_rope+=1;}}}
if key_up{menu="hold_direction_walljump";}else if key_down{if os_type!=os_ios and os_type!=os_android{menu="show_controls";}else{menu="remap_select_player";}}}
else if menu="show_controls"{
if remapping_player=1{if key_left{if global.player1_show_controls>0{global.player1_show_controls-=1;}}else if key_right{if global.player1_show_controls<10{global.player1_show_controls+=1;}}}
if remapping_player=2{if key_left{if global.player2_show_controls>0{global.player2_show_controls-=1;}}else if key_right{if global.player2_show_controls<10{global.player2_show_controls+=1;}}}
if remapping_player=3{if key_left{if global.player3_show_controls>0{global.player3_show_controls-=1;}}else if key_right{if global.player3_show_controls<10{global.player3_show_controls+=1;}}}
if remapping_player=4{if key_left{if global.player4_show_controls>0{global.player4_show_controls-=1;}}else if key_right{if global.player4_show_controls<10{global.player4_show_controls+=1;}}}
if key_up{menu="drop_from_horizontral_rope";}else if key_down{menu="remap_select_player";}}

/*Keyboards Controls Remapping Navigation*/else if menu="remap_key_up"{if key_up{menu="remap_save";}else if key_down{menu="remap_key_down";}}
else if menu="remap_key_down"{if key_up{menu="remap_key_up";}else if key_down{menu="remap_key_left";}}
else if menu="remap_key_left"{if key_up{menu="remap_key_down";}else if key_down{menu="remap_key_right";}}
else if menu="remap_key_right"{if key_up{menu="remap_key_left";}else if key_down{menu="remap_key_dash";}}
else if menu="remap_key_dash"{if key_up{menu="remap_key_right";}else if key_down{menu="remap_key_jump";}}
else if menu="remap_key_jump"{if key_up{menu="remap_key_dash";}else if key_down{menu="remap_reset";}}
else if menu="remap_reset"{if key_up{menu="remap_key_jump";}else if key_down{menu="remap_save";}}
else if menu="remap_save"{if key_up{menu="remap_reset";}else if key_down{menu="remap_key_up";}}/*Keyboards Controls Remapping Navigation END*/

/*Options Menu END*/
}
/*Menu Navigation END*/




/*Accept*/if key_a{
if menu="gameplay_settings" and menu_delay=0{menu="show_tutorial_signs";menu_delay=10;}
if menu="graphics_settings" and menu_delay=0{if os_type!=os_ios and os_type!=os_android{menu="fullscreen_mode";}else{menu="interpolate";}menu_delay=10;}
if menu="audio_settings" and menu_delay=0{menu="music_volume";menu_delay=10;}
if menu="input_settings" and menu_delay=0{image_alpha=0;menu="remap_select_player";menu_delay=10;}
if menu="settings_back" and menu_delay=0{image_alpha=0;menu="options";menu_delay=10;}

if menu="show_tutorial_signs" and menu_delay=0{if global.show_tutorial_signs=true{global.show_tutorial_signs=false;}else{global.show_tutorial_signs=true;}menu_delay=10;}
if menu="players_can_collide" and menu_delay=0{if global.players_can_collide=true{global.players_can_collide=false;}else{global.players_can_collide=true;}menu_delay=10;}
if menu="assist_settings" and menu_delay=0{menu="assist_item_appear";menu_delay=10;}
if menu="convention_mode" and menu_delay=0{if global.convention_mode=true{global.convention_mode=false;}else{global.convention_mode=true;}menu_delay=10;}

if menu="assist_back" and menu_delay=0{menu="assist_settings";menu_delay=10;}

if menu="fullscreen_mode" and menu_delay=0{if window_get_fullscreen(){window_set_fullscreen(false);}else{window_set_fullscreen(true);}menu_delay=10;}
if menu="interpolate" and menu_delay=0{if global.interpolate=true{global.interpolate=false;texture_set_interpolation(false);}else{global.interpolate=true;texture_set_interpolation(true);}menu_delay=10;}
if menu="show_fps" and menu_delay=0{if global.show_fps=true{global.show_fps=false;}else{global.show_fps=true;effect_create_above(ef_ring,view_xview,view_yview,2,c_menu_outline);}menu_delay=10;}
if menu="background_layers" and menu_delay=0{menu="enable_background_layer1";menu_delay=10;}
if menu="enable_transitions" and menu_delay=0{if global.enable_transitions=true{global.enable_transitions=false;}else{global.enable_transitions=true;}menu_delay=10;}

if menu="enable_background_layer1"and menu_delay=0{if global.enable_background_layer1=true{global.enable_background_layer1=false;}else{global.enable_background_layer1=true;}menu_delay=10;}
if menu="enable_background_layer2"and menu_delay=0{if global.enable_background_layer2=true{global.enable_background_layer2=false;}else{global.enable_background_layer2=true;}menu_delay=10;}
if menu="enable_background_layer3"and menu_delay=0{if global.enable_background_layer3=true{global.enable_background_layer3=false;}else{global.enable_background_layer3=true;}menu_delay=10;}
if menu="enable_background_layer4"and menu_delay=0{if global.enable_background_layer4=true{global.enable_background_layer4=false;}else{global.enable_background_layer4=true;}menu_delay=10;}
if menu="enable_foreground_layer1"and menu_delay=0{if global.enable_foreground_layer1=true{global.enable_foreground_layer1=false;}else{global.enable_foreground_layer1=true;}menu_delay=10;}
if menu="enable_foreground_layer2"and menu_delay=0{if global.enable_foreground_layer2=true{global.enable_foreground_layer2=false;}else{global.enable_foreground_layer2=true;}menu_delay=10;}
if menu="enable_background_back"and menu_delay=0{menu="background_layers";menu_delay=10;}

if menu="keyboard_controls_remapping" and menu_delay=0{image_alpha=0;menu="remap_save";menu_delay=10;}
if menu="up_key_is_jump_key" and menu_delay=0{
if remapping_player=1{if global.player1_up_key_is_jump_key=true{global.player1_up_key_is_jump_key=false;}else{global.player1_up_key_is_jump_key=true;}menu_delay=10;}
else if remapping_player=2{if global.player2_up_key_is_jump_key=true{global.player2_up_key_is_jump_key=false;}else{global.player2_up_key_is_jump_key=true;}menu_delay=10;}
else if remapping_player=3{if global.player3_up_key_is_jump_key=true{global.player3_up_key_is_jump_key=false;}else{global.player3_up_key_is_jump_key=true;}menu_delay=10;}
else if remapping_player=4{if global.player4_up_key_is_jump_key=true{global.player4_up_key_is_jump_key=false;}else{global.player4_up_key_is_jump_key=true;}menu_delay=10;}}

if menu="double_tap_to_run" and menu_delay=0{
if remapping_player=1{if global.player1_double_tap_to_run=true{global.player1_double_tap_to_run=false;}else{global.player1_double_tap_to_run=true;}menu_delay=10;}
else if remapping_player=2{if global.player2_double_tap_to_run=true{global.player2_double_tap_to_run=false;}else{global.player2_double_tap_to_run=true;}menu_delay=10;}
else if remapping_player=3{if global.player3_double_tap_to_run=true{global.player3_double_tap_to_run=false;}else{global.player3_double_tap_to_run=true;}menu_delay=10;}
else if remapping_player=4{if global.player4_double_tap_to_run=true{global.player4_double_tap_to_run=false;}else{global.player4_double_tap_to_run=true;}menu_delay=10;}}

if menu="hold_direction_walljump" and menu_delay=0{
if remapping_player=1{if global.player1_hold_direction_walljump=true{global.player1_hold_direction_walljump=false;}else{global.player1_hold_direction_walljump=true;}menu_delay=10;}
else if remapping_player=2{if global.player2_hold_direction_walljump=true{global.player2_hold_direction_walljump=false;}else{global.player2_hold_direction_walljump=true;}menu_delay=10;}
else if remapping_player=3{if global.player3_hold_direction_walljump=true{global.player3_hold_direction_walljump=false;}else{global.player3_hold_direction_walljump=true;}menu_delay=10;}
else if remapping_player=4{if global.player4_hold_direction_walljump=true{global.player4_hold_direction_walljump=false;}else{global.player4_hold_direction_walljump=true;}menu_delay=10;}}
//if menu="show_controls" and menu_delay=0{
//if remapping_player=1{if global.player1_show_controls=true{global.player1_show_controls=false;}else{global.player1_show_controls=true;}menu_delay=10;}
//else if remapping_player=2{if global.player2_show_controls=true{global.player2_show_controls=false;}else{global.player2_show_controls=true;}menu_delay=10;}
//else if remapping_player=3{if global.player3_show_controls=true{global.player3_show_controls=false;}else{global.player3_show_controls=true;}menu_delay=10;}
//else if remapping_player=4{if global.player4_show_controls=true{global.player4_show_controls=false;}else{global.player4_show_controls=true;}menu_delay=10;}}

}

/*Back*/else if key_b_pressed
{if menu="gameplay_settings" and menu_delay=0{menu="options";menu_delay=10;}
if menu="graphics_settings" and menu_delay=0{menu="options";menu_delay=10;}
if menu="audio_settings" and menu_delay=0{menu="options";menu_delay=10;}
if menu="input_settings" and menu_delay=0{menu="options";menu_delay=10;}
if menu="settings_back" and menu_delay=0{menu="options";menu_delay=10;}

if menu="show_tutorial_signs" and menu_delay=0{if global.convention_mode=true{if room=room_pause{menu="options"}else{menu="file1";}}else{menu="gameplay_settings";}menu_delay=10;}
if menu="hud_hide_time" and menu_delay=0{if global.convention_mode=true{if room=room_pause{menu="options"}else{menu="file1";}}else{menu="gameplay_settings";}menu_delay=10;}
if menu="players_can_collide" and menu_delay=0{if global.convention_mode=true{if room=room_pause{menu="options"}else{menu="file1";}}else{menu="gameplay_settings";}menu_delay=10;}
if menu="assist_settings" and menu_delay=0{if global.convention_mode=true{if room=room_pause{menu="options"}else{menu="file1";}}else{menu="gameplay_settings";}menu_delay=10;}
if menu="convention_mode" and menu_delay=0{if global.convention_mode=true{if room=room_pause{menu="options"}else{menu="file1";}}else{menu="gameplay_settings";}menu_delay=10;}

if menu="assist_item_appear" and menu_delay=0{menu="assist_settings";menu_delay=10;}
if menu="assist_default_hp" and menu_delay=0{menu="assist_settings";menu_delay=10;}
if menu="assist_guiding_arrows" and menu_delay=0{menu="assist_settings";menu_delay=10;}
if menu="assist_back" and menu_delay=0{menu="assist_settings";menu_delay=10;}

if menu="fullscreen_mode" and menu_delay=0{menu="graphics_settings";menu_delay=10;}
if menu="interpolate" and menu_delay=0{menu="graphics_settings";menu_delay=10;}
if menu="show_fps" and menu_delay=0{menu="graphics_settings";menu_delay=10;}
if menu="background_brightness" and menu_delay=0{menu="graphics_settings";menu_delay=10;}
if menu="background_layers" and menu_delay=0{menu="graphics_settings";menu_delay=10;}
if menu="enable_transitions" and menu_delay=0{menu="graphics_settings";menu_delay=10;}

if menu="enable_background_layer1"and menu_delay=0{menu="background_layers";menu_delay=10;}
if menu="enable_background_layer2"and menu_delay=0{menu="background_layers";menu_delay=10;}
if menu="enable_background_layer3"and menu_delay=0{menu="background_layers";menu_delay=10;}
if menu="enable_background_layer4"and menu_delay=0{menu="background_layers";menu_delay=10;}
if menu="enable_foreground_layer1"and menu_delay=0{menu="background_layers";menu_delay=10;}
if menu="enable_foreground_layer2"and menu_delay=0{menu="background_layers";menu_delay=10;}
if menu="enable_background_back"and menu_delay=0{menu="background_layers";menu_delay=10;}

if menu="music_volume" and menu_delay=0{menu="audio_settings";menu_delay=10;}
if menu="sfx_volume" and menu_delay=0{menu="audio_settings";menu_delay=10;}
if menu="voices_volume" and menu_delay=0{menu="audio_settings";menu_delay=10;}
if menu="select_narrator" and menu_delay=0{menu="audio_settings";menu_delay=10;}

if menu="remap_select_player" and menu_delay=0{menu="input_settings";menu_delay=10;}
if menu="keyboard_controls_remapping" and menu_delay=0{menu="input_settings";menu_delay=10;}
if menu="up_key_is_jump_key" and menu_delay=0{menu="input_settings";menu_delay=10;}
if menu="double_tap_to_run" and menu_delay=0{menu="input_settings";menu_delay=10;}
if menu="hold_direction_walljump" and menu_delay=0{menu="input_settings";menu_delay=10;}
if menu="drop_from_horizontral_rope" and menu_delay=0{menu="input_settings";menu_delay=10;}
if menu="show_controls" and menu_delay=0{menu="input_settings";menu_delay=10;}
}

///Remap Keys
if menu="remap_key_up" or menu="remap_key_down" or menu="remap_key_left"or menu="remap_key_right"or menu="remap_key_dash"or menu="remap_key_jump"or menu="remap_reset"or menu="remap_save"{

/*Show what key is used*/
if remapping_player=1{
draw_sprite(spr_keyboard_keys,global.player1_key_up,view_xview+view_wview/2+320,view_yview+view_hview/2-224);
draw_sprite(spr_keyboard_keys,global.player1_key_down,view_xview+view_wview/2+320,view_yview+view_hview/2-160);
draw_sprite(spr_keyboard_keys,global.player1_key_left,view_xview+view_wview/2+320,view_yview+view_hview/2-96);
draw_sprite(spr_keyboard_keys,global.player1_key_right,view_xview+view_wview/2+320,view_yview+view_hview/2-32);
draw_sprite(spr_keyboard_keys,global.player1_key_dash,view_xview+view_wview/2+320,view_yview+view_hview/2+32);
draw_sprite(spr_keyboard_keys,global.player1_key_jump,view_xview+view_wview/2+320,view_yview+view_hview/2+96);}
else if remapping_player=2{
draw_sprite(spr_keyboard_keys,global.player2_key_up,view_xview+view_wview/2+320,view_yview+view_hview/2-224);
draw_sprite(spr_keyboard_keys,global.player2_key_down,view_xview+view_wview/2+320,view_yview+view_hview/2-160);
draw_sprite(spr_keyboard_keys,global.player2_key_left,view_xview+view_wview/2+320,view_yview+view_hview/2-96);
draw_sprite(spr_keyboard_keys,global.player2_key_right,view_xview+view_wview/2+320,view_yview+view_hview/2-32);
draw_sprite(spr_keyboard_keys,global.player2_key_dash,view_xview+view_wview/2+320,view_yview+view_hview/2+32);
draw_sprite(spr_keyboard_keys,global.player2_key_jump,view_xview+view_wview/2+320,view_yview+view_hview/2+96);}
else if remapping_player=3{
draw_sprite(spr_keyboard_keys,global.player3_key_up,view_xview+view_wview/2+320,view_yview+view_hview/2-224);
draw_sprite(spr_keyboard_keys,global.player3_key_down,view_xview+view_wview/2+320,view_yview+view_hview/2-160);
draw_sprite(spr_keyboard_keys,global.player3_key_left,view_xview+view_wview/2+320,view_yview+view_hview/2-96);
draw_sprite(spr_keyboard_keys,global.player3_key_right,view_xview+view_wview/2+320,view_yview+view_hview/2-32);
draw_sprite(spr_keyboard_keys,global.player3_key_dash,view_xview+view_wview/2+320,view_yview+view_hview/2+32);
draw_sprite(spr_keyboard_keys,global.player3_key_jump,view_xview+view_wview/2+320,view_yview+view_hview/2+96);}
else if remapping_player=4{
draw_sprite(spr_keyboard_keys,global.player4_key_up,view_xview+view_wview/2+320,view_yview+view_hview/2-224);
draw_sprite(spr_keyboard_keys,global.player4_key_down,view_xview+view_wview/2+320,view_yview+view_hview/2-160);
draw_sprite(spr_keyboard_keys,global.player4_key_left,view_xview+view_wview/2+320,view_yview+view_hview/2-96);
draw_sprite(spr_keyboard_keys,global.player4_key_right,view_xview+view_wview/2+320,view_yview+view_hview/2-32);
draw_sprite(spr_keyboard_keys,global.player4_key_dash,view_xview+view_wview/2+320,view_yview+view_hview/2+32);
draw_sprite(spr_keyboard_keys,global.player4_key_jump,view_xview+view_wview/2+320,view_yview+view_hview/2+96);}/*Show what key is used End*/

if input_key=true{
draw_text_transformed_colour(view_xview+view_wview/2-2,view_yview+64,"INPUT KEY NOW",global.default_text_size,global.default_text_size,0,c_menu_outline,c_menu_outline,c_menu_outline,c_menu_outline,1);
draw_text_transformed_colour(view_xview+view_wview/2+2,view_yview+64,"INPUT KEY NOW",global.default_text_size,global.default_text_size,0,c_menu_outline,c_menu_outline,c_menu_outline,c_menu_outline,1);
draw_text_transformed_colour(view_xview+view_wview/2,view_yview+64-2,"INPUT KEY NOW",global.default_text_size,global.default_text_size,0,c_menu_outline,c_menu_outline,c_menu_outline,c_menu_outline,1);
draw_text_transformed_colour(view_xview+view_wview/2,view_yview+64+2,"INPUT KEY NOW",global.default_text_size,global.default_text_size,0,c_menu_outline,c_menu_outline,c_menu_outline,c_menu_outline,1);
draw_text_transformed_colour(view_xview+view_wview/2,view_yview+64,"INPUT KEY NOW",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}
else{draw_text_transformed_colour(view_xview+view_wview/2-2,view_yview+64,"Player "+string(remapping_player)+" is selected.#You can play multiplayer on just a single keyboard if you remapp the keyboard controls for the other players",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2+2,view_yview+64,"Player "+string(remapping_player)+" is selected.#You can play multiplayer on just a single keyboard if you remapp the keyboard controls for the other players",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2,view_yview+64-2,"Player "+string(remapping_player)+" is selected.#You can play multiplayer on just a single keyboard if you remapp the keyboard controls for the other players",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2,view_yview+64+2,"Player "+string(remapping_player)+" is selected.#You can play multiplayer on just a single keyboard if you remapp the keyboard controls for the other players",global.default_text_size,global.default_text_size,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_colour(view_xview+view_wview/2,view_yview+64,"Player "+string(remapping_player)+" is selected.#You can play multiplayer on just a single keyboard if you remapp the keyboard controls for the other players",global.default_text_size,global.default_text_size,0,c_white,c_white,c_white,c_white,1);}


//if global.player1_key_up=global.player1_key_up or global.player1_key_up=global.player1_key_down or global.player1_key_up=global.player1_key_left or global.player1_key_up=global.player1_key_right or global.player1_key_up=global.player1_key_jump or global.player1_key_up=global.player1_key_dash

/*Remap Key Up*/if menu="remap_key_up"{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2-224,"> Key Up <",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);
if input_key=true/*and menu_delay=0*/and can_remap_key=false{menu_delay=10;scr_keyboardremapping();}
else if key_a and menu_delay=0{menu_delay=10;input_key=true;}
}else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2-224,"Key Up",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}/*Remap Key Up End*/

/*Remap Key Down*/if menu="remap_key_down"{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2-160,"> Key Down <",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);
if input_key=true/*and menu_delay=0*/and can_remap_key=false{menu_delay=10;scr_keyboardremapping();}
else if key_a and menu_delay=0{menu_delay=10;input_key=true;}
}else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2-160,"Key Down",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}/*Remap Key Down End*/

/*Remap Key Left*/if menu="remap_key_left"{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2-96,"> Key Left <",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);
if input_key=true/*and menu_delay=0*/and can_remap_key=false{menu_delay=10;scr_keyboardremapping();}
else if key_a and menu_delay=0{menu_delay=10;input_key=true;}
}else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2-96,"Key Left",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}/*Remap Key Left End*/

/*Remap Key Right*/if menu="remap_key_right"{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2-32,"> Key Right <",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);
if input_key=true/*and menu_delay=0*/and can_remap_key=false{menu_delay=10;scr_keyboardremapping();}
else if key_a and menu_delay=0{menu_delay=10;input_key=true;}
}else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2-32,"Key Right",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}/*Remap Key Right End*/

/*Remap Key Dash*/if menu="remap_key_dash"{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+32,"> Key Pounce <",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);
if input_key=true/*and menu_delay=0*/and can_remap_key=false{menu_delay=10;scr_keyboardremapping();}
else if key_a and menu_delay=0{menu_delay=10;input_key=true;}
}else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+32,"Key Pounce",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}/*Remap Key Dash End*/

/*Remap Key Jump*/if menu="remap_key_jump"{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+96,"> Key Jump <",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);
if input_key=true/*and menu_delay=0*/and can_remap_key=false{menu_delay=10;scr_keyboardremapping();}
else if key_a and menu_delay=0{menu_delay=10;input_key=true;}
}else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+96,"Key Jump",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}/*Remap Key Jump End*/

/*Reset*/if menu="remap_reset"{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+160,"> Reset <",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);
if key_a and menu_delay=0{
if remapping_player=1{/*Reset Player 1 Keyboard Remapping*/image_speed=0;global.player1_key_up=vk_up;global.player1_key_down=vk_down;global.player1_key_left=vk_left;global.player1_key_right=vk_right;global.player1_key_dash=ord("X");global.player1_key_jump=ord("Z");}
else if remapping_player=2{/*Reset Player 2 Keyboard Remapping*/image_speed=0;global.player2_key_up=noone;global.player2_key_down=noone;global.player2_key_left=noone;global.player2_key_right=noone;global.player2_key_dash=noone;global.player2_key_jump=noone;}
else if remapping_player=3{/*Reset Player 3 Keyboard Remapping*/image_speed=0;global.player3_key_up=noone;global.player3_key_down=noone;global.player3_key_left=noone;global.player3_key_right=noone;global.player3_key_dash=noone;global.player3_key_jump=noone;}
else if remapping_player=4{/*Reset Player 4 Keyboard Remapping*/image_speed=0;global.player4_key_up=noone;global.player4_key_down=noone;global.player4_key_left=noone;global.player4_key_right=noone;global.player4_key_dash=noone;global.player4_key_jump=noone;}
menu_delay=10;}
}else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+160,"Reset",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}/*Remap Key Reset End*/

/*Save*/if menu="remap_save"{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+224,"> Save <",global.default_text_size*1.3,global.default_text_size*1.3,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);
if key_a and menu_delay=0{menu="keyboard_controls_remapping";menu_delay=10;}
}else{draw_text_transformed_colour(view_xview+view_wview/2,view_yview+view_hview/2+224,"Save",global.default_text_size,global.default_text_size,0,c_menu_fill,c_menu_fill,c_menu_fill,c_menu_fill,1);}/*Remap Key Save End*/

/*Menu Go Back*/
if key_b_pressed and menu_delay=0 and input_key=false{image_alpha=0;menu="keyboard_controls_remapping";menu_delay=10;}/*Menu Go Back End*/
}/*__________Select Player Remap End__________*/

if menu_delay>0{menu_delay-=1;}if menu_delay<0{menu_delay=0;}

/*If player object is present, destroy the player object*/if instance_number(obj_player)>0{with(obj_player){instance_destroy()}}

/*Menu navigation with joystick*/
if(gamepad_axis_value(0,gp_axislv)<0)or(gamepad_axis_value(0,gp_axislv)>0)or(gamepad_axis_value(0,gp_axislh)<0)or(gamepad_axis_value(0,gp_axislh)>0)
or(gamepad_axis_value(1,gp_axislv)<0)or(gamepad_axis_value(1,gp_axislv)>0)or(gamepad_axis_value(1,gp_axislh)<0)or(gamepad_axis_value(1,gp_axislh)>0)
or(gamepad_axis_value(2,gp_axislv)<0)or(gamepad_axis_value(2,gp_axislv)>0)or(gamepad_axis_value(2,gp_axislh)<0)or(gamepad_axis_value(2,gp_axislh)>0)
or(gamepad_axis_value(3,gp_axislv)<0)or(gamepad_axis_value(3,gp_axislv)>0)or(gamepad_axis_value(3,gp_axislh)<0)or(gamepad_axis_value(3,gp_axislh)>0){if menu_joystick_delay=0{menu_joystick_delay=15;}}
if(gamepad_axis_value(0,gp_axislv)=0)and(gamepad_axis_value(0,gp_axislh)=0)
and(gamepad_axis_value(1,gp_axislv)=0)and(gamepad_axis_value(1,gp_axislh)=0)
and(gamepad_axis_value(2,gp_axislv)=0)and(gamepad_axis_value(2,gp_axislh)=0)
and(gamepad_axis_value(3,gp_axislv)=0)and(gamepad_axis_value(3,gp_axislh)=0){menu_joystick_delay=0;}
if menu_joystick_delay>0{menu_joystick_delay-=1;}/*Menu navigation with joystick END*/
