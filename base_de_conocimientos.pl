canal('Star Movies',36).
canal('Sony',336).
canal('Fox',351).
canal('History',493).
canal('Cinema',496).
canal('Space',659).
canal('Investigation Discovery',743).
canal('Warner',930).
canal('Azteca 7',971).
canal('Platino',990).

% Reglas

getCanales(X,Y) :- forall(canal(X,Y),imprimeCanal(X)).
getProgramacion(Nombre,Canal,Dia,Hora,Duracion,Descripcion) :- forall(programa(Nombre,Canal,Dia,Hora,Duracion,Descripcion), imprimeInfo(Nombre,Canal,Dia,Hora,Duracion,Descripcion)).
imprimeInfo(A,B,C,D,E,F) :-separa(A),imprimeCanal2(B),separa(C),separa(D),separa(E),separa(F),nl.
separa(X) :- write('|'), write(X).
imprimeCanal(X) :- canal(X,Y),write(X),write('|'),write(Y),nl.
imprimeCanal2(X) :- canal(X,Y),write('|'),write(X),write('|'),write(Y).

% Programación de Star Movies

programa('Dark','Star Movies',0,0,1,'A smart girl take a photo of a black hole.').
programa('The Blacklist','Star Movies',0,1,2,'Teacher list with the most unrated students.').
programa('Transporter 2','Star Movies',0,3,3,'The best driver recues a readhead.').
programa('Prison Break','Star Movies',0,6,2,'Hulk is taken in prison, so he needs to break the prison.').
programa('Ninja Assassin','Star Movies',0,8,1,'A story of a ninja who kills politians.').
programa('Designated Survivor','Star Movies',0,9,3,'A live of a designated survivor.').
programa('Computer Chronicles','Star Movies',0,12,3,'A supercomputer tells the truth about machines.').
programa('Master and Commander: The Far Side of the World','Star Movies',0,15,1,'A representation of a world war.').
programa('Drive','Star Movies',0,16,1,'Clandestine races take place in Mexico.').
programa('The Town','Star Movies',0,17,1,'A ghost town is visited again.').
programa('Dawn of the Dead','Star Movies',0,18,3,'Zombies rules the world.').
programa('The Twilight Zone','Star Movies',0,21,3,'A mine with too many resources is found by bad people.').

programa('House of Flying Daggers','Star Movies',1,0,2,'A classical film from ninjas of Japan.').
programa('The Originals','Star Movies',1,2,2,'A rock band become famous.').
programa('The Society','Star Movies',1,4,1,'A entire society is in elections.').
programa('Train to Busan','Star Movies',1,5,3,'A girl travels to Busan to meet her love.').
programa('Blindspot','Star Movies',1,8,2,'A gruop of ninjas moves throughout the blindspots.').
programa('American Made','Star Movies',1,10,2,'This made by american people.').
programa('Equilibrium','Star Movies',1,12,2,'Thanos wants to collect the infinite stones again.').
programa('Ichi the Killer','Star Movies',1,14,1,'The story of a serial killer from Czech.').
programa('Kiss Kiss Bang Bang','Star Movies',1,15,2,'A true story of love and hate.').
programa('The Jungle Book','Star Movies',1,17,1,'A little childs is rise by monkeys.').
programa('Transporter 3','Star Movies',1,18,1,'Jason Stathan investigate the death of his father.').
programa('MythBusters','Star Movies',1,19,1,'They bust the Cazafantasmas').
programa('Line of Duty','Star Movies',1,20,1,'Stay away of the line, or you will regret it.').
programa('The Final Master','Star Movies',1,21,3,'The story of the last ninja in Japan.').

programa('V for Vendetta','Star Movies',2,0,1,'An anonymous take revenge in the name of the freedom.').
programa('House','Star Movies',2,1,2,'I serial killer drags his victims to his house.').
programa('Sherlock','Star Movies',2,3,2,'Holmes comes back to take revenge against Sherlock.').
programa('Perfect Stranger','Star Movies',2,5,1,'A stranger who is so beautiful.').
programa('Hacksaw Ridge','Star Movies',2,6,2,'A thrill move with Hacksaw as protagonist.').
programa('King Kong','Star Movies',2,8,2,'A giant kong kidnapped a girl.').
programa('I Saw the Devil','Star Movies',2,10,3,'A man see visions from the future.').
programa('Zombieland','Star Movies',2,13,2,'An island is infected by a virus.').
programa('Secrets & Mysteries','Star Movies',2,15,1,'Talks about the difference between a secret and a mystery.').
programa('Thor: The Dark World','Star Movies',2,16,1,'Thor is not the god of thunder anymore.').
programa('The Expanse','Star Movies',2,17,2,'Explains the origin of the live and death.').
programa('Westworld','Star Movies',2,19,2,'Eastwork meets westworld, and another stuff.').
programa('Supernatural','Star Movies',2,21,3,'Cazafantasmas rise again.').

programa('Pretty Little Liars','Star Movies',3,0,2,'The truth about girls is finally discovered.').
programa('The Expendables','Star Movies',3,2,2,'The most leathal superheros together.').
programa('Jack Reacher','Star Movies',3,4,3,'The story of the unfamous serial killer.').
programa('Fast & Furious 6','Star Movies',3,7,3,'Clandestine rices in the streets of Russia.').
programa('Amanda and the Alien','Star Movies',3,10,3,'A girl falls in love with a handsome alien.').
programa('Criminal Minds','Star Movies',3,13,2,'Madophs favorite serie.').
programa('The Silence of the Lambs','Star Movies',3,15,2,'A serial killer murder everybody in the town.').
programa('Along with the Gods: The Two Worlds','Star Movies',3,17,3,'Two gods from two dimensions want to rule the universe.').
programa('Deepwater Horizon','Star Movies',3,20,3,'Giant sea monsters go out from the water.').
programa('End of Watch','Star Movies',3,23,1,'A group of people tries to avoid the end of the world.').

programa('The Foreigner','Star Movies',4,0,2,'A man travels to another country').
programa('Bones','Star Movies',4,2,1,'I group of expert analize post-morten corpses.').
programa('Apocalypto','Star Movies',4,3,3,'A classic Aztec film from Mexico.').
programa('Atomic Rulers of the World','Star Movies',4,6,2,'Atom Squad rule the quantum world.').
programa('Star Trek: The Next Generation','Star Movies',4,8,3,'The next generation of Start Trek.').
programa('13 Hours','Star Movies',4,11,2,'A film of two people trapped in a cell.').
programa('Infernal Affairs','Star Movies',4,13,3,'The earth is affected by paranormal agents.').
programa('American Masters','Star Movies',4,16,2,'School classes taught by american masters.').
programa('American Gangster','Star Movies',4,18,3,'A film that tells the story of the america mafia.').
programa('The Password to Larkspur Lane','Star Movies',4,21,3,'Kali Linux in action, brake the code.').

programa('Unstoppable','Star Movies',5,0,2,'A sick guy become a mastermind.').
programa('Bumblebee','Star Movies',5,2,1,'A transformer wants to interact with humans.').
programa('Warrior','Star Movies',5,3,2,'Comflit between Roma and Griece.').
programa('Lost','Star Movies',5,5,1,'I do not know how the film this, if they were lost.').
programa('Stranger Things','Star Movies',5,6,1,'Strange things that are found in my room.').
programa('Avengers','Star Movies',5,7,3,'Avenger release his 20th movie with more action and characters.').
programa('Red Cliff','Star Movies',5,10,2,'A romatic story of couple.').
programa('Mandy','Star Movies',5,12,2,'I popular romantic novel.').
programa('NCIS','Star Movies',5,14,1,'A investigation team with too many episodes.').
programa('The Fighter','Star Movies',5,15,1,'Fights between prisoners for freedom.').
programa('How to Get Away with Murder','Star Movies',5,16,2,'Tips and trick about murdering.').
programa('True Blood','Star Movies',5,18,1,'A guy with family troubles.').
programa('Zodiac','Star Movies',5,19,1,'If you do not believe in the Zodiac, do not watch this.').
programa('Riverdale','Star Movies',5,20,1,'A guy called Dale is lost in a river.').
programa('Bronson','Star Movies',5,21,3,'I little boy wants to become a professional NBA player.').

programa('Call 911','Star Movies',6,0,3,'Why are you reading this?, go and call 911.').
programa('Hot Fuzz','Star Movies',6,3,3,'Learn how to cook with easy tips.').
programa('ALF','Star Movies',6,6,3,'Tv show that is starring by an alien.').
programa('Black Hawk Down','Star Movies',6,9,2,'Eyehawk meet his worst nightmare.').
programa('Dude, What Would Happen','Star Movies',6,11,1,'What if, the big question is aswered here.').
programa('The Man from Nowhere','Star Movies',6,12,2,'A man travel from the future to the past.').
programa('The Vampire Diaries','Star Movies',6,14,1,'A vampire reads alaud all his memories.').
programa('Haunted Lives: True Ghost Stories','Star Movies',6,15,3,'Stories of ghost become true, so state tune.').
programa('American Gods','Star Movies',6,18,1,'I tells the culture and religion of americans.').
programa('The OA','Star Movies',6,19,3,'A parogy of Questions and Answers.').
programa('Book TV','Star Movies',6,22,2,'Before facebook exists.').


% Programación de Sony

