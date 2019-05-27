canal('Azteca 7',99).
canal('History',151).
canal('Space',253).
canal('Warner',437).
canal('Platino',525).
canal('Investigation Discovery',531).
canal('Fox',541).
canal('Cinema',583).
canal('Star Movies',654).
canal('Sony',795).

% Reglas

getCanales(X,Y) :- forall(canal(X,Y),imprimeCanal(X)).
getProgramacion(Nombre,Canal,Dia,Hora,Duracion) :- forall(programa(Nombre,Canal,Dia,Hora,Duracion), imprimeInfo(Nombre,Canal,Dia,Hora,Duracion)).
imprimeInfo(A,B,C,D,E) :-separa(A),imprimeCanal2(B),separa(C),separa(D),separa(E),nl.
separa(X) :- write('|'), write(X).
imprimeCanal(X) :- canal(X,Y),write(X),write('|'),write(Y),nl.
imprimeCanal2(X) :- canal(X,Y),write('|'),write(X),write('|'),write(Y).

% Programación de Azteca 7

programa('Biography','Azteca 7',0,0,2).
programa('The Twilight Zone','Azteca 7',0,2,2).
programa('Run All Night','Azteca 7',0,4,2).
programa('Body of Lies','Azteca 7',0,6,2).
programa('For Love or Money','Azteca 7',0,8,2).
programa('Den of Thieves','Azteca 7',0,10,1).
programa('Juvies','Azteca 7',0,11,3).
programa('Darkland','Azteca 7',0,14,1).
programa('Thor','Azteca 7',0,15,1).
programa('Aaron Stone','Azteca 7',0,16,1).
programa('Equilibrium','Azteca 7',0,17,1).
programa('The Fix','Azteca 7',0,18,2).
programa('Deepwater Horizon','Azteca 7',0,20,1).
programa('Machete','Azteca 7',0,21,3).

programa('The Departed','Azteca 7',1,0,1).
programa('Dude, What Would Happen','Azteca 7',1,1,1).
programa('Criminal Minds','Azteca 7',1,2,3).
programa('Jurassic World','Azteca 7',1,5,2).
programa('The Originals','Azteca 7',1,7,2).
programa('Transporter 3','Azteca 7',1,9,1).
programa('Dredd','Azteca 7',1,10,2).
programa('The Expendables','Azteca 7',1,12,2).
programa('Upgrade','Azteca 7',1,14,2).
programa('Stranger Things','Azteca 7',1,16,2).
programa('The Awful Truth','Azteca 7',1,18,3).
programa('Ichi the Killer','Azteca 7',1,21,3).

programa('MythBusters','Azteca 7',2,0,1).
programa('Atom Squad','Azteca 7',2,1,2).
programa('Train to Busan','Azteca 7',2,3,1).
programa('Gotham','Azteca 7',2,4,3).
programa('King Kong','Azteca 7',2,7,1).
programa('Altered Carbon','Azteca 7',2,8,2).
programa('Sin City','Azteca 7',2,10,2).
programa('American Masters','Azteca 7',2,12,2).
programa('Shooter','Azteca 7',2,14,2).
programa('The Joy of Painting','Azteca 7',2,16,1).
programa('Blood and Bone','Azteca 7',2,17,2).
programa('Bronson','Azteca 7',2,19,1).
programa('The Fate of the Furious','Azteca 7',2,20,2).
programa('The Siege of Jadotville','Azteca 7',2,22,2).

programa('Amanda and the Alien','Azteca 7',3,0,2).
programa('God Bless America','Azteca 7',3,2,1).
programa('Mard Ko Dard Nahin Hota','Azteca 7',3,3,3).
programa('Call 911','Azteca 7',3,6,2).
programa('Harsh Times','Azteca 7',3,8,1).
programa('The Haunting of Hill House','Azteca 7',3,9,2).
programa('Jack Reacher','Azteca 7',3,11,3).
programa('Along with the Gods: The Two Worlds','Azteca 7',3,14,1).
programa('A Bittersweet Life','Azteca 7',3,15,3).
programa('The Man from Nowhere','Azteca 7',3,18,3).
programa('The 100','Azteca 7',3,21,3).

programa('House','Azteca 7',4,0,2).
programa('American Made','Azteca 7',4,2,3).
programa('Kiss Kiss Bang Bang','Azteca 7',4,5,3).
programa('Sherlock','Azteca 7',4,8,3).
programa('Man on Fire','Azteca 7',4,11,3).
programa('Gladiator','Azteca 7',4,14,3).
programa('Dawn of the Dead','Azteca 7',4,17,1).
programa('Designated Survivor','Azteca 7',4,18,1).
programa('Fast & Furious 6','Azteca 7',4,19,1).
programa('Triad Election','Azteca 7',4,20,2).
programa('True Blood','Azteca 7',4,22,2).

programa('Blindspot','Azteca 7',5,0,1).
programa('Ascension','Azteca 7',5,1,1).
programa('Wanted','Azteca 7',5,2,2).
programa('The Jungle Book','Azteca 7',5,4,1).
programa('The OA','Azteca 7',5,5,1).
programa('Pretty Little Liars','Azteca 7',5,6,3).
programa('Doctor Who','Azteca 7',5,9,3).
programa('How to Get Away with Murder','Azteca 7',5,12,1).
programa('The Fast and the Furious','Azteca 7',5,13,3).
programa('The Great Battle','Azteca 7',5,16,2).
programa('Doom Patrol','Azteca 7',5,18,1).
programa('Haunted Lives: True Ghost Stories','Azteca 7',5,19,2).
programa('Underworld','Azteca 7',5,21,3).

