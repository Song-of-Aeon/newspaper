function rad_column(){
array_push(global.paper.columns, new column("The Red Remix", [
"I'm much more of a programmer but if push comes to shove I can do a bit of art (although it's not that great).",
"I've been developing small games for myself in gamemaker for almost 3 years now but have never publicly realised them, I decided to participate in this jam because i hadn't made a game for several months and wanted to get back into the hobby.",
"The most difficult part of the game development process is definitely the bug fixing. I mostly work alone so I've never really developed a knack for creating developer comments, so when it comes round to bug fixing I have a hard time figuring out what does what.",
"I would consider myself a fan of birds but in a 'likes but doesn't know too much about them' way. My favourite bird is whichever is flying overhead when I look up as that's the bird which is bringing joy to me at that moment.",
"My game is Orange Becomes Bird. It's about Orange trying to fly like a bird. The birds which appear are, Sagume, Aya and Orange.",
"Orange Becomes Bird would best be described as a penguin due to the struggles Orange has to go through to achieve flight."
],
[
"What is your specialty when it comes to development? Are you a programmer? Do you focus on the presentation such as music or artwork? Or are you a renaissance man and just do a bit of everything?",
"Tell us a bit about yourself. Feel free to overshare to your heart's content.",
"What's the most difficult part of the game development process for you?",
"Would you consider yourself a fan of birds? What is your favorite, if you have any?",
"What is your game? What will it be like? What birds will the birders be able to expect?!",
"If you had to describe your game as a species of bird, which would it be?"
]));

if not (array_contains(global.unlocks, "rad")) array_push(global.unlocks, "rad");
}