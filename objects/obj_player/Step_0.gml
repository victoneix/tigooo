moving();
show_debug_message(coyote_time);


if(keyboard_check_pressed(ord("S"))){
    screen_save("screenshot" + string(num++) + ".png");
}