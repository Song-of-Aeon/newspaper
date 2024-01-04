themenu.draw();
draw_meaning(10, 10, "time remaining: " + string(global.timeremaining) + " hours");
iterate themenu.buttons to {
	//log("bingo");
	themenu.buttons[i].draw();
}