
--
-- Tabelstructuur voor tabel `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `health` int(11) NOT NULL,
  `bio` text NOT NULL,
  `color` varchar(25) NOT NULL,
  `attack` int(11) NOT NULL,
  `defense` int(11) NOT NULL,
  `weapon` varchar(50) DEFAULT NULL,
  `armor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `characters`
--

INSERT INTO `characters` (`id`, `name`, `avatar`, `health`, `bio`, `color`, `attack`, `defense`, `weapon`, `armor`) VALUES
(1, 'Conan', 'conan.jpg', 1235, 'Conan the Barbarian (also known as Conan the Cimmerian) is a fictional sword and sorcery hero who originated in pulp magazines and has since been adapted to books, comics, several films (including Conan the Barbarian and Conan the Destroyer), television programs (animated and live-action), video games, role-playing games, and other media. \r\n\r\nThe character was created by writer Robert E. Howard in 1932 for a series of fantasy stories published in Weird Tales magazine.', 'burlywood', 120, 85, 'Longsword', NULL),
(2, 'Captain America', 'captianamerica.jpg', 3585, 'Captain America is a fictional superhero appearing in American comic books published by Marvel Comics. Created by cartoonists Joe Simon and Jack Kirby, the character first appeared in Captain America Comics #1 (cover dated March 1941) from Timely Comics, a predecessor of Marvel Comics. \r\n\r\nCaptain America was designed as a patriotic supersoldier who often fought the Axis powers of World War II and was Timely Comics\' most popular character during the wartime period. The popularity of superheroes waned following the war, and the Captain America comic book was discontinued in 1950, with a short-lived revival in 1953. Since Marvel Comics revived the character in 1964, Captain America has remained in publication.  The character wears a costume bearing an American flag motif, and he utilizes a nearly indestructible shield that he throws as a projectile. \r\n\r\nCaptain America is the alter ego of Steve Rogers, a frail young man enhanced to the peak of human perfection by an experimental serum to aid the United States government\'s efforts in World War II. Near the end of the war, he was trapped in ice and survived in suspended animation until he was revived in modern times. Although Captain America often struggles to maintain his ideals as a man out of his time, he remains a highly respected figure in his community, which includes becoming the long-time leader of the Avengers.', 'skyblue', 700, 165, 'Shield', 'Shield'),
(3, 'Catwoman', 'catwoman.png', 1760, 'Catwoman is a fictional character created by Bill Finger and Bob Kane who appears in American comic books published by DC Comics, commonly in association with superhero Batman. The character made her debut as \"the Cat\" in Batman #1 (Spring 1940), and her real name is Selina Kyle. She is Batman\'s most enduring love interest and is known for her complex love-hate relationship with him.\r\n\r\nCatwoman is a Gotham City burglar who typically wears a tight, one-piece outfit and uses a bullwhip for a weapon. She was originally characterized as a supervillain and adversary of Batman, but she has been featured in a series since the 1990s which portrays her as an antiheroine, often doing the wrong things for the right reasons. The character thrived since her earliest appearances, but she took an extended hiatus from September 1954 to November 1966 due to the developing Comics Code Authority in 1954. These issues involved the rules regarding the development and portrayal of female characters that were in violation of the Comics Code, a code which is no longer in use. In the comics, Holly Robinson and Eiko Hasigawa have both adopted the Catwoman identity, apart from Selina Kyle.', 'silver', 60, 100, NULL, 'Leader Suit'),
(4, 'Buzz Lightyear', 'buzz.jpg', 1530, 'Buzz Lightyear is a fictional character in the Toy Story franchise. He is a toy Space Ranger superhero according to the movies and an action figure in the franchise. Along with Sheriff Woody, he is one of the two lead characters in all four Toy Story movies. He also appeared in the movie Buzz Lightyear of Star Command: The Adventure Begins and the television series spin-off Buzz Lightyear of Star Command.', 'white', 40, 160, 'Hand Laser', 'Space Suit'),
(5, 'Mario', 'mario.jpg', 420, 'Mario is a fictional character in the Mario video game franchise, owned by Nintendo and created by Japanese video game designer Shigeru Miyamoto. Acting as the company\'s mascot, as well as being the eponymous protagonist of the series, Mario has appeared in over 200 video games since his creation. Depicted as a short, pudgy, Italian plumber who resides in the Mushroom Kingdom, his adventures generally center upon rescuing Princess Peach from the Koopa villain Bowser. His fraternal twin brother and sidekick is Luigi.', 'crimson', 24, 28, 'Fire Flower', NULL),
(6, 'Shrek', 'shrek.jpg', 1360, 'Shrek is a fictional ogre character created by American author William Steig. Shrek is the protagonist of the book of the same name and of eponymous films by DreamWorks Animation. \r\n\r\nThe name \"Shrek\" is derived from the German word Schreck, meaning \"fright\" or \"terror\". Shrek is voiced by Mike Myers, although it was planned for him to be voiced by Chris Farley before his death in December 1997, and played by Brian d\'Arcy James in the musical. Shrek is an ogre living in a swamp.', 'olivedrab', 70, 68, NULL, 'Swamp gear'),
(7, 'Buffy Summers', 'buffy.jpg', 1370, 'Buffy Anne Summers was a Slayer who was activated in the late 20th century. Born on January 19, 1981, she was called to be the Slayer in 1996 at the age of fifteen. Buffy was originally living in Los Angeles; but, due to an incident involving a gang of vampires at Hemery High School, she moved to Sunnydale with her mother. There, she acted as guardian of the Hellmouth for seven years before the town\'s destruction in mid-2003.  Initially a reluctant hero who constantly wished for nothing more than a normal life, Buffy eventually grew to embrace her destiny. \r\n\r\nBuffy was unique as a Slayer in many ways; she refused to sacrifice her ordinary life for her supernatural destiny, often operated as part of a team with her friends the Scooby Gang, and had romantic relationships with notorious vampires Angel and Spike. \r\n\r\nBuffy was one of the longest-lived Slayers and returned from death not once, but twice, then coexisting with another Slayer, an act that disrupted the magic surrounding the traditional line. During their war with the First Evil, Buffy enacted a plan to activate every Potential Slayer in the world, abolishing the traditional line of Chosen Ones, before dedicating herself to gathering and training the ever-growing number of Slayers. She created the Slayer Organization, protecting the world and Slayers when the supernatural had then become public knowledge.  \r\n\r\nRevealed she had been long involved in an ancient prophecy that would bring about Twilight as an evolution to replace the Earth dimension, Buffy prevented this destroying the Seed of Wonder, thus bringing about the end of magic. She established herself in San Francisco, where she continued her Slayer duties and eventually restored magic on Earth, taking responsibility for its new rules with the Vampyr book. Ultimately, Buffy was the Slayer that defined the battle of the Reckoning, which allowed Slayers to exist and work towards a better future, changing the course of history up to the 23rd century.', 'orchid', 157, 74, 'Wooden stake', 'Shirt'),
(8, 'Zelda', 'zelda.jpg', 2630, 'Princess Zelda is the titular character in Nintendo\'s The Legend of Zelda video game series. She was created by Shigeru Miyamoto and introduced in the original 1986 game The Legend of Zelda. She appears in several incarnations throughout the series, generally as a member of Hyrule\'s royal family and an associate of the protagonist Link.\r\n\r\nThough she is the eponymous character, Zelda\'s story role is often that of a damsel in distress or \"donor\" who assists Link. In many games, Zelda is captured by the antagonist Ganon, necessitating Link to come to her rescue. In several games she is one of the Sages or Champions whose heroism is essential to defeating Ganon; in others, like Ocarina of Time and The Wind Waker, she adopts alternative personas to take a more active role in the story.', 'plum', 339, 512, 'Long Bow', 'Invincible Cloak'),
(9, 'Harley Quinn', 'quinn.jpg', 250, 'Harley Quinn (Dr. Harleen Frances Quinzel) is a fictional character appearing in media published by DC Entertainment. The character was created by Paul Dini and Bruce Timm, and first appeared in Batman: The Animated Series in September 1992. She later appeared in DC Comics\' Batman comic books, with the character\'s first comic book appearance in The Batman Adventures #12 (September 1993). The character is also referred to by such epithets as the Cupid of Crime and the Maiden of Mischief.\r\n\r\nHarley Quinn is a frequent accomplice and lover of the Joker, whom she met while working as an intern psychologist at Gotham City\'s Arkham Asylum, where the Joker was a patient.\r\n\r\nHer name is a play on the name \"Harlequin,\" a character which originated in commedia dell\'arte. The character has teamed up with fellow villains the Catwoman and Poison Ivy several times, the trio being known as the Gotham City Sirens. Poison Ivy is a close friend and recurring ally of Harley, even being depicted as her girlfriend in recent comics.\r\n\r\nSince The New 52, she is now depicted as an antihero who left her abusive relationship with the Joker and her past as a supervillain behind.[10] However, she is still depicted as a supervillain in other media. Harley Quinn has also been depicted as a recurring core member of the Suicide Squad.', 'orangered', 5, 8, 'Hammer', NULL),
(10, 'Bowser', 'bowser.jpg', 10000, 'Bowser or King Koopa, is a fictional character and the main antagonist of Nintendo\'s Mario franchise. In Japan, the character bears the title of Great Demon King. In the U.S., the character was first referred to as \"Bowser, King of the Koopas\" and \"the sorcerer king\" in the instruction manual.\r\n\r\nBowser is the leader of the turtle-like Koopa race, and has been the archenemy of Mario since his first appearance, in the 1985 video game Super Mario Bros.\r\n\r\nHis ultimate goals are to kidnap Princess Peach, defeat Mario, and conquer the Mushroom Kingdom. Since his debut, he has appeared in almost every Mario franchise game, usually serving as the main antagonist. Bowser is voiced by Kenny James.', 'yellowgreen', 400, 100, 'Fire Breath', 'Giant Shell');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
