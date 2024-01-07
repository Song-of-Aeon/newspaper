function theo_column(){
array_push(global.paper.columns, new column("Theo", [
"It's really relaxing! As an artist, I get a solid checklist of things to do that I can work towards throughout the jam. I actually joined a day late to help out another team, as I wasn't planning on participating this time... but the FOMO was real. I really love being able to show off my WIPs and draw my favorite characters, so I think it's my favorite role overall. I've worked as a programmer/UI artist before, and I find that to be the most stressful by far. I get so worried about letting down the other people in my team, either by running out of time or not giving the artists/musicians a project they'd be proud to show their work on. As an artist, though, it's just so exciting to see my work be brought to life regardless of exactly how, so I think programming is just prone to making someone very critical of their own work lol.",
"They did!! It's a Flappy Bird x Danmaku game. You control Sagume through a sidescrolling level with both pillars and bullets as your enemy, and fight both Aya and Tokiko! I've played the rough mockup and it's really coming together so far. I love seeing danmaku brought to other game types.",
"Gosh I adore birds. I follow like 5 different accounts on social media that just post birds! I love pigeons. I'm really lucky since they're everywhere here, but I hope some day we can bring them back as messengers and... (tenderly) friends. Plus they're all so pretty!",
"The perfect question: a tumbler pigeon. Mostly because I'm bad at both flappy bird and danmaku, but they're super goofy fliers who twirl around in the air. That's how I play it!",
"I'm an artist, writer, programmer, video editor, and all-around stuff-doer in my day-to-day as a freelancer. I normally work on visual novels, and I love being able to join Touhou Game Jam to celebrate my favorite series whenever I get the opportunity. Sakuya Izayoi is my favorite character and to this day despite playing danmaku since I was 12 I still can't 1CC any game besides PCB!",
], [
"I've heard that you're working as an artist for this jam. What's that like, and have you ever worked in other roles?",
"So another team helped lure you into the jam as well as your own desires! What's this game the team you're on is making?",
"The Flappy Bird concept spawned from the bird theme, I'm guessing. Would you consider yourself a fan of birds? Do you have any favorite birds?",
"If you had to describe your game as a species of bird, which would it be?",
"Nice. Lastly, can you tell the readers a bit more about yourself?",
]));

array_push(global.paper.columns, new column("Theo (cont.)", [
"Thank you for the interview, it was super fun!"
], [
"Thank you for your time! I look forwared to seeing your flappy birds.",
]));

if not (array_contains(global.unlocks, "theo")) array_push(global.unlocks, "theo");
}