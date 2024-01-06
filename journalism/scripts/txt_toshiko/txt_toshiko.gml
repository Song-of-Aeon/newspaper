function txt_toshiko() {
	
	msg = msglang([
	
	txt("hi im toshiko (read this like \"hi im daisy\")", TOSHIKO.NEUTRAL, SPRITEPOS.CENTER),
	txt(""),
	txt(""),
	
	],[
	
	txt(""),
	
	]);
	
	endevent = function() {
		c_makemenu(global.menus.main);
	};
}