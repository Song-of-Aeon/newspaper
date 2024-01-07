{
	draw_self()
	draw_set_color(c_white)
	if (global.timeremaining >= 65)
	{
		var time_to_eat = global.timeremaining - 65
	}
	else if (global.timeremaining >= 48)
	{
		var time_to_eat = global.timeremaining - 48
	}
	else if (global.timeremaining >= 41)
	{
		var time_to_eat = global.timeremaining - 41
	}
	else if (global.timeremaining >= 24)
	{
		var time_to_eat = global.timeremaining - 24
	}
	else if (global.timeremaining >= 17)
	{
		var time_to_eat = global.timeremaining - 17
	}
	else
	{
		var time_to_eat = 0
	}
	
	draw_text_transformed(x,y,"Eat happens in " + string(time_to_eat) + " hours",2,2,0)
	if (global.timeremaining < 17)
	{
		instance_destroy()
	}
}