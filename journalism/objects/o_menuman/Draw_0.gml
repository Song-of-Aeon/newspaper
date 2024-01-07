themenu.draw();

iterate themenu.buttons to {
	//log("bingo");
	themenu.buttons[i].draw();
}
if (global.gameflag)
{
draw_meaning(10, 10, "time remaining: " + string(global.timeremaining) + " hours");
if (global.recruittimeremaining <= 0)
{
	draw_text_transformed(1200,10,"You've recruited all teammates you need!",0.75,0.75,0)
} else
{
	draw_text_transformed(1300,10,"You have " + string(global.recruittimeremaining) + " out of 4 teammates left",0.75,0.75,0);
	draw_text_transformed(1300,40,"to recruit.",0.75,0.75,0);
	draw_text_transformed(1300,70,"Must recruit all 4 in " + string(global.timeremaining - 17) + " hours", 0.75,0.75,0);
}
	var time_to_sleep = 12;
	if (global.timeremaining >= 60)
	{
		time_to_sleep = global.timeremaining - 60
	}
	else if (global.timeremaining >= 36)
	{
		time_to_sleep = global.timeremaining - 36
	}
	else if (global.timeremaining >= 12)
	{
		time_to_sleep = global.timeremaining - 12
	}
	else
	{
		time_to_sleep = 0
	}
	
	draw_text_transformed(1300,80,"Sleep happens in " + string(time_to_sleep) + " hours",0.75,0.75,0)
}