programa('Men in Black 3','Azteca 7',6,0,3).
programa('Shaolin Soccer','Azteca 7',6,3,2).
programa('Perfect Stranger','Azteca 7',6,5,2).
programa('Beyond Belief: Fact or Fiction','Azteca 7',6,7,2).
programa('No Country for Old Men','Azteca 7',6,9,2).
programa('Nightcrawler','Azteca 7',6,11,1).
programa('Bones','Azteca 7',6,12,2).
programa('Imposters','Azteca 7',6,14,2).
programa('The Town','Azteca 7',6,16,3).
programa('Justice League','Azteca 7',6,19,2).
programa('The Magnificent Seven','Azteca 7',6,21,3).


% Programación de History

programa('Black Hawk Down','History',0,0,1).
programa('Unstoppable','History',0,1,1).
programa('Harsh Times','History',0,2,2).
programa('A Hard Day','History',0,4,3).
programa('Snatch','History',0,7,2).
programa('Ichi the Killer','History',0,9,3).
programa('Watchdog','History',0,12,2).
programa('The Night Comes for Us','History',0,14,1).
programa('Sin City','History',0,15,3).
programa('Atom Squad','History',0,18,2).
programa('Overlord','History',0,20,2).
programa('Ancient Aliens','History',0,22,2).

programa('Mard Ko Dard Nahin Hota','History',1,0,3).
programa('Beyond Belief: Fact or Fiction','History',1,3,1).
programa('Transformers','History',1,4,3).
programa('Hot Fuzz','History',1,7,2).
programa('Atomic Blonde','History',1,9,1).
programa('Ninja Assassin','History',1,10,3).
programa('FBI','History',1,13,1).
programa('13 Assassins','History',1,14,3).
programa('Red Cliff','History',1,17,3).
programa('The Originals','History',1,20,2).
programa('Atomic Rulers of the World','History',1,22,2).

programa('The Fix','History',2,0,3).
programa('The Vampire Diaries','History',2,3,2).
programa('Secrets & Mysteries','History',2,5,1).
programa('Transporter 2','History',2,6,2).
programa('Live Free or Die Hard','History',2,8,1).
programa('Men in Black 3','History',2,9,2).
programa('Train to Busan','History',2,11,3).
programa('King Kong','History',2,14,3).
programa('Dawn of the Dead','History',2,17,1).
programa('Goon','History',2,18,1).
programa('RED','History',2,19,3).
programa('Along with the Gods: The Two Worlds','History',2,22,2).

programa('MythBusters','History',3,0,1).
programa('Imposters','History',3,1,1).
programa('Bones','History',3,2,2).
programa('A History of Violence','History',3,4,1).
programa('I Saw the Devil','History',3,5,2).
programa('Jurassic World','History',3,7,2).
programa('Juvies','History',3,9,2).
programa('Free Fire','History',3,11,3).
programa('Darkland','History',3,14,3).
programa('The Fate of the Furious','History',3,17,3).
programa('Den of Thieves','History',3,20,2).
programa('Angel','History',3,22,2).

programa('13 Hours','History',4,0,2).
programa('Lost','History',4,2,3).
programa('Westworld','History',4,5,3).
programa('For Love or Money','History',4,8,1).
programa('Doom Patrol','History',4,9,3).
programa('Stranger Things','History',4,12,3).
programa('Mandy','History',4,15,3).
programa('Kiss Kiss Bang Bang','History',4,18,3).
programa('The Haunting of Hill House','History',4,21,3).

programa('Blood and Bone','History',5,0,2).
programa('The Expanse','History',5,2,1).
programa('Master and Commander: The Far Side of the World','History',5,3,1).
programa('The Silence of the Lambs','History',5,4,1).
programa('Book TV','History',5,5,1).
programa('Justice League','History',5,6,1).
programa('Warrior','History',5,7,1).
programa('Equilibrium','History',5,8,1).
programa('Blindspot','History',5,9,1).
programa('End of Watch','History',5,10,1).
programa('The Town','History',5,11,1).
programa('Prison Break','History',5,12,3).
programa('Arrow','History',5,15,2).
programa('Furious 7','History',5,17,2).
programa('Midsomer Murders','History',5,19,2).
programa('Avengers','History',5,21,3).

programa('The X-Files','History',6,0,3).
programa('Wanted','History',6,3,3).
programa('Underworld','History',6,6,3).
programa('How to Get Away with Murder','History',6,9,1).
programa('Body of Lies','History',6,10,1).
programa('Battle Royale','History',6,11,1).
programa('American Gangster','History',6,12,3).
programa('Fast & Furious 6','History',6,15,1).
programa('Election','History',6,16,2).
programa('Thor: Ragnarok','History',6,18,2).
programa('The Great Battle','History',6,20,3).
programa('ALF','History',6,23,1).


% Programación de Space

programa('Hot Fuzz','Space',0,0,2).
programa('Wind River','Space',0,2,3).
programa('Jack Reacher','Space',0,5,2).
programa('Jurassic World: Fallen Kingdom','Space',0,7,1).
programa('13 Assassins','Space',0,8,2).
programa('Angel','Space',0,10,3).
programa('Machete','Space',0,13,3).
programa('Dude, What Would Happen','Space',0,16,2).
programa('Legacies','Space',0,18,3).
programa('Criminal Minds','Space',0,21,3).

programa('The OA','Space',1,0,3).
programa('The Fix','Space',1,3,3).
programa('Book TV','Space',1,6,3).
programa('Stranger Things','Space',1,9,2).
programa('Ninja Assassin','Space',1,11,3).
programa('Supernatural','Space',1,14,3).
programa('Avengers','Space',1,17,3).
programa('Hardcore Henry','Space',1,20,1).
programa('King Kong','Space',1,21,3).

programa('Thor','Space',2,0,3).
programa('Zodiac','Space',2,3,1).
programa('Computer Chronicles','Space',2,4,1).
programa('Blood Father','Space',2,5,1).
programa('Inglourious Basterds','Space',2,6,3).
programa('Black Hawk Down','Space',2,9,1).
programa('FBI','Space',2,10,2).
programa('Tomb Raider','Space',2,12,2).
programa('RED','Space',2,14,3).
programa('The Password to Larkspur Lane','Space',2,17,3).
programa('The Final Master','Space',2,20,1).
programa('The Fast and the Furious','Space',2,21,3).

