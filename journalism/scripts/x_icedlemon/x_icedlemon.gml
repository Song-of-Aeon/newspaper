function icedlemon_column(){
array_push(global.paper.columns, new column("IcedLemon", [
"Iced_Lemon is what I am called on the internet",
"I mainly do art and programming as my passion. I do also like video games, but I actually prefer rougelikes games like risk of rain and star of providence. Speaking of games, I know a lot of games they no one had heard of that you can ask me for :) (also go play star of providence, it's an incredible gem of a rougelike)",
"Like usual, I am the main programmer and designer of the project. But since I am a team leader I am also the guy that holds the steering wheels and cover up any member in need on the way. As for what I am doing, I kinda want to  make this a surprise, but let's just say I am up to my usual 'remix gameplay that no one would expect and somehow made it work.'",
"Management, level design and game balancing. I think it's more on personality, but I am one person who prefers to just deeply focus on one challenging thing at a time. and these 3 by nature will require you to look at 5 windows in a minute and it's also repetetive.",
"you play as birb avoiding others birbs from giving you a beatdown.",
"I don't have any particular strong opinions about them tbh, but owls are cool.",
"Crow. You'll eventually know why.",
], ["What is your name?",
"Can you tell the readers a bit about yourself? Feel free to say as much as you want.",
"It sounds like you've taken on a lot of roles when making games. What's your role during this game jam and what have you been doing for it?",
"You've taken a lot of roles, so you have a unqiue perspective on this: What do you think the most difficult part of game development is?",
"You mentioned wanting to keep your game a bit of a surprise, but can you tell us a bit about how birds are involved?",
"I see. Birb v Birb. Are you personally a fan of birds? Do you have any favorite birds?",
"Alright. If you had to describe your game as a species of bird, what bird would it be, and why?",
]));
if not (array_contains(global.unlocks, "icedlemon")) array_push(global.unlocks, "icedlemon");
}