programa('The Man from Nowhere','Sony',0,0,2,'A man travel from the future to the past.').
programa('Snatch','Sony',0,2,1,'A cyber virus takes down services.').
programa('The Vampire Diaries','Sony',0,3,2,'A vampire reads alaud all his memories.').
programa('Computer Chronicles','Sony',0,5,2,'A supercomputer tells the truth about machines.').
programa('Dude, What Would Happen','Sony',0,7,2,'What if, the big question is aswered here.').
programa('True Blood','Sony',0,9,3,'A guy with family troubles.').
programa('Arrow','Sony',0,12,1,'Arrowman takes revenge.').
programa('Supernatural','Sony',0,13,3,'Cazafantasmas rise again.').
programa('The Expanse','Sony',0,16,2,'Explains the origin of the live and death.').
programa('Ant-Man','Sony',0,18,2,'A here with the power of resize like vector in C++.').
programa('The Night Comes for Us','Sony',0,20,2,'The story of the moon and the sun.').
programa('Dexter','Sony',0,22,2,'A brutal detective of killer it its freetime.').

programa('Overlord','Sony',1,0,1,'An alien invasion takes control over the earth.').
programa('House','Sony',1,1,2,'I serial killer drags his victims to his house.').
programa('Taboo','Sony',1,3,2,'Documental with the most weird practices.').
programa('ALF','Sony',1,5,2,'Tv show that is starring by an alien.').
programa('Prison Break','Sony',1,7,3,'Hulk is taken in prison, so he needs to break the prison.').
programa('Hardcore Henry','Sony',1,10,1,'A comedy film.').
programa('Den of Thieves','Sony',1,11,1,'Family thieves run away from the justice.').
programa('Bones','Sony',1,12,2,'I group of expert analize post-morten corpses.').
programa('The Last Samurai','Sony',1,14,3,'Japanese film of samurais lifestyle.').
programa('The Surgical Strike','Sony',1,17,3,'A tv show with real patients in a hostipal.').
programa('Watchdog','Sony',1,20,2,'A dog with a magical watch.').
programa('Zombieland','Sony',1,22,2,'An island is infected by a virus.').

programa('Thor','Sony',2,0,1,'Thos gods of the thunder fights againts frozen giants.').
programa('Train to Busan','Sony',2,1,3,'A girl travels to Busan to meet her love.').
programa('Fast & Furious 6','Sony',2,4,2,'Clandestine rices in the streets of Russia.').
programa('Gotham','Sony',2,6,2,'Batman rides his new car in New York city.').
programa('Jack Reacher','Sony',2,8,3,'The story of the unfamous serial killer.').
programa('Dawn of the Dead','Sony',2,11,2,'Zombies rules the world.').
programa('Harsh Times','Sony',2,13,1,'There is no more food on the earth.').
programa('A Hard Day','Sony',2,14,1,'A romatic story to two person from diferent countries.').
programa('Mard Ko Dard Nahin Hota','Sony',2,15,3,'An classcal asian film.').
programa('Stranger Things','Sony',2,18,2,'Strange things that are found in my room.').
programa('I Saw the Devil','Sony',2,20,2,'A man see visions from the future.').
programa('Nightcrawler','Sony',2,22,2,'A mutant with the power of teletransport.').

programa('Legacies','Sony',3,0,3,'Discover the truth behind the mafia.').
programa('The Password to Larkspur Lane','Sony',3,3,2,'Kali Linux in action, brake the code.').
programa('Man on Fire','Sony',3,5,1,'A millionare guy meet a lot of girls.').
programa('Men in Black 3','Sony',3,6,3,'3 highschool guy meets again after 30 years.').
programa('Thor: Ragnarok','Sony',3,9,1,'Thor try to avoid the destruction of Azgar.').
programa('For Love or Money','Sony',3,10,3,'A romantic novel which expose the dark size of the girls.').
programa('Red Cliff','Sony',3,13,1,'A romatic story of couple.').
programa('Dark','Sony',3,14,1,'A smart girl take a photo of a black hole.').
programa('Along with the Gods: The Two Worlds','Sony',3,15,3,'Two gods from two dimensions want to rule the universe.').
programa('Bumblebee','Sony',3,18,2,'A transformer wants to interact with humans.').
programa('Tears of the Sun','Sony',3,20,1,'The earth become drier because contamination.').
programa('The Blacklist','Sony',3,21,3,'Teacher list with the most unrated students.').

programa('Imposters','Sony',4,0,1,'Imposters are expose in the television.').
programa('Doom Patrol','Sony',4,1,2,'A movie in memory of Doom Patrol.').
programa('MythBusters','Sony',4,3,1,'They bust the Cazafantasmas').
programa('A Bittersweet Life','Sony',4,4,3,'A love, passion and hate story.').
programa('The Siege of Jadotville','Sony',4,7,2,'A reflexional film.').
programa('Equilibrium','Sony',4,9,1,'Thanos wants to collect the infinite stones again.').
programa('Star Trek: The Next Generation','Sony',4,10,3,'The next generation of Start Trek.').
programa('The Magnificent Seven','Sony',4,13,3,'Documentary about Number Theory.').
programa('The Awful Truth','Sony',4,16,3,'It tells you the awful truth of the truth.').
programa('Amanda and the Alien','Sony',4,19,2,'A girl falls in love with a handsome alien.').
programa('Run All Night','Sony',4,21,3,'A thiller film of a ghost that attacks at the night.').

programa('Criminal Minds','Sony',5,0,1,'Madophs favorite serie.').
programa('The 100','Sony',5,1,2,'Social experiment for 1 million of subscribers.').
programa('Call 911','Sony',5,3,3,'Why are you reading this?, go and call 911.').
programa('Point Blank','Sony',5,6,3,'Eyehawks become a superhero in Los Angeles.').
programa('Inglourious Basterds','Sony',5,9,2,'Action movie from the seventees.').
programa('Furious 7','Sony',5,11,3,'Clandestine rices in the streets of Japan.').
programa('Atomic Rulers of the World','Sony',5,14,2,'Atom Squad rule the quantum world.').
programa('Darkland','Sony',5,16,3,'A tribu that do not have contact with the technoly yet.').
programa('Django Unchained','Sony',5,19,3,'A figher it let unchained.').
programa('American Made','Sony',5,22,2,'This made by american people.').

programa('Bronson','Sony',6,0,3,'I little boy wants to become a professional NBA player.').
programa('Avengers','Sony',6,3,3,'Avenger release his 20th movie with more action and characters.').
programa('Serenity','Sony',6,6,1,'A rich man become a homeless.').
programa('Beyond Belief: Fact or Fiction','Sony',6,7,2,'Prolog with facts and fictions modules.').
programa('Hacksaw Ridge','Sony',6,9,3,'A thrill move with Hacksaw as protagonist.').
programa('American Masters','Sony',6,12,2,'School classes taught by american masters.').
programa('Wind River','Sony',6,14,1,'Documentary about the Wind River in the Amazonas.').
programa('King Kong','Sony',6,15,1,'A giant kong kidnapped a girl.').
programa('The Society','Sony',6,16,1,'A entire society is in elections.').
programa('World War Z','Sony',6,17,1,'In the memory of the 26th world war.').
programa('Blood Father','Sony',6,18,2,'A man knows his father by the first time.').
programa('Altered Carbon','Sony',6,20,3,'Franchise from Need for Speed Carbon version Altered.').
programa('Infernal Affairs','Sony',6,23,1,'The earth is affected by paranormal agents.').


% Programación de Fox

programa('Atom Squad','Fox',0,0,1,'A group of atoms friends makes a party.').
programa('Equilibrium','Fox',0,1,3,'Thanos wants to collect the infinite stones again.').
programa('A History of Violence','Fox',0,4,1,'Documentary of the second world war').
programa('The Fix','Fox',0,5,3,'A radical solution is implemented in current society.').
programa('Overlord','Fox',0,8,1,'An alien invasion takes control over the earth.').
programa('Lost','Fox',0,9,2,'I do not know how the film this, if they were lost.').
programa('The Vampire Diaries','Fox',0,11,2,'A vampire reads alaud all his memories.').
programa('For Love or Money','Fox',0,13,3,'A romantic novel which expose the dark size of the girls.').
programa('Justice League','Fox',0,16,1,'Justice League protect the world from Doomsday.').
programa('Zodiac','Fox',0,17,2,'If you do not believe in the Zodiac, do not watch this.').
programa('Designated Survivor','Fox',0,19,2,'A live of a designated survivor.').
programa('Twin Peaks','Fox',0,21,3,'Rackaracka twin the movie.').

programa('Serenity','Fox',1,0,2,'A rich man become a homeless.').
programa('ALF','Fox',1,2,3,'Tv show that is starring by an alien.').
programa('The Night Comes for Us','Fox',1,5,2,'The story of the moon and the sun.').
programa('Fast & Furious 6','Fox',1,7,2,'Clandestine rices in the streets of Russia.').
programa('Black Hawk Down','Fox',1,9,1,'Eyehawk meet his worst nightmare.').
programa('Warrior','Fox',1,10,3,'Comflit between Roma and Griece.').
programa('Criminal Minds','Fox',1,13,2,'Madophs favorite serie.').
programa('Altered Carbon','Fox',1,15,2,'Franchise from Need for Speed Carbon version Altered.').
programa('Rambo','Fox',1,17,3,'Soldier who fight for the freedom of the people.').
programa('American Gangster','Fox',1,20,1,'A film that tells the story of the america mafia.').
programa('Homeland','Fox',1,21,3,'Superheros come back to the earth after holidays.').

programa('The Society','Fox',2,0,2,'A entire society is in elections.').
programa('Amanda and the Alien','Fox',2,2,1,'A girl falls in love with a handsome alien.').
programa('No Country for Old Men','Fox',2,3,3,'All old men are take out from the country.').
programa('Transformers','Fox',2,6,2,'Car that becomes robots.').
programa('The Silence of the Lambs','Fox',2,8,3,'A serial killer murder everybody in the town.').
programa('Biography','Fox',2,11,2,'A studing rewriting biographies for homework.').
programa('Body of Lies','Fox',2,13,1,'A girl secret life is expose.').
programa('The Jungle Book','Fox',2,14,3,'A little childs is rise by monkeys.').
programa('Thor: Ragnarok','Fox',2,17,2,'Thor try to avoid the destruction of Azgar.').
programa('Fact or Faked: Paranormal Files','Fox',2,19,2,'Streamer who download paranormal files.').
programa('Apocalypto','Fox',2,21,3,'A classic Aztec film from Mexico.').

