
function column(contributor_, answers_, questions_=global.questions) constructor {
	contributor = contributor_;
	answers = answers_;
	questions = questions_;
}

global.unlocks = [];
global.questions = [
"What is your specialty when it comes to development? Are you a programmer? Do you focus on the presentation such as music or artwork? Or are you a renaissance man and just do a bit of everything?",
"Tell us a bit about yourself. Feel free to overshare to your heart's content.",
"What's the most difficult part of the game development process for you?",
"Would you consider yourself a fan of birds? What is your favorite, if you have any?",
"What is your game? What will it be like? What birds will the birders be able to expect?!",
"If you had to describe your game as a species of bird, which would it be?"
];

/*
array_push(global.paper.columns, new column("aeon", ["aeon", "make video gaem", "31.33 px/fr"]));
array_push(global.paper.columns, new column("aya shameimaru", ["aya!", "the truth, the whole truth, and nothing but the truth!", "you wanna see?"]));
array_push(global.paper.columns, new column("tsubakura enraku", ["what?", "booze.", "please go away."]));
array_push(global.paper.columns, new column("the venerable mr. ipsum", [
	"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vehicula dui sit amet nibh suscipit vehicula. Phasellus elit velit, venenatis in molestie sed, lobortis rhoncus sem.",
	"Morbi facilisis lacus vitae lorem sagittis euismod. Etiam pretium, metus vel ultrices aliquam, tortor erat auctor augue, vel laoreet orci arcu accumsan enim. Nulla tortor elit, maximus efficitur arcu quis, tristique tristique tortor.",
	"Etiam eleifend egestas nisi, ut maximus arcu mollis a. Duis porttitor, metus sit amet varius posuere, metus neque gravida purus, eu luctus ex nisi laoreet erat. Pellentesque vel tristique ante, vel aliquam massa.",
	"Vivamus ac ex in odio consectetur efficitur. Vivamus in cursus mi, lacinia tincidunt est. Nullam nec dignissim sapien. Sed non semper tortor. Praesent quis dui fringilla, blandit nibh eget, mollis enim."
], ["what is your name?", "sorry, what was that?", "um, but about game development...?", "help"]));
*/

function c_drawpaper(page=0) {
	draw_sprite_stretched(s_newspaper, 0, 0, 0, 1920, 1080);
	
	//var headlinepos = new textthing(10, 40, fa_left, fa_top, 4, ft_sans);
	//var authorpos = new textthing(10, 90, fa_left, fa_top, 1, ft_sans);
	//var brandpos = new textthing(WIDTH/2, 20, fa_center, fa_top, 1, ft_sans);
	var margin = 40;
	var xdraw = 121+margin;
	var ydraw = 74+margin;
	var amount = ceil(array_length(global.paper.columns[page].answers)/2);
	//var width = (WIDTH-amount*margin-margin)/amount;
	var width = 835-margin*2;
	//var width = WIDTH-margin*2;
	//var height = HEIGHT-ydraw-margin;
	var height = 932-margin*2;
	var textdraw = margin;
	var bro, j, thing1;
	var linebreakin = 4;
	//iterate global.paper.columns to {
	draw_set_color(#3F2D1B);
	i = page;
		draw_set_font(ft_whatever);
		textdraw = margin;
		bro = global.paper.columns[i];
		draw_rectangle(xdraw, ydraw, xdraw+width, ydraw+height, true);
		textdraw += draw_meaning(xdraw+margin, ydraw+textdraw, lb_auto("Interviewee:", width-margin*2, "\n"))+linebreakin;
		textdraw += draw_meaning(xdraw+margin, ydraw+textdraw, lb_auto(bro.contributor, width-margin*2, "\n"))+linebreakin;
		textdraw += linebreakin*4;
		for (j=0; j<array_length(bro.answers); j++) {
			
			thing1 = lb_auto(bro.questions[j], width-margin*2, "\n");
			textdraw += string_height(thing1)+linebreakin;
			thing1 = lb_auto(bro.answers[j], width-margin*2, "\n")
			textdraw += string_height(thing1)+linebreakin;
			textdraw += linebreakin*4;
			
			
			if textdraw >= height {
				xdraw += width+margin;
				draw_rectangle(xdraw, ydraw, xdraw+width, ydraw+height, true);
			}
			textdraw = 0;
			
			
			thing1 = lb_auto(bro.questions[j], width-margin*2, "\n");
			draw_meaning(xdraw+margin, ydraw+textdraw, thing1);
			draw_meaning(xdraw+margin+1, ydraw+textdraw, thing1);
			draw_meaning(xdraw+margin+2, ydraw+textdraw, thing1);
			textdraw += string_height(thing1)+linebreakin;
			draw_set_halign(fa_right);
			thing1 = lb_auto(bro.answers[j], width-margin*2, "\n")
			draw_meaning(xdraw+width-margin, ydraw+textdraw, thing1);
			textdraw += string_height(thing1)+linebreakin;
			draw_set_halign(fa_left);
			textdraw += linebreakin*4;
		}
		
	//}
}

/*function textthing(x, y, halign=fa_left, valign=fa_top, scale=1, font=ft_sans) constructor {
	draw = function(str) {
		draw_set_halign(halign);
		draw_set_valign(valign);
		draw_meaning(x, y, str, font, scale);
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
	}
}*/