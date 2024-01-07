{
	draw_self()
	draw_set_color(c_white)
	if (global.timeremaining >= 60)
	{
		var time_to_sleep = global.timeremaining - 60
	}
	else if (global.timeremaining >= 36)
	{
		var time_to_sleep = global.timeremaining - 36
	}
	else if (global.timeremaining >= 12)
	{
		var time_to_sleep = global.timeremaining - 12
	}
	else
	{
		var time_to_sleep = 0
	}
	
	draw_text_transformed(x,y,"Sleep happens in " + string(time_to_sleep) + " hours",2,2,0)
	if (global.timeremaining < 12)
	{
		instance_destroy()
	}
}