programa('Red Cliff','Fox',3,0,2,'A romatic story of couple.').
programa('Aaron Stone','Fox',3,2,3,'He looks to find a powerfull stone to control the world.').
programa('Along with the Gods: The Two Worlds','Fox',3,5,3,'Two gods from two dimensions want to rule the universe.').
programa('Ninja Assassin','Fox',3,8,2,'A story of a ninja who kills politians.').
programa('Nightcrawler','Fox',3,10,2,'A mutant with the power of teletransport.').
programa('Perfect Stranger','Fox',3,12,3,'A stranger who is so beautiful.').
programa('Shaolin Soccer','Fox',3,15,2,'A documents about Shaolin Monks.').
programa('Machete','Fox',3,17,1,'3 guys camp outside new mexico.').
programa('Imposters','Fox',3,18,2,'Imposters are expose in the television.').
programa('Southpaw','Fox',3,20,3,'A group of children find an infinite stone.').
programa('The 100','Fox',3,23,1,'Social experiment for 1 million of subscribers.').

programa('Destination Truth','Fox',4,0,1,'It reveals the truth about destination.').
programa('Goon','Fox',4,1,1,'A secret agency spy the whole planet.').
programa('Drive','Fox',4,2,3,'Clandestine races take place in Mexico.').
programa('Harsh Times','Fox',4,5,2,'There is no more food on the earth.').
programa('Tears of the Sun','Fox',4,7,2,'The earth become drier because contamination.').
programa('The Foreigner','Fox',4,9,1,'A man travels to another country').
programa('Den of Thieves','Fox',4,10,3,'Family thieves run away from the justice.').
programa('A Bittersweet Life','Fox',4,13,2,'A love, passion and hate story.').
programa('The Fighter','Fox',4,15,3,'Fights between prisoners for freedom.').
programa('Secrets & Mysteries','Fox',4,18,1,'Talks about the difference between a secret and a mystery.').
programa('Thor','Fox',4,19,2,'Thos gods of the thunder fights againts frozen giants.').
programa('Free Fire','Fox',4,21,3,'A group of people fight for freedom.').

programa('Point Blank','Fox',5,0,2,'Eyehawks become a superhero in Los Angeles.').
programa('Sin City','Fox',5,2,3,'3 girls go to the Vegas.').
programa('2 Fast 2 Furious','Fox',5,5,2,'Clandestine rices in the streets of USA.').
programa('Tomb Raider','Fox',5,7,1,'Action films recorded in Egypt.').
programa('The Last Samurai','Fox',5,8,2,'Japanese film of samurais lifestyle.').
programa('Train to Busan','Fox',5,10,3,'A girl travels to Busan to meet her love.').
programa('End of Watch','Fox',5,13,3,'A group of people tries to avoid the end of the world.').
programa('The Transporter','Fox',5,16,2,'The best driver fight againt the mafia.').
programa('Bronson','Fox',5,18,1,'I little boy wants to become a professional NBA player.').
programa('Ancient Aliens','Fox',5,19,3,'Ancient aliens fight young aliens.').
programa('Dexter','Fox',5,22,2,'A brutal detective of killer it its freetime.').

programa('Kiss Kiss Bang Bang','Fox',6,0,1,'A true story of love and hate.').
programa('Call 911','Fox',6,1,2,'Why are you reading this?, go and call 911.').
programa('The Expanse','Fox',6,3,2,'Explains the origin of the live and death.').
programa('Shooter','Fox',6,5,1,'An ex soldier fight the mafia by himself.').
programa('King Kong','Fox',6,6,2,'A giant kong kidnapped a girl.').
programa('Dredd','Fox',6,8,3,'The real story of Dredd life.').
programa('Triad Election','Fox',6,11,1,'3 main leaders the lead at the elections in Mexico.').
programa('Game Night','Fox',6,12,1,'Documentary about shuffle games play at the night.').
programa('Atomic Rulers of the World','Fox',6,13,2,'Atom Squad rule the quantum world.').
programa('American Experience','Fox',6,15,2,'Talks about mexicans experiences about crossing the boundary.').
programa('Live Free or Die Hard','Fox',6,17,1,'Pentagono fights againts his best agents.').
programa('God Bless America','Fox',6,18,3,'USA in the cold war.').
programa('Dark','Fox',6,21,3,'A smart girl take a photo of a black hole.').


% Programación de History

programa('True Detective','History',0,0,3,'A detective with an online certification.').
programa('Goon','History',0,3,3,'A secret agency spy the whole planet.').
programa('True Blood','History',0,6,1,'A guy with family troubles.').
programa('The Magnificent Seven','History',0,7,3,'Documentary about Number Theory.').
programa('Tears of the Sun','History',0,10,3,'The earth become drier because contamination.').
programa('The Town','History',0,13,3,'A ghost town is visited again.').
programa('Apocalypto','History',0,16,3,'A classic Aztec film from Mexico.').
programa('A History of Violence','History',0,19,2,'Documentary of the second world war').
programa('Gotham','History',0,21,3,'Batman rides his new car in New York city.').

programa('God Bless America','History',1,0,1,'USA in the cold war.').
programa('Black Hawk Down','History',1,1,3,'Eyehawk meet his worst nightmare.').
programa('Jurassic World: Fallen Kingdom','History',1,4,2,'Dinosaurs come from the past the rules now.').
programa('Fearless','History',1,6,1,'A man with no fear fight againt the crime.').
programa('Legacies','History',1,7,1,'Discover the truth behind the mafia.').
programa('13 Assassins','History',1,8,3,'13 assassing are drop in a isolated island.').
programa('Prison Break','History',1,11,2,'Hulk is taken in prison, so he needs to break the prison.').
programa('Fast & Furious 6','History',1,13,3,'Clandestine rices in the streets of Russia.').
programa('The Villainess','History',1,16,1,'The villians get together to fight the avengers.').
programa('Lost','History',1,17,1,'I do not know how the film this, if they were lost.').
programa('Bones','History',1,18,3,'I group of expert analize post-morten corpses.').
programa('Astronauts','History',1,21,3,'A gruop of astronauts go to the moon.').

programa('The Departed','History',2,0,2,'A secret detective, investigate his past.').
programa('Snatch','History',2,2,1,'A cyber virus takes down services.').
programa('Hardcore Henry','History',2,3,1,'A comedy film.').
programa('The Foreigner','History',2,4,3,'A man travels to another country').
programa('Upgrade','History',2,7,3,'Tv show where they tune your machine.').
programa('For Love or Money','History',2,10,3,'A romantic novel which expose the dark size of the girls.').
programa('Criminal Minds','History',2,13,1,'Madophs favorite serie.').
programa('The Last Samurai','History',2,14,3,'Japanese film of samurais lifestyle.').
programa('Inglourious Basterds','History',2,17,3,'Action movie from the seventees.').
programa('Riverdale','History',2,20,1,'A guy called Dale is lost in a river.').
programa('Rambo','History',2,21,3,'Soldier who fight for the freedom of the people.').

programa('Overlord','History',3,0,2,'An alien invasion takes control over the earth.').
programa('Ichi the Killer','History',3,2,1,'The story of a serial killer from Czech.').
programa('The Society','History',3,3,3,'A entire society is in elections.').
programa('13 Hours','History',3,6,3,'A film of two people trapped in a cell.').
programa('Grindhouse','History',3,9,3,'Misterious corpes appear in England.').
programa('Atomic Blonde','History',3,12,1,'A blonde become a superhero.').
programa('The Transporter','History',3,13,2,'The best driver fight againt the mafia.').
programa('Thor: The Dark World','History',3,15,2,'Thor is not the god of thunder anymore.').
programa('Designated Survivor','History',3,17,2,'A live of a designated survivor.').
programa('Secrets & Mysteries','History',3,19,1,'Talks about the difference between a secret and a mystery.').
programa('The Surgical Strike','History',3,20,1,'A tv show with real patients in a hostipal.').
programa('Men in Black 3','History',3,21,3,'3 highschool guy meets again after 30 years.').

programa('The Night Comes for Us','History',4,0,3,'The story of the moon and the sun.').
programa('Aaron Stone','History',4,3,1,'He looks to find a powerfull stone to control the world.').
programa('Stranger Things','History',4,4,3,'Strange things that are found in my room.').
programa('Blindspot','History',4,7,2,'A gruop of ninjas moves throughout the blindspots.').
programa('Call 911','History',4,9,1,'Why are you reading this?, go and call 911.').
programa('Book TV','History',4,10,3,'Before facebook exists.').
programa('Biography','History',4,13,1,'A studing rewriting biographies for homework.').
programa('FBI','History',4,14,3,'Facebook Broncos Investigation.').
programa('The Siege of Jadotville','History',4,17,2,'A reflexional film.').
programa('The OA','History',4,19,2,'A parogy of Questions and Answers.').
programa('The Age of Shadows','History',4,21,3,'Shadows from the outter space visits the earth.').

programa('Dark','History',5,0,3,'A smart girl take a photo of a black hole.').
programa('American Gods','History',5,3,2,'I tells the culture and religion of americans.').
programa('Doom Patrol','History',5,5,2,'A movie in memory of Doom Patrol.').
programa('Machete','History',5,7,1,'3 guys camp outside new mexico.').
programa('Perfect Stranger','History',5,8,3,'A stranger who is so beautiful.').
programa('Serenity','History',5,11,3,'A rich man become a homeless.').
programa('Hot Fuzz','History',5,14,2,'Learn how to cook with easy tips.').
programa('Mard Ko Dard Nahin Hota','History',5,16,2,'An classcal asian film.').
programa('Blood and Bone','History',5,18,3,'Crime and murder investigation film.').
programa('Point Blank','History',5,21,3,'Eyehawks become a superhero in Los Angeles.').

