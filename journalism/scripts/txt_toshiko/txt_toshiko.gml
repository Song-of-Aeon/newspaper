function txt_toshiko() {
	
	msg = msglang([
	
	txt("hi im toshiko (read this like \"hi im daisy\")", TOSHIKO.NEUTRAL, SPRITEPOS.LEFT),
	txt(""),
	txt(""),
	
	],[
	
	txt(""),
	
	]);
	
	endevent = function() {
		if !c_minigamecheck() c_makemenu(global.menus.main);
	};
}

function c_minigamecheck() {
	//worst function youve ever seen, i dont care, its a jam game
	var did = false;
	if !global.didsleep && global.timeremaining <= 72-12 {
		room_goto(lightsout);
		global.didsleep++;
		did = true;
	} else if global.didsleep < 2 && global.timeremaining <= 72-36 {
		room_goto(lightsout);
		global.didsleep++;
		did = true;
	} else if global.didsleep < 3 && global.timeremaining <= 72-60 {
		room_goto(lightsout);
		global.didsleep++;
		did = true;
	} else if !global.didramen && global.timeremaining <= 72-7 {
		room_goto(RAMENZONE);
		global.didramen++;
		did = true;
	} else if global.didramen < 2 && global.timeremaining <= 72-24 {
		room_goto(RAMENZONE);
		global.didramen++;
		did = true;
	} else if global.didramen < 3 && global.timeremaining <= 72-31 {
		room_goto(RAMENZONE);
		global.didramen++;
		did = true;
	} else if global.didramen < 4 && global.timeremaining <= 72-48 {
		room_goto(RAMENZONE);
		global.didramen++;
		did = true;
	} else if global.didramen < 5 && global.timeremaining <= 72-55 {
		room_goto(RAMENZONE);
		global.didramen++;
		did = true;
	}
	return did;
}

global.didramen = 0;
global.didsleep = 0;
global.teammates = 0;