programa('No Country for Old Men','Space',3,0,2).
programa('American Made','Space',3,2,3).
programa('The Expanse','Space',3,5,3).
programa('Transporter 2','Space',3,8,2).
programa('Juvies','Space',3,10,3).
programa('The Departed','Space',3,13,2).
programa('Deepwater Horizon','Space',3,15,2).
programa('Call 911','Space',3,17,1).
programa('2 Fast 2 Furious','Space',3,18,3).
programa('Atomic Blonde','Space',3,21,3).

programa('Westworld','Space',4,0,2).
programa('The Society','Space',4,2,3).
programa('Blindspot','Space',4,5,1).
programa('Kiss Kiss Bang Bang','Space',4,6,3).
programa('Big Little Lies','Space',4,9,1).
programa('God Bless America','Space',4,10,3).
programa('Lost','Space',4,13,1).
programa('Ascension','Space',4,14,2).
programa('American Gangster','Space',4,16,2).
programa('Apocalypto','Space',4,18,1).
programa('Watchdog','Space',4,19,1).
programa('MythBusters','Space',4,20,3).
programa('Homeland','Space',4,23,1).

programa('A Taxi Driver','Space',5,0,2).
programa('How to Get Away with Murder','Space',5,2,1).
programa('Ichi the Killer','Space',5,3,3).
programa('Secrets & Mysteries','Space',5,6,3).
programa('Dredd','Space',5,9,2).
programa('House of Flying Daggers','Space',5,11,3).
programa('The Man from Nowhere','Space',5,14,1).
programa('Train to Busan','Space',5,15,3).
programa('Serenity','Space',5,18,2).
programa('The Joy of Painting','Space',5,20,3).
programa('Taboo','Space',5,23,1).

programa('The Night Comes for Us','Space',6,0,3).
programa('The Transporter','Space',6,3,2).
programa('Unstoppable','Space',6,5,2).
programa('Doom Patrol','Space',6,7,2).
programa('Drive','Space',6,9,1).
programa('NCIS','Space',6,10,3).
programa('Battle Royale','Space',6,13,1).
programa('The Foreigner','Space',6,14,3).
programa('Beyond Belief: Fact or Fiction','Space',6,17,3).
programa('Destination Truth','Space',6,20,3).
programa('Ant-Man','Space',6,23,1).


% Programación de Warner

programa('Serenity','Warner',0,0,2).
programa('Aaron Stone','Warner',0,2,2).
programa('Hardcore Henry','Warner',0,4,1).
programa('Bones','Warner',0,5,3).
programa('Homeland','Warner',0,8,1).
programa('Sin City','Warner',0,9,1).
programa('Transporter 3','Warner',0,10,3).
programa('NCIS','Warner',0,13,1).
programa('Altered Carbon','Warner',0,14,1).
programa('The Fast and the Furious','Warner',0,15,1).
programa('Secrets & Mysteries','Warner',0,16,3).
programa('No Country for Old Men','Warner',0,19,1).
programa('Hacksaw Ridge','Warner',0,20,1).
programa('Biography','Warner',0,21,3).

programa('The Blacklist','Warner',1,0,2).
programa('Justice League','Warner',1,2,3).
programa('World War Z','Warner',1,5,3).
programa('Shooter','Warner',1,8,1).
programa('Big Little Lies','Warner',1,9,2).
programa('Stranger Things','Warner',1,11,1).
programa('The Transporter','Warner',1,12,3).
programa('I Saw the Devil','Warner',1,15,2).
programa('Southpaw','Warner',1,17,3).
programa('How to Get Away with Murder','Warner',1,20,2).
programa('Riverdale','Warner',1,22,2).

programa('Dark','Warner',2,0,2).
programa('Unstoppable','Warner',2,2,3).
programa('Underworld','Warner',2,5,3).
programa('American Gods','Warner',2,8,2).
programa('Snatch','Warner',2,10,2).
programa('Furious 7','Warner',2,12,2).
programa('Red Cliff','Warner',2,14,1).
programa('Fast & Furious 6','Warner',2,15,2).
programa('Atomic Rulers of the World','Warner',2,17,1).
programa('Triad Election','Warner',2,18,2).
programa('Atomic Blonde','Warner',2,20,3).
programa('Arrow','Warner',2,23,1).

programa('The Town','Warner',3,0,1).
programa('Twin Peaks','Warner',3,1,3).
programa('Game Night','Warner',3,4,1).
programa('Deepwater Horizon','Warner',3,5,2).
programa('Doom Patrol','Warner',3,7,3).
programa('Nightcrawler','Warner',3,10,2).
programa('True Detective','Warner',3,12,1).
programa('Amanda and the Alien','Warner',3,13,3).
programa('The Departed','Warner',3,16,1).
programa('BodyShaping','Warner',3,17,3).
programa('Bumblebee','Warner',3,20,3).
programa('Drive','Warner',3,23,1).

programa('The X-Files','Warner',4,0,3).
programa('13 Assassins','Warner',4,3,2).
programa('Darkland','Warner',4,5,3).
programa('Body of Lies','Warner',4,8,1).
programa('Dredd','Warner',4,9,1).
programa('The Night Comes for Us','Warner',4,10,1).
programa('The Villainess','Warner',4,11,2).
programa('Kiss Kiss Bang Bang','Warner',4,13,1).
programa('Bronson','Warner',4,14,1).
programa('Free Fire','Warner',4,15,3).
programa('Gotham','Warner',4,18,1).
programa('Blindspot','Warner',4,19,2).
programa('Salt','Warner',4,21,3).