programa('Line of Duty','History',6,0,2,'Stay away of the line, or you will regret it.').
programa('Ninja Assassin','History',6,2,2,'A story of a ninja who kills politians.').
programa('Outlaw King','History',6,4,1,'A king who become a dictator.').
programa('The Blacklist','History',6,5,3,'Teacher list with the most unrated students.').
programa('Amanda and the Alien','History',6,8,3,'A girl falls in love with a handsome alien.').
programa('The Fate of the Furious','History',6,11,1,'A film based in the legend call the furious.').
programa('Shooter','History',6,12,1,'An ex soldier fight the mafia by himself.').
programa('Election','History',6,13,1,'The tragic elections of Gennady.').
programa('Sherlock','History',6,14,3,'Holmes comes back to take revenge against Sherlock.').
programa('Furious 7','History',6,17,3,'Clandestine rices in the streets of Japan.').
programa('Nightcrawler','History',6,20,1,'A mutant with the power of teletransport.').
programa('RED','History',6,21,3,'A virus is infecting people in Spain.').


% Programación de Cinema

programa('Ant-Man','Cinema',0,0,2,'A here with the power of resize like vector in C++.').
programa('A Hard Day','Cinema',0,2,2,'A romatic story to two person from diferent countries.').
programa('The Silence of the Lambs','Cinema',0,4,1,'A serial killer murder everybody in the town.').
programa('Dredd','Cinema',0,5,1,'The real story of Dredd life.').
programa('The Twilight Zone','Cinema',0,6,3,'A mine with too many resources is found by bad people.').
programa('The Age of Shadows','Cinema',0,9,2,'Shadows from the outter space visits the earth.').
programa('Blood Father','Cinema',0,11,2,'A man knows his father by the first time.').
programa('The Jungle Book','Cinema',0,13,1,'A little childs is rise by monkeys.').
programa('Unstoppable','Cinema',0,14,2,'A sick guy become a mastermind.').
programa('Blood and Bone','Cinema',0,16,2,'Crime and murder investigation film.').
programa('Pretty Little Liars','Cinema',0,18,2,'The truth about girls is finally discovered.').
programa('Dexter','Cinema',0,20,2,'A brutal detective of killer it its freetime.').
programa('How to Get Away with Murder','Cinema',0,22,2,'Tips and trick about murdering.').

programa('Darkland','Cinema',1,0,3,'A tribu that do not have contact with the technoly yet.').
programa('Computer Chronicles','Cinema',1,3,3,'A supercomputer tells the truth about machines.').
programa('Men in Black 3','Cinema',1,6,1,'3 highschool guy meets again after 30 years.').
programa('The Society','Cinema',1,7,3,'A entire society is in elections.').
programa('Run All Night','Cinema',1,10,3,'A thiller film of a ghost that attacks at the night.').
programa('Supernatural','Cinema',1,13,1,'Cazafantasmas rise again.').
programa('Thor','Cinema',1,14,1,'Thos gods of the thunder fights againts frozen giants.').
programa('Nightcrawler','Cinema',1,15,3,'A mutant with the power of teletransport.').
programa('Doom Patrol','Cinema',1,18,2,'A movie in memory of Doom Patrol.').
programa('Tears of the Sun','Cinema',1,20,2,'The earth become drier because contamination.').
programa('The Villainess','Cinema',1,22,2,'The villians get together to fight the avengers.').

programa('The Fix','Cinema',2,0,2,'A radical solution is implemented in current society.').
programa('King Kong','Cinema',2,2,3,'A giant kong kidnapped a girl.').
programa('American Experience','Cinema',2,5,1,'Talks about mexicans experiences about crossing the boundary.').
programa('Salt','Cinema',2,6,2,'The luck in lose in the earth.').
programa('Train to Busan','Cinema',2,8,3,'A girl travels to Busan to meet her love.').
programa('Den of Thieves','Cinema',2,11,2,'Family thieves run away from the justice.').
programa('V for Vendetta','Cinema',2,13,1,'An anonymous take revenge in the name of the freedom.').
programa('Ascension','Cinema',2,14,2,'3 girls decide to climb down into a hole, and they find with their worst nightmare.').
programa('Triad Election','Cinema',2,16,3,'3 main leaders the lead at the elections in Mexico.').
programa('Goon','Cinema',2,19,3,'A secret agency spy the whole planet.').
programa('Ichi the Killer','Cinema',2,22,2,'The story of a serial killer from Czech.').

programa('The Man from Nowhere','Cinema',3,0,1,'A man travel from the future to the past.').
programa('Altered Carbon','Cinema',3,1,1,'Franchise from Need for Speed Carbon version Altered.').
programa('Beyond Belief: Fact or Fiction','Cinema',3,2,2,'Prolog with facts and fictions modules.').
programa('Taboo','Cinema',3,4,2,'Documental with the most weird practices.').
programa('Warrior','Cinema',3,6,1,'Comflit between Roma and Griece.').
programa('Angel','Cinema',3,7,3,'An angel falls in love with a beautiful woman, and becomes a human for a moment.').
programa('American Made','Cinema',3,10,3,'This made by american people.').
programa('Designated Survivor','Cinema',3,13,3,'A live of a designated survivor.').
programa('BodyShaping','Cinema',3,16,2,'Lets train your body.').
programa('NCIS','Cinema',3,18,2,'A investigation team with too many episodes.').
programa('Call 911','Cinema',3,20,1,'Why are you reading this?, go and call 911.').
programa('Fact or Faked: Paranormal Files','Cinema',3,21,3,'Streamer who download paranormal files.').

programa('Secrets & Mysteries','Cinema',4,0,1,'Talks about the difference between a secret and a mystery.').
programa('American Masters','Cinema',4,1,3,'School classes taught by american masters.').
programa('Snatch','Cinema',4,4,3,'A cyber virus takes down services.').
programa('Shaolin Soccer','Cinema',4,7,3,'A documents about Shaolin Monks.').
programa('The Foreigner','Cinema',4,10,3,'A man travels to another country').
programa('Bronson','Cinema',4,13,1,'I little boy wants to become a professional NBA player.').
programa('Southpaw','Cinema',4,14,1,'A group of children find an infinite stone.').
programa('Game Night','Cinema',4,15,2,'Documentary about shuffle games play at the night.').
programa('Free Fire','Cinema',4,17,1,'A group of people fight for freedom.').
programa('Transporter 2','Cinema',4,18,1,'The best driver recues a readhead.').
programa('The X-Files','Cinema',4,19,3,'I normal guy finds the secret of, why she does not love me?').
programa('The Magnificent Seven','Cinema',4,22,2,'Documentary about Number Theory.').

programa('Dark','Cinema',5,0,2,'A smart girl take a photo of a black hole.').
programa('Justice League','Cinema',5,2,3,'Justice League protect the world from Doomsday.').
programa('Bumblebee','Cinema',5,5,1,'A transformer wants to interact with humans.').
programa('Arrow','Cinema',5,6,2,'Arrowman takes revenge.').
programa('Westworld','Cinema',5,8,2,'Eastwork meets westworld, and another stuff.').
programa('The Great Battle','Cinema',5,10,3,'Yuri Boyka meets is worst nighmare.').
programa('The Night Comes for Us','Cinema',5,13,3,'The story of the moon and the sun.').
programa('A Bittersweet Life','Cinema',5,16,1,'A love, passion and hate story.').
programa('Jurassic World','Cinema',5,17,2,'A zoo with dinosaurs as main atraction.').
programa('Line of Duty','Cinema',5,19,1,'Stay away of the line, or you will regret it.').
programa('World War Z','Cinema',5,20,1,'In the memory of the 26th world war.').
programa('Point Blank','Cinema',5,21,3,'Eyehawks become a superhero in Los Angeles.').

programa('Imposters','Cinema',6,0,2,'Imposters are expose in the television.').
programa('Thor: Ragnarok','Cinema',6,2,1,'Thor try to avoid the destruction of Azgar.').
programa('The Last Samurai','Cinema',6,3,2,'Japanese film of samurais lifestyle.').
programa('Election','Cinema',6,5,3,'The tragic elections of Gennady.').
programa('The Town','Cinema',6,8,3,'A ghost town is visited again.').
programa('Man on Fire','Cinema',6,11,1,'A millionare guy meet a lot of girls.').
programa('Underworld','Cinema',6,12,1,'A moder civilazation beneath the earth.').
programa('Inglourious Basterds','Cinema',6,13,1,'Action movie from the seventees.').
programa('The Final Master','Cinema',6,14,3,'The story of the last ninja in Japan.').
programa('Juvies','Cinema',6,17,3,'I do not know what is Juvies?').
programa('MythBusters','Cinema',6,20,2,'They bust the Cazafantasmas').
programa('Shooter','Cinema',6,22,2,'An ex soldier fight the mafia by himself.').


% Programación de Space

programa('The Fate of the Furious','Space',0,0,1,'A film based in the legend call the furious.').
programa('Snatch','Space',0,1,3,'A cyber virus takes down services.').
programa('Grindhouse','Space',0,4,2,'Misterious corpes appear in England.').
programa('Big Little Lies','Space',0,6,1,'Giants who tell little lies, that is all.').
programa('Zombieland','Space',0,7,1,'An island is infected by a virus.').
programa('Warrior','Space',0,8,3,'Comflit between Roma and Griece.').
programa('The Last Samurai','Space',0,11,3,'Japanese film of samurais lifestyle.').
programa('Gladiator','Space',0,14,1,'Ex boxer enter into a tournament in prison.').
programa('American Sniper','Space',0,15,1,'An america soldier go to Irak.').
programa('Along with the Gods: The Two Worlds','Space',0,16,2,'Two gods from two dimensions want to rule the universe.').
programa('The Blacklist','Space',0,18,3,'Teacher list with the most unrated students.').
programa('Sherlock','Space',0,21,3,'Holmes comes back to take revenge against Sherlock.').

