randomize();

global.gw = 1920;
global.gh = 1080;
global.ratio = global.gh/global.gw;
global.textguy = {};
global.fading = false;
global.volume = 100;
global.music = 100;
global.kunctions = {};
global.menus = {};
global.timeremaining = 72;
global.recruittimeremaining = 4;
global.paper = {
	name: "toshikos awesome newspaper",
	date: "jan 2024",
	author: "toshiko",
	brand: "iizunamaru post",
	columns: [],
}
global.questions = [
"What is your specialty when it comes to development? Are you a programmer? Do you focus on the presentation such as music or artwork? Or are you a renaissance man and just do a bit of everything?",
"What's the most difficult part of the game development process for you?",
"Tell us a bit about yourself. Feel free to overshare to your heart's content.",
"Would you consider yourself a fan of birds? What is your favorite, if you have any?",
"What is your game? What will it be like? What birds will the birders be able to expect?!",
"If you had to describe your game as a species of bird, which would it be?"
];
//global.gamesize = new vec2();
//window_set_size(global.gamesize.x, global.gamesize.y);

global.marineconstellation = font_add_sprite_ext(fts_marineconstellation,
	"!\"#$%&'()*+,-"+
	"./0123456789:"+
	";<=>?@ABCDEFG"+
	"HIJKLMNOPQRST"+
	"UVWXYZ[\\]^_`a"+
	"bcdefghijklmn"+
	"opqrstuvwxyz{"+
	"|}~ÁÉÍÓÚÄËÏÖÜ"+
	"áéíóúäüïöëÑñı"+
	"ẞßÆæ¡¿♫♪☯東方青赤"+
	"紫果世外♥¬ඞ⬠⬏†‡¦§"+
	"⑴⑵⑶⑷⑸⑹⑺⑻⑼⑽⑾⑿±"+ //f keys
	"０１２３４５６７８９☺☹�"+ //numpad
	"⓿❶❷❸❹❺❻❼❽❾❿��"+ //fez numbers
	"ＡＢＣＤＥＦＧＨＩＪＫＬＭ"+ //fez script
	"ＮＯＰＱＲＳＴＵＶＷＸＹＺ"+ //fez script
	"⓪①②③④⑤⑥⑦⑧⑨�⭠⭣"+ //balls
	"⭡⭢⮡⮽⮠⭰⭲⭱⭳⬚⮔　"+
	""+
	""+
	""+
	""+
	""+
	"", true, 1);
#macro ft_marineconstellation global.marineconstellation

globalvar ft_zpix;
ft_zpix = font_add("fonts/zpix.ttf",9,false,false,32,1111111);

enum DESTROYSHAPE {
	CIRCLE,	
	EVERYTHING,
	UP,
	DOWN,
	RANDOM,
	SPIRAL,
}

global.version = "ver. 0.7." + string(GM_build_date);
global.gameobjectvariables = [
	"speed", "direction", "xprevious", "yprevious", "image_index", "image_xscale", "image_yscale", "image_blend", "image_index"
];

global.gmtypes = [
	"number",
	"string",
	"bool",
	"int32",
	"int64",
	"ptr",
	"undefined",
	"array",
	"vec3",
	"vec4",
	"method",
	"struct",
	"ref",
	"null",
	"unknown"
];