programa('Jack Reacher','Warner',5,0,2).
programa('Midsomer Murders','Warner',5,2,1).
programa('Inglourious Basterds','Warner',5,3,2).
programa('Doctor Who','Warner',5,5,2).
programa('The Fighter','Warner',5,7,2).
programa('House of Flying Daggers','Warner',5,9,3).
programa('Infernal Affairs','Warner',5,12,1).
programa('Transporter 2','Warner',5,13,1).
programa('Dude, What Would Happen','Warner',5,14,2).
programa('Juvies','Warner',5,16,3).
programa('ALF','Warner',5,19,1).
programa('Prison Break','Warner',5,20,2).
programa('House','Warner',5,22,2).

programa('Oldboy','Warner',6,0,2).
programa('FBI','Warner',6,2,2).
programa('The Last Samurai','Warner',6,4,1).
programa('Mandy','Warner',6,5,2).
programa('Train to Busan','Warner',6,7,1).
programa('Wanted','Warner',6,8,2).
programa('The Final Master','Warner',6,10,1).
programa('Tears of the Sun','Warner',6,11,1).
programa('Criminal Minds','Warner',6,12,1).
programa('Grindhouse','Warner',6,13,2).
programa('The Society','Warner',6,15,2).
programa('The Siege of Jadotville','Warner',6,17,1).
programa('Imposters','Warner',6,18,3).
programa('The Expendables','Warner',6,21,3).


% Programación de Platino

programa('Juvies','Platino',0,0,2).
programa('Serenity','Platino',0,2,3).
programa('Overlord','Platino',0,5,2).
programa('Bronson','Platino',0,7,2).
programa('Secrets & Mysteries','Platino',0,9,1).
programa('The Night Comes for Us','Platino',0,10,2).
programa('Black Hawk Down','Platino',0,12,3).
programa('Transporter 3','Platino',0,15,2).
programa('Pretty Little Liars','Platino',0,17,1).
programa('True Detective','Platino',0,18,3).
programa('Tomb Raider','Platino',0,21,3).

programa('American Made','Platino',1,0,1).
programa('Dexter','Platino',1,1,3).
programa('13 Assassins','Platino',1,4,3).
programa('World War Z','Platino',1,7,1).
programa('Designated Survivor','Platino',1,8,2).
programa('Hot Fuzz','Platino',1,10,1).
programa('NCIS','Platino',1,11,3).
programa('MythBusters','Platino',1,14,1).
programa('Triad Election','Platino',1,15,3).
programa('Doom Patrol','Platino',1,18,1).
programa('Point Blank','Platino',1,19,1).
programa('2 Fast 2 Furious','Platino',1,20,1).
programa('Fearless','Platino',1,21,3).

programa('The Silence of the Lambs','Platino',2,0,3).
programa('Destination Truth','Platino',2,3,1).
programa('God Bless America','Platino',2,4,2).
programa('Red Cliff','Platino',2,6,1).
programa('Grindhouse','Platino',2,7,1).
programa('The Age of Shadows','Platino',2,8,2).
programa('Zodiac','Platino',2,10,2).
programa('Dark','Platino',2,12,2).
programa('American Sniper','Platino',2,14,3).
programa('Haunted Lives: True Ghost Stories','Platino',2,17,1).
programa('Game Night','Platino',2,18,3).
programa('Taboo','Platino',2,21,3).

programa('Zombieland','Platino',3,0,3).
programa('Jack Reacher','Platino',3,3,2).
programa('The Jungle Book','Platino',3,5,1).
programa('Den of Thieves','Platino',3,6,1).
programa('Train to Busan','Platino',3,7,1).
programa('American Gods','Platino',3,8,1).
programa('The Departed','Platino',3,9,1).
programa('Fact or Faked: Paranormal Files','Platino',3,10,2).
programa('I Saw the Devil','Platino',3,12,2).
programa('The Expanse','Platino',3,14,2).
programa('Jurassic World: Fallen Kingdom','Platino',3,16,1).
programa('Polar','Platino',3,17,1).
programa('Bumblebee','Platino',3,18,2).
programa('Criminal Minds','Platino',3,20,3).
programa('13 Hours','Platino',3,23,1).

programa('American Experience','Platino',4,0,2).
programa('Gotham','Platino',4,2,1).
programa('Hacksaw Ridge','Platino',4,3,1).
programa('The Originals','Platino',4,4,2).
programa('Thor: Ragnarok','Platino',4,6,1).
programa('The Surgical Strike','Platino',4,7,2).
programa('Line of Duty','Platino',4,9,3).
programa('A Bittersweet Life','Platino',4,12,3).
programa('Aquila','Platino',4,15,1).
programa('Book TV','Platino',4,16,3).
programa('The Blacklist','Platino',4,19,1).
programa('Snatch','Platino',4,20,2).
programa('Fast & Furious 6','Platino',4,22,2).

programa('Body of Lies','Platino',5,0,1).
programa('The Fast and the Furious','Platino',5,1,2).
programa('Sin City','Platino',5,3,3).
programa('Big Little Lies','Platino',5,6,3).
programa('Election','Platino',5,9,1).
programa('A Hard Day','Platino',5,10,3).
programa('Dude, What Would Happen','Platino',5,13,2).
programa('Inglourious Basterds','Platino',5,15,2).
programa('Prison Break','Platino',5,17,2).
programa('The Fate of the Furious','Platino',5,19,2).
programa('Free Fire','Platino',5,21,3).

programa('Call 911','Platino',6,0,1).
programa('Midsomer Murders','Platino',6,1,3).
programa('Live Free or Die Hard','Platino',6,4,3).
programa('Transporter 2','Platino',6,7,1).
programa('Supernatural','Platino',6,8,1).
programa('Blood and Bone','Platino',6,9,2).
programa('Biography','Platino',6,11,1).
programa('King Kong','Platino',6,12,1).
programa('Dredd','Platino',6,13,3).
programa('The Fix','Platino',6,16,1).
programa('RED','Platino',6,17,3).
programa('Aaron Stone','Platino',6,20,1).
programa('Stranger Things','Platino',6,21,3).


% Programación de Investigation Discovery