programa('God Bless America','Space',1,0,3,'USA in the cold war.').
programa('The Town','Space',1,3,3,'A ghost town is visited again.').
programa('Bronson','Space',1,6,1,'I little boy wants to become a professional NBA player.').
programa('Star Trek: The Next Generation','Space',1,7,2,'The next generation of Start Trek.').
programa('Harsh Times','Space',1,9,3,'There is no more food on the earth.').
programa('Midsomer Murders','Space',1,12,3,'Killers confest all their murders on camera.').
programa('Designated Survivor','Space',1,15,1,'A live of a designated survivor.').
programa('Thor: The Dark World','Space',1,16,3,'Thor is not the god of thunder anymore.').
programa('Unstoppable','Space',1,19,1,'A sick guy become a mastermind.').
programa('A Taxi Driver','Space',1,20,3,'A girl rice in illegas taxi races.').
programa('Polar','Space',1,23,1,'A guy and a polar bear becomes friends.').

programa('No Country for Old Men','Space',2,0,1,'All old men are take out from the country.').
programa('Fearless','Space',2,1,3,'A man with no fear fight againt the crime.').
programa('Amanda and the Alien','Space',2,4,3,'A girl falls in love with a handsome alien.').
programa('The Night Comes for Us','Space',2,7,2,'The story of the moon and the sun.').
programa('Thor','Space',2,9,1,'Thos gods of the thunder fights againts frozen giants.').
programa('Mandy','Space',2,10,3,'I popular romantic novel.').
programa('V for Vendetta','Space',2,13,3,'An anonymous take revenge in the name of the freedom.').
programa('Underworld','Space',2,16,1,'A moder civilazation beneath the earth.').
programa('2 Fast 2 Furious','Space',2,17,2,'Clandestine rices in the streets of USA.').
programa('Dawn of the Dead','Space',2,19,3,'Zombies rules the world.').
programa('Ant-Man','Space',2,22,2,'A here with the power of resize like vector in C++.').

programa('The Villainess','Space',3,0,2,'The villians get together to fight the avengers.').
programa('House of Flying Daggers','Space',3,2,2,'A classical film from ninjas of Japan.').
programa('The X-Files','Space',3,4,2,'I normal guy finds the secret of, why she does not love me?').
programa('Machete','Space',3,6,3,'3 guys camp outside new mexico.').
programa('Call 911','Space',3,9,2,'Why are you reading this?, go and call 911.').
programa('The Haunting of Hill House','Space',3,11,3,'A ghost hunts down a family in its own house.').
programa('Aaron Stone','Space',3,14,1,'He looks to find a powerfull stone to control the world.').
programa('End of Watch','Space',3,15,1,'A group of people tries to avoid the end of the world.').
programa('True Blood','Space',3,16,1,'A guy with family troubles.').
programa('Supernatural','Space',3,17,3,'Cazafantasmas rise again.').
programa('The Expendables','Space',3,20,1,'The most leathal superheros together.').
programa('Nightcrawler','Space',3,21,3,'A mutant with the power of teletransport.').

programa('The Awful Truth','Space',4,0,1,'It tells you the awful truth of the truth.').
programa('Juvies','Space',4,1,1,'I do not know what is Juvies?').
programa('Doctor Who','Space',4,2,2,'Doctor Doom fights against a impostor.').
programa('Transporter 2','Space',4,4,3,'The best driver recues a readhead.').
programa('Shaolin Soccer','Space',4,7,3,'A documents about Shaolin Monks.').
programa('Free Fire','Space',4,10,1,'A group of people fight for freedom.').
programa('Imposters','Space',4,11,3,'Imposters are expose in the television.').
programa('Fast & Furious 6','Space',4,14,1,'Clandestine rices in the streets of Russia.').
programa('Inglourious Basterds','Space',4,15,1,'Action movie from the seventees.').
programa('Tomb Raider','Space',4,16,2,'Action films recorded in Egypt.').
programa('BodyShaping','Space',4,18,1,'Lets train your body.').
programa('Overlord','Space',4,19,2,'An alien invasion takes control over the earth.').
programa('Taboo','Space',4,21,3,'Documental with the most weird practices.').

programa('Atomic Blonde','Space',5,0,3,'A blonde become a superhero.').
programa('Deepwater Horizon','Space',5,3,1,'Giant sea monsters go out from the water.').
programa('Transformers','Space',5,4,3,'Car that becomes robots.').
programa('Train to Busan','Space',5,7,2,'A girl travels to Busan to meet her love.').
programa('Apocalypto','Space',5,9,3,'A classic Aztec film from Mexico.').
programa('Outlaw King','Space',5,12,3,'A king who become a dictator.').
programa('Oldboy','Space',5,15,1,'A comedy film of a old gut who thinks that is a child.').
programa('Upgrade','Space',5,16,3,'Tv show where they tune your machine.').
programa('The Jungle Book','Space',5,19,2,'A little childs is rise by monkeys.').
programa('Riverdale','Space',5,21,3,'A guy called Dale is lost in a river.').

programa('13 Hours','Space',6,0,1,'A film of two people trapped in a cell.').
programa('Game Night','Space',6,1,3,'Documentary about shuffle games play at the night.').
programa('The Fix','Space',6,4,3,'A radical solution is implemented in current society.').
programa('Live Free or Die Hard','Space',6,7,3,'Pentagono fights againts his best agents.').
programa('Point Blank','Space',6,10,2,'Eyehawks become a superhero in Los Angeles.').
programa('Infernal Affairs','Space',6,12,1,'The earth is affected by paranormal agents.').
programa('Wanted','Space',6,13,2,'A thief running out from the police.').
programa('Salt','Space',6,15,1,'The luck in lose in the earth.').
programa('Dexter','Space',6,16,1,'A brutal detective of killer it its freetime.').
programa('Aquila','Space',6,17,1,'King of the acient ones return to the present to take control over the world.').
programa('Astronauts','Space',6,18,1,'A gruop of astronauts go to the moon.').
programa('Wind River','Space',6,19,3,'Documentary about the Wind River in the Amazonas.').
programa('Dude, What Would Happen','Space',6,22,2,'What if, the big question is aswered here.').


% Programación de Investigation Discovery

programa('House of Flying Daggers','Investigation Discovery',0,0,1,'A classical film from ninjas of Japan.').
programa('Polar','Investigation Discovery',0,1,3,'A guy and a polar bear becomes friends.').
programa('Doctor Who','Investigation Discovery',0,4,2,'Doctor Doom fights against a impostor.').
programa('No Country for Old Men','Investigation Discovery',0,6,2,'All old men are take out from the country.').
programa('Homeland','Investigation Discovery',0,8,3,'Superheros come back to the earth after holidays.').
programa('Fearless','Investigation Discovery',0,11,3,'A man with no fear fight againt the crime.').
programa('Biography','Investigation Discovery',0,14,3,'A studing rewriting biographies for homework.').
programa('Rambo','Investigation Discovery',0,17,3,'Soldier who fight for the freedom of the people.').
programa('Ninja Assassin','Investigation Discovery',0,20,1,'A story of a ninja who kills politians.').
programa('Beyond Belief: Fact or Fiction','Investigation Discovery',0,21,3,'Prolog with facts and fictions modules.').

programa('Zombieland','Investigation Discovery',1,0,1,'An island is infected by a virus.').
programa('Legacies','Investigation Discovery',1,1,3,'Discover the truth behind the mafia.').
programa('A Hard Day','Investigation Discovery',1,4,3,'A romatic story to two person from diferent countries.').
programa('The Fate of the Furious','Investigation Discovery',1,7,2,'A film based in the legend call the furious.').
programa('The Man from Nowhere','Investigation Discovery',1,9,3,'A man travel from the future to the past.').
programa('Ascension','Investigation Discovery',1,12,1,'3 girls decide to climb down into a hole, and they find with their worst nightmare.').
programa('Outlaw King','Investigation Discovery',1,13,3,'A king who become a dictator.').
programa('The Originals','Investigation Discovery',1,16,3,'A rock band become famous.').
programa('Transporter 2','Investigation Discovery',1,19,1,'The best driver recues a readhead.').
programa('The Vampire Diaries','Investigation Discovery',1,20,1,'A vampire reads alaud all his memories.').
programa('The Town','Investigation Discovery',1,21,3,'A ghost town is visited again.').

programa('Nightcrawler','Investigation Discovery',2,0,1,'A mutant with the power of teletransport.').
programa('RED','Investigation Discovery',2,1,1,'A virus is infecting people in Spain.').
programa('Dexter','Investigation Discovery',2,2,2,'A brutal detective of killer it its freetime.').
programa('Deepwater Horizon','Investigation Discovery',2,4,3,'Giant sea monsters go out from the water.').
programa('Dark','Investigation Discovery',2,7,2,'A smart girl take a photo of a black hole.').
programa('Big Little Lies','Investigation Discovery',2,9,1,'Giants who tell little lies, that is all.').
programa('Transformers','Investigation Discovery',2,10,3,'Car that becomes robots.').
programa('Wanted','Investigation Discovery',2,13,1,'A thief running out from the police.').
programa('Aquila','Investigation Discovery',2,14,1,'King of the acient ones return to the present to take control over the world.').
programa('Along with the Gods: The Two Worlds','Investigation Discovery',2,15,3,'Two gods from two dimensions want to rule the universe.').
programa('Underworld','Investigation Discovery',2,18,1,'A moder civilazation beneath the earth.').
programa('Election','Investigation Discovery',2,19,1,'The tragic elections of Gennady.').
programa('The Final Master','Investigation Discovery',2,20,3,'The story of the last ninja in Japan.').
programa('For Love or Money','Investigation Discovery',2,23,1,'A romantic novel which expose the dark size of the girls.').

