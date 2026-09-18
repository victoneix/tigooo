moving();

if(keyboard_check_pressed(vk_f1)){
	var _dt = date_current_datetime();
	var _yea = string(date_get_year(_dt));
	var _mon = string_replace_all(string_format(date_get_month(_dt),2,0)," ","0");
	var _day = string_replace_all(string_format(date_get_day(_dt),2,0)," ","0");
	var _hou = string_replace_all(string_format(date_get_hour(_dt),2,0)," ","0");
	var _min = string_replace_all(string_format(date_get_minute(_dt),2,0)," ","0");
	var _sec = string_replace_all(string_format(date_get_second(_dt),2,0)," ","0");
	var _date = _yea + "-" + _mon + "-" + _day + "-" + _hou + "." + _min + "." + _sec;
	screen_save("screenshots/" + _date + ".png");
}