programa('The Night Comes for Us','Investigation Discovery',0,0,2).
programa('Ascension','Investigation Discovery',0,2,2).
programa('The Fate of the Furious','Investigation Discovery',0,4,1).
programa('Computer Chronicles','Investigation Discovery',0,5,1).
programa('Bones','Investigation Discovery',0,6,3).
programa('Criminal Minds','Investigation Discovery',0,9,3).
programa('Altered Carbon','Investigation Discovery',0,12,3).
programa('The Joy of Painting','Investigation Discovery',0,15,2).
programa('Master and Commander: The Far Side of the World','Investigation Discovery',0,17,1).
programa('Live Free or Die Hard','Investigation Discovery',0,18,1).
programa('Ancient Aliens','Investigation Discovery',0,19,2).
programa('American Gangster','Investigation Discovery',0,21,3).

programa('Men in Black 3','Investigation Discovery',1,0,2).
programa('Den of Thieves','Investigation Discovery',1,2,3).
programa('Line of Duty','Investigation Discovery',1,5,3).
programa('Rambo','Investigation Discovery',1,8,3).
programa('True Detective','Investigation Discovery',1,11,2).
programa('The Haunting of Hill House','Investigation Discovery',1,13,3).
programa('The Fast and the Furious','Investigation Discovery',1,16,3).
programa('Free Fire','Investigation Discovery',1,19,1).
programa('Zodiac','Investigation Discovery',1,20,2).
programa('The Twilight Zone','Investigation Discovery',1,22,2).

programa('Red Cliff','Investigation Discovery',2,0,3).
programa('American Experience','Investigation Discovery',2,3,1).
programa('The Magnificent Seven','Investigation Discovery',2,4,2).
programa('Call 911','Investigation Discovery',2,6,2).
programa('For Love or Money','Investigation Discovery',2,8,3).
programa('House','Investigation Discovery',2,11,3).
programa('True Blood','Investigation Discovery',2,14,2).
programa('Perfect Stranger','Investigation Discovery',2,16,1).
programa('Election','Investigation Discovery',2,17,2).
programa('Fact or Faked: Paranormal Files','Investigation Discovery',2,19,3).
programa('Dude, What Would Happen','Investigation Discovery',2,22,2).

programa('Warrior','Investigation Discovery',3,0,2).
programa('Equilibrium','Investigation Discovery',3,2,2).
programa('A Hard Day','Investigation Discovery',3,4,3).
programa('Gotham','Investigation Discovery',3,7,2).
programa('Doctor Who','Investigation Discovery',3,9,1).
programa('Dexter','Investigation Discovery',3,10,2).
programa('The Society','Investigation Discovery',3,12,2).
programa('Atomic Blonde','Investigation Discovery',3,14,1).
programa('Homeland','Investigation Discovery',3,15,3).
programa('Blood and Bone','Investigation Discovery',3,18,1).
programa('Thor','Investigation Discovery',3,19,3).
programa('Star Trek: The Next Generation','Investigation Discovery',3,22,2).

programa('Blood Father','Investigation Discovery',4,0,2).
programa('The Vampire Diaries','Investigation Discovery',4,2,2).
programa('Lost','Investigation Discovery',4,4,3).
programa('Nightcrawler','Investigation Discovery',4,7,1).
programa('Wanted','Investigation Discovery',4,8,1).
programa('Haunted Lives: True Ghost Stories','Investigation Discovery',4,9,3).
programa('Dark','Investigation Discovery',4,12,2).
programa('American Gods','Investigation Discovery',4,14,1).
programa('Body of Lies','Investigation Discovery',4,15,2).
programa('The OA','Investigation Discovery',4,17,2).
programa('Southpaw','Investigation Discovery',4,19,2).
programa('Along with the Gods: The Two Worlds','Investigation Discovery',4,21,3).

programa('End of Watch','Investigation Discovery',5,0,3).
programa('Bumblebee','Investigation Discovery',5,3,2).
programa('Taboo','Investigation Discovery',5,5,1).
programa('Snatch','Investigation Discovery',5,6,2).
programa('Midsomer Murders','Investigation Discovery',5,8,1).
programa('Wind River','Investigation Discovery',5,9,3).
programa('Aquila','Investigation Discovery',5,12,1).
programa('Pretty Little Liars','Investigation Discovery',5,13,1).
programa('Designated Survivor','Investigation Discovery',5,14,1).
programa('Doom Patrol','Investigation Discovery',5,15,3).
programa('Unstoppable','Investigation Discovery',5,18,3).
programa('Angel','Investigation Discovery',5,21,3).

programa('Secrets & Mysteries','Investigation Discovery',6,0,3).
programa('Jurassic World: Fallen Kingdom','Investigation Discovery',6,3,2).
programa('Ant-Man','Investigation Discovery',6,5,2).
programa('Machete','Investigation Discovery',6,7,1).
programa('American Made','Investigation Discovery',6,8,1).
programa('Sherlock','Investigation Discovery',6,9,3).
programa('Polar','Investigation Discovery',6,12,3).
programa('Kiss Kiss Bang Bang','Investigation Discovery',6,15,2).
programa('Apocalypto','Investigation Discovery',6,17,2).
programa('Juvies','Investigation Discovery',6,19,3).
programa('Darkland','Investigation Discovery',6,22,2).


% Programación de Fox

programa('Overlord','Fox',0,0,1).
programa('Rambo','Fox',0,1,1).
programa('Transporter 2','Fox',0,2,1).
programa('The X-Files','Fox',0,3,3).
programa('Dark','Fox',0,6,2).
programa('Amanda and the Alien','Fox',0,8,1).
programa('Line of Duty','Fox',0,9,1).
programa('How to Get Away with Murder','Fox',0,10,3).
programa('Drive','Fox',0,13,2).
programa('Game Night','Fox',0,15,2).
programa('Blood and Bone','Fox',0,17,1).
programa('Red Cliff','Fox',0,18,2).
programa('Mard Ko Dard Nahin Hota','Fox',0,20,3).
programa('Unstoppable','Fox',0,23,1).