programa('Ancient Aliens','Investigation Discovery',3,0,3,'Ancient aliens fight young aliens.').
programa('Dredd','Investigation Discovery',3,3,3,'The real story of Dredd life.').
programa('Black Hawk Down','Investigation Discovery',3,6,1,'Eyehawk meet his worst nightmare.').
programa('The Villainess','Investigation Discovery',3,7,1,'The villians get together to fight the avengers.').
programa('Gotham','Investigation Discovery',3,8,2,'Batman rides his new car in New York city.').
programa('Men in Black 3','Investigation Discovery',3,10,1,'3 highschool guy meets again after 30 years.').
programa('Point Blank','Investigation Discovery',3,11,2,'Eyehawks become a superhero in Los Angeles.').
programa('Train to Busan','Investigation Discovery',3,13,1,'A girl travels to Busan to meet her love.').
programa('The Blacklist','Investigation Discovery',3,14,3,'Teacher list with the most unrated students.').
programa('The Surgical Strike','Investigation Discovery',3,17,1,'A tv show with real patients in a hostipal.').
programa('Angel','Investigation Discovery',3,18,3,'An angel falls in love with a beautiful woman, and becomes a human for a moment.').
programa('Red Cliff','Investigation Discovery',3,21,3,'A romatic story of couple.').

programa('Lost','Investigation Discovery',4,0,2,'I do not know how the film this, if they were lost.').
programa('Jurassic World','Investigation Discovery',4,2,1,'A zoo with dinosaurs as main atraction.').
programa('Snatch','Investigation Discovery',4,3,1,'A cyber virus takes down services.').
programa('Doom Patrol','Investigation Discovery',4,4,2,'A movie in memory of Doom Patrol.').
programa('The Magnificent Seven','Investigation Discovery',4,6,1,'Documentary about Number Theory.').
programa('The Siege of Jadotville','Investigation Discovery',4,7,1,'A reflexional film.').
programa('American Sniper','Investigation Discovery',4,8,1,'An america soldier go to Irak.').
programa('Jurassic World: Fallen Kingdom','Investigation Discovery',4,9,2,'Dinosaurs come from the past the rules now.').
programa('The Silence of the Lambs','Investigation Discovery',4,11,2,'A serial killer murder everybody in the town.').
programa('The Fighter','Investigation Discovery',4,13,1,'Fights between prisoners for freedom.').
programa('The Twilight Zone','Investigation Discovery',4,14,3,'A mine with too many resources is found by bad people.').
programa('Southpaw','Investigation Discovery',4,17,1,'A group of children find an infinite stone.').
programa('Sherlock','Investigation Discovery',4,18,2,'Holmes comes back to take revenge against Sherlock.').
programa('World War Z','Investigation Discovery',4,20,2,'In the memory of the 26th world war.').
programa('Battle Royale','Investigation Discovery',4,22,2,'Conflict between France and Spain.').

programa('Fact or Faked: Paranormal Files','Investigation Discovery',5,0,1,'Streamer who download paranormal files.').
programa('American Masters','Investigation Discovery',5,1,3,'School classes taught by american masters.').
programa('Equilibrium','Investigation Discovery',5,4,2,'Thanos wants to collect the infinite stones again.').
programa('Midsomer Murders','Investigation Discovery',5,6,2,'Killers confest all their murders on camera.').
programa('A Bittersweet Life','Investigation Discovery',5,8,1,'A love, passion and hate story.').
programa('Aaron Stone','Investigation Discovery',5,9,1,'He looks to find a powerfull stone to control the world.').
programa('Live Free or Die Hard','Investigation Discovery',5,10,1,'Pentagono fights againts his best agents.').
programa('Darkland','Investigation Discovery',5,11,1,'A tribu that do not have contact with the technoly yet.').
programa('Juvies','Investigation Discovery',5,12,2,'I do not know what is Juvies?').
programa('Gladiator','Investigation Discovery',5,14,1,'Ex boxer enter into a tournament in prison.').
programa('MythBusters','Investigation Discovery',5,15,2,'They bust the Cazafantasmas').
programa('Run All Night','Investigation Discovery',5,17,1,'A thiller film of a ghost that attacks at the night.').
programa('Body of Lies','Investigation Discovery',5,18,2,'A girl secret life is expose.').
programa('Hacksaw Ridge','Investigation Discovery',5,20,1,'A thrill move with Hacksaw as protagonist.').
programa('Man on Fire','Investigation Discovery',5,21,3,'A millionare guy meet a lot of girls.').

programa('Criminal Minds','Investigation Discovery',6,0,3,'Madophs favorite serie.').
programa('2 Fast 2 Furious','Investigation Discovery',6,3,1,'Clandestine rices in the streets of USA.').
programa('Dude, What Would Happen','Investigation Discovery',6,4,2,'What if, the big question is aswered here.').
programa('Jack Reacher','Investigation Discovery',6,6,1,'The story of the unfamous serial killer.').
programa('Star Trek: The Next Generation','Investigation Discovery',6,7,1,'The next generation of Start Trek.').
programa('Tears of the Sun','Investigation Discovery',6,8,1,'The earth become drier because contamination.').
programa('The Departed','Investigation Discovery',6,9,3,'A secret detective, investigate his past.').
programa('Thor: The Dark World','Investigation Discovery',6,12,1,'Thor is not the god of thunder anymore.').
programa('Mandy','Investigation Discovery',6,13,2,'I popular romantic novel.').
programa('Atomic Rulers of the World','Investigation Discovery',6,15,1,'Atom Squad rule the quantum world.').
programa('The Society','Investigation Discovery',6,16,3,'A entire society is in elections.').
programa('God Bless America','Investigation Discovery',6,19,2,'USA in the cold war.').
programa('The X-Files','Investigation Discovery',6,21,3,'I normal guy finds the secret of, why she does not love me?').


% Programación de Warner

programa('American Experience','Warner',0,0,2,'Talks about mexicans experiences about crossing the boundary.').
programa('Angel','Warner',0,2,3,'An angel falls in love with a beautiful woman, and becomes a human for a moment.').
programa('Hot Fuzz','Warner',0,5,1,'Learn how to cook with easy tips.').
programa('A Hard Day','Warner',0,6,3,'A romatic story to two person from diferent countries.').
programa('Zombieland','Warner',0,9,3,'An island is infected by a virus.').
programa('ALF','Warner',0,12,3,'Tv show that is starring by an alien.').
programa('American Masters','Warner',0,15,2,'School classes taught by american masters.').
programa('Pretty Little Liars','Warner',0,17,3,'The truth about girls is finally discovered.').
programa('Shaolin Soccer','Warner',0,20,3,'A documents about Shaolin Monks.').
programa('Arrow','Warner',0,23,1,'Arrowman takes revenge.').

programa('A Taxi Driver','Warner',1,0,1,'A girl rice in illegas taxi races.').
programa('Transporter 2','Warner',1,1,1,'The best driver recues a readhead.').
programa('Triad Election','Warner',1,2,3,'3 main leaders the lead at the elections in Mexico.').
programa('God Bless America','Warner',1,5,3,'USA in the cold war.').
programa('Designated Survivor','Warner',1,8,1,'A live of a designated survivor.').
programa('Shooter','Warner',1,9,1,'An ex soldier fight the mafia by himself.').
programa('Hardcore Henry','Warner',1,10,3,'A comedy film.').
programa('How to Get Away with Murder','Warner',1,13,2,'Tips and trick about murdering.').
programa('Midsomer Murders','Warner',1,15,2,'Killers confest all their murders on camera.').
programa('Sin City','Warner',1,17,3,'3 girls go to the Vegas.').
programa('Overlord','Warner',1,20,2,'An alien invasion takes control over the earth.').
programa('The Fate of the Furious','Warner',1,22,2,'A film based in the legend call the furious.').

programa('Darkland','Warner',2,0,1,'A tribu that do not have contact with the technoly yet.').
programa('Polar','Warner',2,1,1,'A guy and a polar bear becomes friends.').
programa('Aquila','Warner',2,2,3,'King of the acient ones return to the present to take control over the world.').
programa('Dredd','Warner',2,5,3,'The real story of Dredd life.').
programa('Jurassic World: Fallen Kingdom','Warner',2,8,2,'Dinosaurs come from the past the rules now.').
programa('Drive','Warner',2,10,3,'Clandestine races take place in Mexico.').
programa('Mard Ko Dard Nahin Hota','Warner',2,13,3,'An classcal asian film.').
programa('The Haunting of Hill House','Warner',2,16,2,'A ghost hunts down a family in its own house.').
programa('Red Cliff','Warner',2,18,1,'A romatic story of couple.').
programa('13 Assassins','Warner',2,19,1,'13 assassing are drop in a isolated island.').
programa('Furious 7','Warner',2,20,1,'Clandestine rices in the streets of Japan.').
programa('Django Unchained','Warner',2,21,3,'A figher it let unchained.').

