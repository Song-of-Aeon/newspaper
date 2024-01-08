function kevin_column(){
array_push(global.paper.columns, new column("Kevin", [
"For development, I like to be a jack-of-all-trades project lead, which includes roles from concept art to, of course, the game programming. If there's one role that I've always delegated to someone else, though, it has to be music composing. That's just a skill that's so hard to reach for me, so it's nice to be able to have someone else take on that task while I do what I'm good at.",
"Uhhh, welllll... I'm Kevin, 20 years old, very handsome (real), and I'm a hobbyist artist and game developer looking to turn my passions into a side hustle that I can make money from. When I'm not making games, I'm drawing art of the characters I love and make, and gushing about awesome dudes in armour and helmets.",
"It's definitely the procrastination part of it. I often leave programming what should be the easier parts to the last minute... and end up doing a half-assed job of them... which kind of sucks. But well, at least I always get the core gameplay programming done, which is good????",
"Wellllll, I like birds, but not as enthusiastic about them as many others. I'd have to say the peacock and penguin are my favourite birds, because they're silly (laugh).",
"Well, our team's game, NIGHT RANGER MYSTIA, is an intense bullet hell game where you play as everyone's favourite sparrow Mystia and take down space invaders with not just your shots, but also the power of the Night Blade! The unique sword mechanic makes the game much more exciting to play than if you had good ol' reliable spellcards, in my opinion. I hope you will enjoy it."
],
[
"What is your specialty when it comes to development? Are you a programmer? Do you focus on the presentation such as music or artwork? Or are you a renaissance man and just do a bit of everything?",
"Tell us a bit about yourself. Feel free to overshare to your heart's content.",
"What's the most difficult part of the game development process for you?",
"Would you consider yourself a fan of birds? What is your favorite, if you have any?",
"What is your game? What will it be like? What birds will the birders be able to expect?!",
]));

array_push(global.paper.columns, new column("Kevin", [
"(A spaceship? Haha!) Hmm... perhaps... a golden eagle? It's one of the fastest flying birds, and I think it captures the speed and intensity at which the game is built around."
],[
"If you had to describe your game as a species of bird, which would it be?"
]));
if not (array_contains(global.unlocks, "kevin")) array_push(global.unlocks, "kevin");
}