programa('The Town','Fox',1,0,3).
programa('Triad Election','Fox',1,3,1).
programa('The Twilight Zone','Fox',1,4,3).
programa('Biography','Fox',1,7,2).
programa('Shooter','Fox',1,9,1).
programa('Master and Commander: The Far Side of the World','Fox',1,10,1).
programa('Inglourious Basterds','Fox',1,11,3).
programa('True Detective','Fox',1,14,1).
programa('Hacksaw Ridge','Fox',1,15,2).
programa('The Transporter','Fox',1,17,3).
programa('Furious 7','Fox',1,20,3).
programa('No Country for Old Men','Fox',1,23,1).

programa('Shaolin Soccer','Fox',2,0,1).
programa('Dexter','Fox',2,1,2).
programa('Wind River','Fox',2,3,1).
programa('Haunted Lives: True Ghost Stories','Fox',2,4,3).
programa('Zodiac','Fox',2,7,2).
programa('The Night Comes for Us','Fox',2,9,3).
programa('Taboo','Fox',2,12,2).
programa('Ichi the Killer','Fox',2,14,1).
programa('Underworld','Fox',2,15,1).
programa('Juvies','Fox',2,16,2).
programa('Altered Carbon','Fox',2,18,2).
programa('American Sniper','Fox',2,20,3).
programa('Oldboy','Fox',2,23,1).

programa('Harsh Times','Fox',3,0,1).
programa('MythBusters','Fox',3,1,3).
programa('Kiss Kiss Bang Bang','Fox',3,4,2).
programa('Homeland','Fox',3,6,2).
programa('Along with the Gods: The Two Worlds','Fox',3,8,1).
programa('Thor','Fox',3,9,1).
programa('For Love or Money','Fox',3,10,1).
programa('Avengers','Fox',3,11,3).
programa('American Gods','Fox',3,14,2).
programa('Run All Night','Fox',3,16,2).
programa('The Vampire Diaries','Fox',3,18,2).
programa('House of Flying Daggers','Fox',3,20,2).
programa('Django Unchained','Fox',3,22,2).

programa('Midsomer Murders','Fox',4,0,2).
programa('Fearless','Fox',4,2,2).
programa('Astronauts','Fox',4,4,1).
programa('Outlaw King','Fox',4,5,3).
programa('The Awful Truth','Fox',4,8,2).
programa('Black Hawk Down','Fox',4,10,2).
programa('The OA','Fox',4,12,1).
programa('Twin Peaks','Fox',4,13,1).
programa('The Great Battle','Fox',4,14,3).
programa('Tomb Raider','Fox',4,17,1).
programa('Dredd','Fox',4,18,3).
programa('The Expendables','Fox',4,21,3).

programa('The Society','Fox',5,0,2).
programa('Dude, What Would Happen','Fox',5,2,3).
programa('I Saw the Devil','Fox',5,5,1).
programa('Ant-Man','Fox',5,6,2).
programa('Point Blank','Fox',5,8,3).
programa('True Blood','Fox',5,11,1).
programa('Supernatural','Fox',5,12,1).
programa('Deepwater Horizon','Fox',5,13,2).
programa('End of Watch','Fox',5,15,3).
programa('Blindspot','Fox',5,18,3).
programa('Zombieland','Fox',5,21,3).

programa('The Blacklist','Fox',6,0,2).
programa('ALF','Fox',6,2,3).
programa('BodyShaping','Fox',6,5,1).
programa('Gladiator','Fox',6,6,2).
programa('Angel','Fox',6,8,1).
programa('The Surgical Strike','Fox',6,9,3).
programa('Computer Chronicles','Fox',6,12,2).
programa('NCIS','Fox',6,14,3).
programa('Ascension','Fox',6,17,1).
programa('Riverdale','Fox',6,18,1).
programa('Beyond Belief: Fact or Fiction','Fox',6,19,2).
programa('Body of Lies','Fox',6,21,3).


% Programación de Cinema

programa('The X-Files','Cinema',0,0,3).
programa('Thor: The Dark World','Cinema',0,3,1).
programa('The Final Master','Cinema',0,4,1).
programa('Jurassic World: Fallen Kingdom','Cinema',0,5,2).
programa('Thor: Ragnarok','Cinema',0,7,3).
programa('Destination Truth','Cinema',0,10,1).
programa('Snatch','Cinema',0,11,1).
programa('Line of Duty','Cinema',0,12,2).
programa('Infernal Affairs','Cinema',0,14,2).
programa('Polar','Cinema',0,16,2).
programa('Mandy','Cinema',0,18,2).
programa('The Expanse','Cinema',0,20,2).
programa('Inglourious Basterds','Cinema',0,22,2).

programa('For Love or Money','Cinema',1,0,1).
programa('Train to Busan','Cinema',1,1,1).
programa('American Experience','Cinema',1,2,2).
programa('Wanted','Cinema',1,4,2).
programa('Man on Fire','Cinema',1,6,2).
programa('Django Unchained','Cinema',1,8,2).
programa('Dark','Cinema',1,10,1).
programa('Underworld','Cinema',1,11,1).
programa('Nightcrawler','Cinema',1,12,2).
programa('Transformers','Cinema',1,14,2).
programa('Transporter 3','Cinema',1,16,1).
programa('No Country for Old Men','Cinema',1,17,2).
programa('The 100','Cinema',1,19,1).
programa('Free Fire','Cinema',1,20,1).
programa('Outlaw King','Cinema',1,21,3).