programa('Bones','Warner',3,0,3,'I group of expert analize post-morten corpses.').
programa('Gotham','Warner',3,3,2,'Batman rides his new car in New York city.').
programa('Atomic Blonde','Warner',3,5,1,'A blonde become a superhero.').
programa('The Last Samurai','Warner',3,6,1,'Japanese film of samurais lifestyle.').
programa('RED','Warner',3,7,1,'A virus is infecting people in Spain.').
programa('Aaron Stone','Warner',3,8,2,'He looks to find a powerfull stone to control the world.').
programa('Taboo','Warner',3,10,3,'Documental with the most weird practices.').
programa('Gladiator','Warner',3,13,1,'Ex boxer enter into a tournament in prison.').
programa('Doom Patrol','Warner',3,14,1,'A movie in memory of Doom Patrol.').
programa('FBI','Warner',3,15,2,'Facebook Broncos Investigation.').
programa('No Country for Old Men','Warner',3,17,2,'All old men are take out from the country.').
programa('The Fast and the Furious','Warner',3,19,1,'Clandestine rices in the streets of Mexico.').
programa('Fearless','Warner',3,20,2,'A man with no fear fight againt the crime.').
programa('Secrets & Mysteries','Warner',3,22,2,'Talks about the difference between a secret and a mystery.').

programa('Equilibrium','Warner',4,0,3,'Thanos wants to collect the infinite stones again.').
programa('Hacksaw Ridge','Warner',4,3,2,'A thrill move with Hacksaw as protagonist.').
programa('Perfect Stranger','Warner',4,5,1,'A stranger who is so beautiful.').
programa('Prison Break','Warner',4,6,1,'Hulk is taken in prison, so he needs to break the prison.').
programa('Mandy','Warner',4,7,3,'I popular romantic novel.').
programa('Fast & Furious 6','Warner',4,10,3,'Clandestine rices in the streets of Russia.').
programa('Dark','Warner',4,13,2,'A smart girl take a photo of a black hole.').
programa('The Originals','Warner',4,15,3,'A rock band become famous.').
programa('Amanda and the Alien','Warner',4,18,3,'A girl falls in love with a handsome alien.').
programa('Nightcrawler','Warner',4,21,3,'A mutant with the power of teletransport.').

programa('Ant-Man','Warner',5,0,2,'A here with the power of resize like vector in C++.').
programa('The Magnificent Seven','Warner',5,2,2,'Documentary about Number Theory.').
programa('Transformers','Warner',5,4,3,'Car that becomes robots.').
programa('The Night Comes for Us','Warner',5,7,2,'The story of the moon and the sun.').
programa('Game Night','Warner',5,9,3,'Documentary about shuffle games play at the night.').
programa('Free Fire','Warner',5,12,2,'A group of people fight for freedom.').
programa('Biography','Warner',5,14,1,'A studing rewriting biographies for homework.').
programa('Beyond Belief: Fact or Fiction','Warner',5,15,1,'Prolog with facts and fictions modules.').
programa('Unstoppable','Warner',5,16,2,'A sick guy become a mastermind.').
programa('Point Blank','Warner',5,18,1,'Eyehawks become a superhero in Los Angeles.').
programa('Train to Busan','Warner',5,19,2,'A girl travels to Busan to meet her love.').
programa('Altered Carbon','Warner',5,21,3,'Franchise from Need for Speed Carbon version Altered.').

programa('The Fix','Warner',6,0,3,'A radical solution is implemented in current society.').
programa('The Expendables','Warner',6,3,1,'The most leathal superheros together.').
programa('Line of Duty','Warner',6,4,2,'Stay away of the line, or you will regret it.').
programa('Bumblebee','Warner',6,6,2,'A transformer wants to interact with humans.').
programa('The Expanse','Warner',6,8,1,'Explains the origin of the live and death.').
programa('Battle Royale','Warner',6,9,3,'Conflict between France and Spain.').
programa('Astronauts','Warner',6,12,2,'A gruop of astronauts go to the moon.').
programa('The Blacklist','Warner',6,14,3,'Teacher list with the most unrated students.').
programa('A History of Violence','Warner',6,17,3,'Documentary of the second world war').
programa('The 100','Warner',6,20,2,'Social experiment for 1 million of subscribers.').
programa('Star Trek: The Next Generation','Warner',6,22,2,'The next generation of Start Trek.').


% Programación de Azteca 7

programa('House of Flying Daggers','Azteca 7',0,0,2,'A classical film from ninjas of Japan.').
programa('Wind River','Azteca 7',0,2,3,'Documentary about the Wind River in the Amazonas.').
programa('Tears of the Sun','Azteca 7',0,5,2,'The earth become drier because contamination.').
programa('For Love or Money','Azteca 7',0,7,2,'A romantic novel which expose the dark size of the girls.').
programa('Westworld','Azteca 7',0,9,3,'Eastwork meets westworld, and another stuff.').
programa('Atom Squad','Azteca 7',0,12,2,'A group of atoms friends makes a party.').
programa('Fearless','Azteca 7',0,14,1,'A man with no fear fight againt the crime.').
programa('Darkland','Azteca 7',0,15,1,'A tribu that do not have contact with the technoly yet.').
programa('Underworld','Azteca 7',0,16,1,'A moder civilazation beneath the earth.').
programa('The Departed','Azteca 7',0,17,1,'A secret detective, investigate his past.').
programa('True Blood','Azteca 7',0,18,3,'A guy with family troubles.').
programa('American Masters','Azteca 7',0,21,3,'School classes taught by american masters.').

programa('The Transporter','Azteca 7',1,0,3,'The best driver fight againt the mafia.').
programa('Transporter 2','Azteca 7',1,3,1,'The best driver recues a readhead.').
programa('Transporter 3','Azteca 7',1,4,2,'Jason Stathan investigate the death of his father.').
programa('The Villainess','Azteca 7',1,6,1,'The villians get together to fight the avengers.').
programa('Zombieland','Azteca 7',1,7,1,'An island is infected by a virus.').
programa('Altered Carbon','Azteca 7',1,8,2,'Franchise from Need for Speed Carbon version Altered.').
programa('The Age of Shadows','Azteca 7',1,10,3,'Shadows from the outter space visits the earth.').
programa('Doom Patrol','Azteca 7',1,13,2,'A movie in memory of Doom Patrol.').
programa('The Jungle Book','Azteca 7',1,15,2,'A little childs is rise by monkeys.').
programa('Train to Busan','Azteca 7',1,17,3,'A girl travels to Busan to meet her love.').
programa('Live Free or Die Hard','Azteca 7',1,20,2,'Pentagono fights againts his best agents.').
programa('The Society','Azteca 7',1,22,2,'A entire society is in elections.').

programa('The Fighter','Azteca 7',2,0,2,'Fights between prisoners for freedom.').
programa('Gladiator','Azteca 7',2,2,1,'Ex boxer enter into a tournament in prison.').
programa('The OA','Azteca 7',2,3,3,'A parogy of Questions and Answers.').
programa('Jurassic World','Azteca 7',2,6,1,'A zoo with dinosaurs as main atraction.').
programa('A Hard Day','Azteca 7',2,7,3,'A romatic story to two person from diferent countries.').
programa('Call 911','Azteca 7',2,10,2,'Why are you reading this?, go and call 911.').
programa('No Country for Old Men','Azteca 7',2,12,2,'All old men are take out from the country.').
programa('American Gods','Azteca 7',2,14,3,'I tells the culture and religion of americans.').
programa('Ant-Man','Azteca 7',2,17,1,'A here with the power of resize like vector in C++.').
programa('Ichi the Killer','Azteca 7',2,18,2,'The story of a serial killer from Czech.').
programa('Prison Break','Azteca 7',2,20,2,'Hulk is taken in prison, so he needs to break the prison.').
programa('Wanted','Azteca 7',2,22,2,'A thief running out from the police.').

programa('The Fate of the Furious','Azteca 7',3,0,3,'A film based in the legend call the furious.').
programa('Run All Night','Azteca 7',3,3,2,'A thiller film of a ghost that attacks at the night.').
programa('The Joy of Painting','Azteca 7',3,5,1,'A movie where they enjoy painting').
programa('American Made','Azteca 7',3,6,2,'This made by american people.').
programa('Upgrade','Azteca 7',3,8,3,'Tv show where they tune your machine.').
programa('NCIS','Azteca 7',3,11,3,'A investigation team with too many episodes.').
programa('Riverdale','Azteca 7',3,14,1,'A guy called Dale is lost in a river.').
programa('Furious 7','Azteca 7',3,15,2,'Clandestine rices in the streets of Japan.').
programa('Dawn of the Dead','Azteca 7',3,17,3,'Zombies rules the world.').
programa('ALF','Azteca 7',3,20,2,'Tv show that is starring by an alien.').
programa('Dexter','Azteca 7',3,22,2,'A brutal detective of killer it its freetime.').

programa('End of Watch','Azteca 7',4,0,3,'A group of people tries to avoid the end of the world.').
programa('American Experience','Azteca 7',4,3,2,'Talks about mexicans experiences about crossing the boundary.').
programa('Atomic Blonde','Azteca 7',4,5,1,'A blonde become a superhero.').
programa('Shooter','Azteca 7',4,6,1,'An ex soldier fight the mafia by himself.').
programa('Biography','Azteca 7',4,7,2,'A studing rewriting biographies for homework.').
programa('Unstoppable','Azteca 7',4,9,3,'A sick guy become a mastermind.').
programa('The Vampire Diaries','Azteca 7',4,12,2,'A vampire reads alaud all his memories.').
programa('How to Get Away with Murder','Azteca 7',4,14,3,'Tips and trick about murdering.').
programa('Kiss Kiss Bang Bang','Azteca 7',4,17,2,'A true story of love and hate.').
programa('Haunted Lives: True Ghost Stories','Azteca 7',4,19,2,'Stories of ghost become true, so state tune.').
programa('Bones','Azteca 7',4,21,3,'I group of expert analize post-morten corpses.').

