{
	var winningCondition = [1, 2, 3, 4, 
							5, 6, 7, 8,
							9, 10, 11, 12,
							13, 14, 15, noone]
						
	var currentCondition = [noone, noone, noone, noone,
							noone, noone, noone, noone,
							noone, noone, noone, noone,
							noone, noone, noone, noone]
						
	var value = 0
	var complete = true
	for (var j=0; j<4; ++j)
	{
		for (var i=0; i<4; ++i)
		{
			var ins = collision_point(x + (i * sprite_get_width(tile_spr)),
									  y + (j * sprite_get_height(tile_spr)),
									  tile,
									  false,
									  false)
			if (ins != noone)
			{
				currentCondition[value] = ins.value
			}
			
			if (currentCondition[value] != winningCondition[value])
			{
				complete = false
			}
			++value
		}
	}
	
	draw_self()
	
	if (complete == true)
	{
		draw_set_color(c_white)
		draw_set_halign(fa_left)
		draw_set_valign(fa_middle)
		draw_text(x, y - 30, "Complete!!!")
	}
}