programa('Haunted Lives: True Ghost Stories','Cinema',2,0,3).
programa('King Kong','Cinema',2,3,2).
programa('Red Cliff','Cinema',2,5,3).
programa('The Silence of the Lambs','Cinema',2,8,2).
programa('13 Assassins','Cinema',2,10,2).
programa('Bumblebee','Cinema',2,12,1).
programa('The Haunting of Hill House','Cinema',2,13,2).
programa('Triad Election','Cinema',2,15,2).
programa('Atomic Rulers of the World','Cinema',2,17,1).
programa('Unstoppable','Cinema',2,18,2).
programa('Furious 7','Cinema',2,20,1).
programa('Doom Patrol','Cinema',2,21,3).

programa('The Society','Cinema',3,0,1).
programa('Aaron Stone','Cinema',3,1,2).
programa('The Blacklist','Cinema',3,3,1).
programa('Criminal Minds','Cinema',3,4,1).
programa('Hot Fuzz','Cinema',3,5,3).
programa('Legacies','Cinema',3,8,1).
programa('Blood Father','Cinema',3,9,2).
programa('The Expendables','Cinema',3,11,1).
programa('Hardcore Henry','Cinema',3,12,3).
programa('Fast & Furious 6','Cinema',3,15,3).
programa('V for Vendetta','Cinema',3,18,1).
programa('The Password to Larkspur Lane','Cinema',3,19,1).
programa('Sin City','Cinema',3,20,1).
programa('Ancient Aliens','Cinema',3,21,3).

programa('Book TV','Cinema',4,0,3).
programa('Lost','Cinema',4,3,2).
programa('Arrow','Cinema',4,5,2).
programa('Drive','Cinema',4,7,2).
programa('The Fast and the Furious','Cinema',4,9,2).
programa('House of Flying Daggers','Cinema',4,11,1).
programa('The OA','Cinema',4,12,2).
programa('Salt','Cinema',4,14,2).
programa('Dawn of the Dead','Cinema',4,16,3).
programa('Doctor Who','Cinema',4,19,2).
programa('Homeland','Cinema',4,21,3).

programa('Zodiac','Cinema',5,0,1).
programa('Biography','Cinema',5,1,2).
programa('Mard Ko Dard Nahin Hota','Cinema',5,3,2).
programa('Angel','Cinema',5,5,2).
programa('Shooter','Cinema',5,7,2).
programa('Apocalypto','Cinema',5,9,2).
programa('BodyShaping','Cinema',5,11,1).
programa('Point Blank','Cinema',5,12,2).
programa('Taboo','Cinema',5,14,1).
programa('The Town','Cinema',5,15,3).
programa('Altered Carbon','Cinema',5,18,3).
programa('The Foreigner','Cinema',5,21,3).

programa('Black Hawk Down','Cinema',6,0,2).
programa('God Bless America','Cinema',6,2,3).
programa('Rambo','Cinema',6,5,1).
programa('MythBusters','Cinema',6,6,3).
programa('Thor','Cinema',6,9,1).
programa('House','Cinema',6,10,1).
programa('Gotham','Cinema',6,11,3).
programa('Battle Royale','Cinema',6,14,2).
programa('Secrets & Mysteries','Cinema',6,16,3).
programa('NCIS','Cinema',6,19,1).
programa('The Departed','Cinema',6,20,2).
programa('Atom Squad','Cinema',6,22,2).


% Programación de Star Movies

programa('The Villainess','Star Movies',0,0,3).
programa('The Age of Shadows','Star Movies',0,3,3).
programa('Sin City','Star Movies',0,6,3).
programa('Infernal Affairs','Star Movies',0,9,3).
programa('Darkland','Star Movies',0,12,2).
programa('Shaolin Soccer','Star Movies',0,14,2).
programa('House','Star Movies',0,16,1).
programa('Master and Commander: The Far Side of the World','Star Movies',0,17,3).
programa('Den of Thieves','Star Movies',0,20,1).
programa('The Magnificent Seven','Star Movies',0,21,3).

programa('Star Trek: The Next Generation','Star Movies',1,0,3).
programa('The Great Battle','Star Movies',1,3,1).
programa('The Fighter','Star Movies',1,4,2).
programa('World War Z','Star Movies',1,6,3).
programa('End of Watch','Star Movies',1,9,3).
programa('Warrior','Star Movies',1,12,3).
programa('Pretty Little Liars','Star Movies',1,15,1).
programa('Point Blank','Star Movies',1,16,3).
programa('Bones','Star Movies',1,19,3).
programa('Gotham','Star Movies',1,22,2).

programa('Run All Night','Star Movies',2,0,3).
programa('Transporter 2','Star Movies',2,3,3).
programa('Big Little Lies','Star Movies',2,6,3).
programa('Line of Duty','Star Movies',2,9,3).
programa('The Haunting of Hill House','Star Movies',2,12,1).
programa('Game Night','Star Movies',2,13,2).
programa('Apocalypto','Star Movies',2,15,3).
programa('True Detective','Star Movies',2,18,3).
programa('The 100','Star Movies',2,21,3).

programa('Mandy','Star Movies',3,0,3).
programa('Dexter','Star Movies',3,3,3).
programa('Transformers','Star Movies',3,6,2).
programa('Angel','Star Movies',3,8,2).
programa('Thor: Ragnarok','Star Movies',3,10,1).
programa('The Fix','Star Movies',3,11,1).
programa('A History of Violence','Star Movies',3,12,1).
programa('Red Cliff','Star Movies',3,13,1).
programa('Rambo','Star Movies',3,14,1).
programa('True Blood','Star Movies',3,15,3).
programa('Unstoppable','Star Movies',3,18,2).
programa('Fearless','Star Movies',3,20,2).
programa('No Country for Old Men','Star Movies',3,22,2).

programa('Atom Squad','Star Movies',4,0,1).
programa('American Sniper','Star Movies',4,1,2).
programa('MythBusters','Star Movies',4,3,3).
programa('Battle Royale','Star Movies',4,6,1).
programa('ALF','Star Movies',4,7,2).
programa('Grindhouse','Star Movies',4,9,2).
programa('The Expanse','Star Movies',4,11,2).
programa('The Transporter','Star Movies',4,13,2).
programa('Machete','Star Movies',4,15,3).
programa('Westworld','Star Movies',4,18,2).
programa('BodyShaping','Star Movies',4,20,2).
programa('Aaron Stone','Star Movies',4,22,2).