programa('Oldboy','Azteca 7',5,0,1,'A comedy film of a old gut who thinks that is a child.').
programa('Secrets & Mysteries','Azteca 7',5,1,3,'Talks about the difference between a secret and a mystery.').
programa('House','Azteca 7',5,4,2,'I serial killer drags his victims to his house.').
programa('Criminal Minds','Azteca 7',5,6,2,'Madophs favorite serie.').
programa('Django Unchained','Azteca 7',5,8,1,'A figher it let unchained.').
programa('Blood Father','Azteca 7',5,9,1,'A man knows his father by the first time.').
programa('Infernal Affairs','Azteca 7',5,10,2,'The earth is affected by paranormal agents.').
programa('Blindspot','Azteca 7',5,12,2,'A gruop of ninjas moves throughout the blindspots.').
programa('Big Little Lies','Azteca 7',5,14,3,'Giants who tell little lies, that is all.').
programa('Sin City','Azteca 7',5,17,1,'3 girls go to the Vegas.').
programa('Line of Duty','Azteca 7',5,18,2,'Stay away of the line, or you will regret it.').
programa('Aaron Stone','Azteca 7',5,20,3,'He looks to find a powerfull stone to control the world.').
programa('Destination Truth','Azteca 7',5,23,1,'It reveals the truth about destination.').

programa('Rambo','Azteca 7',6,0,3,'Soldier who fight for the freedom of the people.').
programa('Den of Thieves','Azteca 7',6,3,1,'Family thieves run away from the justice.').
programa('Ascension','Azteca 7',6,4,3,'3 girls decide to climb down into a hole, and they find with their worst nightmare.').
programa('The Last Samurai','Azteca 7',6,7,2,'Japanese film of samurais lifestyle.').
programa('Avengers','Azteca 7',6,9,1,'Avenger release his 20th movie with more action and characters.').
programa('Bumblebee','Azteca 7',6,10,3,'A transformer wants to interact with humans.').
programa('Grindhouse','Azteca 7',6,13,1,'Misterious corpes appear in England.').
programa('Legacies','Azteca 7',6,14,2,'Discover the truth behind the mafia.').
programa('World War Z','Azteca 7',6,16,2,'In the memory of the 26th world war.').
programa('Tomb Raider','Azteca 7',6,18,3,'Action films recorded in Egypt.').
programa('Snatch','Azteca 7',6,21,3,'A cyber virus takes down services.').


% Programación de Platino

programa('Midsomer Murders','Platino',0,0,2,'Killers confest all their murders on camera.').
programa('Snatch','Platino',0,2,2,'A cyber virus takes down services.').
programa('Men in Black 3','Platino',0,4,2,'3 highschool guy meets again after 30 years.').
programa('RED','Platino',0,6,2,'A virus is infecting people in Spain.').
programa('Django Unchained','Platino',0,8,2,'A figher it let unchained.').
programa('Ant-Man','Platino',0,10,3,'A here with the power of resize like vector in C++.').
programa('Tears of the Sun','Platino',0,13,2,'The earth become drier because contamination.').
programa('Jack Reacher','Platino',0,15,3,'The story of the unfamous serial killer.').
programa('Inglourious Basterds','Platino',0,18,1,'Action movie from the seventees.').
programa('The Night Comes for Us','Platino',0,19,1,'The story of the moon and the sun.').
programa('The Man from Nowhere','Platino',0,20,1,'A man travel from the future to the past.').
programa('No Country for Old Men','Platino',0,21,3,'All old men are take out from the country.').

programa('Supernatural','Platino',1,0,2,'Cazafantasmas rise again.').
programa('Red Cliff','Platino',1,2,2,'A romatic story of couple.').
programa('Thor: The Dark World','Platino',1,4,3,'Thor is not the god of thunder anymore.').
programa('World War Z','Platino',1,7,2,'In the memory of the 26th world war.').
programa('Aaron Stone','Platino',1,9,3,'He looks to find a powerfull stone to control the world.').
programa('Gotham','Platino',1,12,2,'Batman rides his new car in New York city.').
programa('King Kong','Platino',1,14,3,'A giant kong kidnapped a girl.').
programa('The Joy of Painting','Platino',1,17,1,'A movie where they enjoy painting').
programa('Amanda and the Alien','Platino',1,18,1,'A girl falls in love with a handsome alien.').
programa('Free Fire','Platino',1,19,1,'A group of people fight for freedom.').
programa('Line of Duty','Platino',1,20,3,'Stay away of the line, or you will regret it.').
programa('Fast & Furious 6','Platino',1,23,1,'Clandestine rices in the streets of Russia.').

programa('Sin City','Platino',2,0,3,'3 girls go to the Vegas.').
programa('The Siege of Jadotville','Platino',2,3,3,'A reflexional film.').
programa('True Blood','Platino',2,6,2,'A guy with family troubles.').
programa('Star Trek: The Next Generation','Platino',2,8,1,'The next generation of Start Trek.').
programa('The OA','Platino',2,9,3,'A parogy of Questions and Answers.').
programa('The Town','Platino',2,12,2,'A ghost town is visited again.').
programa('The Expanse','Platino',2,14,2,'Explains the origin of the live and death.').
programa('For Love or Money','Platino',2,16,2,'A romantic novel which expose the dark size of the girls.').
programa('Bronson','Platino',2,18,3,'I little boy wants to become a professional NBA player.').
programa('Computer Chronicles','Platino',2,21,3,'A supercomputer tells the truth about machines.').

programa('Triad Election','Platino',3,0,2,'3 main leaders the lead at the elections in Mexico.').
programa('Overlord','Platino',3,2,3,'An alien invasion takes control over the earth.').
programa('Dark','Platino',3,5,2,'A smart girl take a photo of a black hole.').
programa('God Bless America','Platino',3,7,1,'USA in the cold war.').
programa('Jurassic World: Fallen Kingdom','Platino',3,8,3,'Dinosaurs come from the past the rules now.').
programa('Rambo','Platino',3,11,3,'Soldier who fight for the freedom of the people.').
programa('V for Vendetta','Platino',3,14,3,'An anonymous take revenge in the name of the freedom.').
programa('Astronauts','Platino',3,17,2,'A gruop of astronauts go to the moon.').
programa('Polar','Platino',3,19,1,'A guy and a polar bear becomes friends.').
programa('Hacksaw Ridge','Platino',3,20,1,'A thrill move with Hacksaw as protagonist.').
programa('Prison Break','Platino',3,21,3,'Hulk is taken in prison, so he needs to break the prison.').

programa('Body of Lies','Platino',4,0,2,'A girl secret life is expose.').
programa('Bones','Platino',4,2,1,'I group of expert analize post-morten corpses.').
programa('A Taxi Driver','Platino',4,3,2,'A girl rice in illegas taxi races.').
programa('Sherlock','Platino',4,5,3,'Holmes comes back to take revenge against Sherlock.').
programa('The 100','Platino',4,8,1,'Social experiment for 1 million of subscribers.').
programa('Point Blank','Platino',4,9,2,'Eyehawks become a superhero in Los Angeles.').
programa('Equilibrium','Platino',4,11,1,'Thanos wants to collect the infinite stones again.').
programa('The Silence of the Lambs','Platino',4,12,2,'A serial killer murder everybody in the town.').
programa('The Jungle Book','Platino',4,14,1,'A little childs is rise by monkeys.').
programa('The Age of Shadows','Platino',4,15,1,'Shadows from the outter space visits the earth.').
programa('Run All Night','Platino',4,16,3,'A thiller film of a ghost that attacks at the night.').
programa('The Fighter','Platino',4,19,1,'Fights between prisoners for freedom.').
programa('Grindhouse','Platino',4,20,2,'Misterious corpes appear in England.').
programa('Mandy','Platino',4,22,2,'I popular romantic novel.').

programa('Destination Truth','Platino',5,0,3,'It reveals the truth about destination.').
programa('Underworld','Platino',5,3,3,'A moder civilazation beneath the earth.').
programa('Taboo','Platino',5,6,1,'Documental with the most weird practices.').
programa('Infernal Affairs','Platino',5,7,3,'The earth is affected by paranormal agents.').
programa('Criminal Minds','Platino',5,10,3,'Madophs favorite serie.').
programa('Gladiator','Platino',5,13,2,'Ex boxer enter into a tournament in prison.').
programa('Transporter 3','Platino',5,15,1,'Jason Stathan investigate the death of his father.').
programa('Machete','Platino',5,16,3,'3 guys camp outside new mexico.').
programa('Furious 7','Platino',5,19,1,'Clandestine rices in the streets of Japan.').
programa('Black Hawk Down','Platino',5,20,3,'Eyehawk meet his worst nightmare.').
programa('The Haunting of Hill House','Platino',5,23,1,'A ghost hunts down a family in its own house.').

programa('Drive','Platino',6,0,2,'Clandestine races take place in Mexico.').
programa('Atomic Blonde','Platino',6,2,2,'A blonde become a superhero.').
programa('Thor','Platino',6,4,2,'Thos gods of the thunder fights againts frozen giants.').
programa('Zombieland','Platino',6,6,3,'An island is infected by a virus.').
programa('The Departed','Platino',6,9,1,'A secret detective, investigate his past.').
programa('Oldboy','Platino',6,10,3,'A comedy film of a old gut who thinks that is a child.').
programa('Game Night','Platino',6,13,1,'Documentary about shuffle games play at the night.').
programa('Avengers','Platino',6,14,1,'Avenger release his 20th movie with more action and characters.').
programa('American Masters','Platino',6,15,2,'School classes taught by american masters.').
programa('A Bittersweet Life','Platino',6,17,3,'A love, passion and hate story.').
programa('The Transporter','Platino',6,20,2,'The best driver fight againt the mafia.').
programa('Transporter 2','Platino',6,22,2,'The best driver recues a readhead.').


