{
	var complete = true
	
	for (var i=0; i<global.lightsout_size; ++i)
	{
		if (global.lightsout_container[i].state == false)
		{
			complete = false
		}
	}
	draw_self()
	
	if (complete == true)
	{
		draw_set_color(c_white)
		draw_set_halign(fa_left)
		draw_set_valign(fa_middle)
		draw_text(x, y + 50, "Complete!!!")
	}
}