programa('House of Flying Daggers','Star Movies',5,0,3).
programa('The Night Comes for Us','Star Movies',5,3,3).
programa('A Hard Day','Star Movies',5,6,1).
programa('Taboo','Star Movies',5,7,3).
programa('Doom Patrol','Star Movies',5,10,2).
programa('FBI','Star Movies',5,12,3).
programa('Along with the Gods: The Two Worlds','Star Movies',5,15,1).
programa('The Originals','Star Movies',5,16,3).
programa('The Fast and the Furious','Star Movies',5,19,1).
programa('Nightcrawler','Star Movies',5,20,1).
programa('The Siege of Jadotville','Star Movies',5,21,3).

programa('The Vampire Diaries','Star Movies',6,0,3).
programa('Zodiac','Star Movies',6,3,3).
programa('Perfect Stranger','Star Movies',6,6,3).
programa('Salt','Star Movies',6,9,1).
programa('Wind River','Star Movies',6,10,2).
programa('Polar','Star Movies',6,12,1).
programa('NCIS','Star Movies',6,13,1).
programa('Free Fire','Star Movies',6,14,1).
programa('Bumblebee','Star Movies',6,15,2).
programa('The Expendables','Star Movies',6,17,2).
programa('Transporter 3','Star Movies',6,19,2).
programa('Sherlock','Star Movies',6,21,3).


% Programación de Sony

programa('Free Fire','Sony',0,0,1).
programa('Pretty Little Liars','Sony',0,1,3).
programa('The Final Master','Sony',0,4,3).
programa('A Bittersweet Life','Sony',0,7,1).
programa('Dark','Sony',0,8,1).
programa('Machete','Sony',0,9,2).
programa('Men in Black 3','Sony',0,11,3).
programa('American Gangster','Sony',0,14,3).
programa('The Last Samurai','Sony',0,17,1).
programa('Ichi the Killer','Sony',0,18,2).
programa('Mandy','Sony',0,20,3).
programa('Thor','Sony',0,23,1).

programa('Thor: Ragnarok','Sony',1,0,2).
programa('Altered Carbon','Sony',1,2,2).
programa('World War Z','Sony',1,4,3).
programa('Nightcrawler','Sony',1,7,1).
programa('The Great Battle','Sony',1,8,1).
programa('The Expendables','Sony',1,9,2).
programa('House of Flying Daggers','Sony',1,11,1).
programa('Jurassic World','Sony',1,12,1).
programa('Bones','Sony',1,13,2).
programa('Upgrade','Sony',1,15,3).
programa('The Fast and the Furious','Sony',1,18,1).
programa('Astronauts','Sony',1,19,3).
programa('The Age of Shadows','Sony',1,22,2).

programa('Ninja Assassin','Sony',2,0,1).
programa('Avengers','Sony',2,1,3).
programa('2 Fast 2 Furious','Sony',2,4,1).
programa('No Country for Old Men','Sony',2,5,3).
programa('Sherlock','Sony',2,8,1).
programa('Aquila','Sony',2,9,2).
programa('Red Cliff','Sony',2,11,3).
programa('The Transporter','Sony',2,14,3).
programa('The Awful Truth','Sony',2,17,3).
programa('V for Vendetta','Sony',2,20,2).
programa('Bumblebee','Sony',2,22,2).

programa('Overlord','Sony',3,0,2).
programa('Taboo','Sony',3,2,3).
programa('Prison Break','Sony',3,5,2).
programa('House','Sony',3,7,2).
programa('Lost','Sony',3,9,3).
programa('Infernal Affairs','Sony',3,12,1).
programa('Blood Father','Sony',3,13,3).
programa('Southpaw','Sony',3,16,2).
programa('Tears of the Sun','Sony',3,18,2).
programa('Drive','Sony',3,20,2).
programa('Secrets & Mysteries','Sony',3,22,2).

programa('Man on Fire','Sony',4,0,3).
programa('The Night Comes for Us','Sony',4,3,3).
programa('Jurassic World: Fallen Kingdom','Sony',4,6,3).
programa('Arrow','Sony',4,9,3).
programa('The Surgical Strike','Sony',4,12,2).
programa('The Haunting of Hill House','Sony',4,14,1).
programa('Book TV','Sony',4,15,2).
programa('The Expanse','Sony',4,17,3).
programa('Aaron Stone','Sony',4,20,2).
programa('Underworld','Sony',4,22,2).

programa('The Fighter','Sony',5,0,2).
programa('Haunted Lives: True Ghost Stories','Sony',5,2,2).
programa('The Twilight Zone','Sony',5,4,2).
programa('Unstoppable','Sony',5,6,3).
programa('Darkland','Sony',5,9,3).
programa('Blood and Bone','Sony',5,12,2).
programa('RED','Sony',5,14,2).
programa('Run All Night','Sony',5,16,3).
programa('Angel','Sony',5,19,3).
programa('The Silence of the Lambs','Sony',5,22,2).

programa('The 100','Sony',6,0,2).
programa('The OA','Sony',6,2,1).
programa('Warrior','Sony',6,3,2).
programa('Kiss Kiss Bang Bang','Sony',6,5,3).
programa('Atom Squad','Sony',6,8,1).
programa('Midsomer Murders','Sony',6,9,2).
programa('Beyond Belief: Fact or Fiction','Sony',6,11,1).
programa('I Saw the Devil','Sony',6,12,2).
programa('Biography','Sony',6,14,1).
programa('Homeland','Sony',6,15,1).
programa('Doctor Who','Sony',6,16,3).
programa('Supernatural','Sony',6,19,2).
programa('Mard Ko Dard Nahin Hota','Sony',6,21,3).


