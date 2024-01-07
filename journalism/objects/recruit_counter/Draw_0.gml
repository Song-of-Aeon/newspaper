{
	if (global.recruittimeremaining <= 0)
	{
		draw_text_transformed(x,y,"You don't have time to recruit teammates anymore.",2,2,0)
	} else
	{
		draw_text_transformed(x,y,"You have " + string(global.recruittimeremaining) + " out of 4 hours to recruit teammates.",2,2,0)
	}
}