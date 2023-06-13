DROP TABLE Actor CASCADE CONSTRAINTS;
DROP TABLE Actor_Credits CASCADE CONSTRAINTS;
DROP TABLE Actor_Quotes CASCADE CONSTRAINTS;
DROP TABLE Award CASCADE CONSTRAINTS;
DROP TABLE Director CASCADE CONSTRAINTS;
DROP TABLE Director_Credits CASCADE CONSTRAINTS;
DROP TABLE Director_Quotes CASCADE CONSTRAINTS;
DROP TABLE Directs CASCADE CONSTRAINTS;
DROP TABLE Episode CASCADE CONSTRAINTS;
DROP TABLE Production_Company CASCADE CONSTRAINTS;
DROP TABLE Show CASCADE CONSTRAINTS;
DROP TABLE Stars CASCADE CONSTRAINTS;
DROP TABLE Writer CASCADE CONSTRAINTS;
DROP TABLE Writer_Credits CASCADE CONSTRAINTS;
DROP TABLE Writer_Quotes CASCADE CONSTRAINTS;
DROP TABLE Writes CASCADE CONSTRAINTS;


CREATE TABLE Director(
Name                  VARCHAR(50) CONSTRAINT Director_Name_PK PRIMARY KEY,
Biography  	      VARCHAR(300),
Bdate      	      DATE,
BPlace  	      VARCHAR(60));

CREATE TABLE Show(
Title        	      VARCHAR(60),
Genre        	      VARCHAR(30),
Language     	      VARCHAR(15),
Release_Date 	      DATE,
Rating       	      NUMBER(2),
Country_of_Production VARCHAR(30),
Synopsis              VARCHAR(300),
Production_Company    VARCHAR(50),
CONSTRAINT Show_PK PRIMARY KEY(Title, Release_Date));

CREATE TABLE Production_Company(
PC_Name			VARCHAR(50),
PC_Country		VARCHAR(15),
CONSTRAINT ProductionCo_PK PRIMARY KEY(PC_Name,PC_Country));

CREATE TABLE Episode(
Episode_Title		VARCHAR(50) CONSTRAINT EpisodeTitle_PK PRIMARY KEY,
Episode_Rating		NUMBER(2),
Date_Aired		DATE,
Show_titled		VARCHAR(60),
Show_Aired		DATE);

CREATE TABLE Actor(
Actor_Name		VARCHAR(50) CONSTRAINT Actor_Name_PK PRIMARY KEY,
Actor_Biography		VARCHAR(300),
Actor_Birth_Date	Date,
Actor_Birth_Place	VARCHAR(60));

CREATE TABLE Stars(
Show_title		VARCHAR(60),
Show_Aired		DATE,
Actor			VARCHAR(50),
Character		VARCHAR(50),
CONSTRAINT Stars_PK PRIMARY KEY(Show_title,Actor));

CREATE TABLE Directs(
Show_title		VARCHAR(60),
Show_Aired		DATE,
Director_name		VARCHAR(50),
CONSTRAINT Directs_PK PRIMARY KEY(Show_title,Director_name));

CREATE TABLE Writer(
Writer_name		VARCHAR(50) CONSTRAINT Writer_Name_PK PRIMARY KEY,
Writer_biography	VARCHAR(300),
Writer_bdate		DATE,
Writer_bplace		VARCHAR(60));

CREATE TABLE Writes(
Show_title		VARCHAR(60),
Show_Aired		DATE,
Writer			VARCHAR(50),
CONSTRAINT Writes_PK PRIMARY KEY(Show_title,Writer));

CREATE TABLE Actor_Credits(
AName			VARCHAR(50),
ACredits		VARCHAR(60),
CONSTRAINT ACredits_PK PRIMARY KEY(AName,ACredits));

CREATE TABLE Actor_Quotes(
AName			VARCHAR(50),
Quotes			VARCHAR(400),
CONSTRAINT AQuotes_PK PRIMARY KEY(AName,Quotes));

CREATE TABLE Director_Credits(
DName			VARCHAR(50),
DCredits		VARCHAR(60),
CONSTRAINT DCredits_PK PRIMARY KEY(DName,DCredits));

CREATE TABLE Director_Quotes(
DName			VARCHAR(50),
Quotes			VARCHAR(400),
CONSTRAINT DQuotes_PK PRIMARY KEY(DName,Quotes));

CREATE TABLE Writer_Credits(
WName			VARCHAR(50),
WCredits		VARCHAR(60),
CONSTRAINT WCredits_PK PRIMARY KEY(WName,WCredits));

CREATE TABLE Writer_Quotes(
WName			VARCHAR(50),
Quotes			VARCHAR(400),
CONSTRAINT WQuotes_PK PRIMARY KEY(WName,Quotes));

CREATE TABLE Award(
Name			VARCHAR(40),
Category		VARCHAR(70),
Year			DATE,
Event			VARCHAR(40),
Location		VARCHAR(25),
Show			VARCHAR(60),
Show_Aired		DATE,
Actor			VARCHAR(50),
Director		VARCHAR(50),
Writer			VARCHAR(50),
CONSTRAINT Award_PK PRIMARY KEY(Name,Category,Year));

INSERT INTO Show
VALUES ('Pirates of the Caribbean: The Curse of the Black Pearl', 'Action, Adventure, Fantasy', 'English', '09-Jul-2003', 8, 'USA', 'Blacksmith Will Turner teams up with eccentric pirate Captain Jack Sparrow to save his love, the governors daughter, from Jacks former pirate allies, who are now undead.', 'Walt Disney Pictures');

INSERT INTO Production_Company
VALUES('Walt Disney Pictures', 'USA');

INSERT INTO Show
VALUES ('Planet Earth II', 'Documentary', 'English','06-Nov-2016',10,'USA','David Attenborough returns in this breathtaking showcasing life on planet earth.','BBC Studios');

INSERT INTO Production_Company
VALUES ('BBC Studios', 'USA');

INSERT INTO Show
VALUES ('Breaking Bad','Crime,Drama,Thriller','English','20-Jan-2008',10, 'USA', 'High School chemistry teacher diagnosed with inoperable lung cancer, turns to manufacturing and selling methamphetamine in order to secure his family future.','High Bridge Productions');

INSERT INTO Production_Company
VALUES ('High Bridge Productions', 'USA');

INSERT INTO Production_Company
VALUES('Home Box Office', 'USA');

INSERT INTO Show 
VALUES('Better Call Saul', 'Crime,Drama','English','08-Feb-2015',9,'USA','Trials and tribulations of criminal lawyer Jimmy McGill in the time before he established his strip-mall law office in Mexico.','High Bridge Productions');

INSERT INTO Show
VALUES('Game of Thrones','Action,Adventure,Drama','English','17-Apr-2011', 9, 'USA','Nine noble families fight for control over the lands of Westeros, while an ancient enemy returns after being dominant for a millenia.','Home Box Office');

INSERT INTO Show
VALUES('The Undoing','Crime,Drama,Mystery','English','25-Oct-2020',8,'USA','Life of a successful therapist in New York begins to unravel on the eve of publishing her first book.','Home Box Office');

INSERT INTO Show
VALUES('Greenland','Action,Drama,Thriller','English','14-Aug-2020',6,'Canada','A family struggles for a survival in the face of a cataclysmic natural disaster.','STX Films');

INSERT INTO Production_Company
VALUES('STX Films', 'Canada');

INSERT INTO Show 
VALUES('Black Mirror','Drama,Sci-fi,Thriller','English','04-Dec-2011',9,'UK','An anthropology series exploring a twisted high tech multiverse where humanitys greatest innovations and darkest instincts collides.','Zeppotron');

INSERT INTO Production_Company
VALUES('Zeppotron', 'UK');

INSERT INTO Show
VALUES('The Rack Pack','Comedy,Drama,Sport','English','17-Jan-2016',7,'UK','The story of the 1980s snooker rivalry between the flamboyant Alex Higgens and the methodical Steve Daves.','Zeppotron');

INSERT INTO Show
VALUES('Dead Set','Comedy,Drama,Horror','English','18-Oct-2008',8,'UK','During a fictional series of Big Brothers, a zombie outbreak occurs, but the housemates are unaware of them impending doom outside of the Big Brother House.','Zeppotron');

INSERT INTO Show
VALUES('Outlander','Drama,Fantasy,Romance','English','09-Aug-2014',8,'UK','An English combat nurse from 1945 is mysteriously swept back in time to 1743.','Left Bank Pictures');

INSERT INTO Production_Company
VALUES('Left Bank Pictures', 'UK');

INSERT INTO Show
VALUES('The Crown','Biography,Drama,History','English','04-Nov-2016',9,'UK','Follows the political, rivalries and romance of Queen Elizabeth IIs reign and the events that shape the second half of the twentieth century.','Left Bank Pictures');

INSERT INTO Production_Company
VALUES('Fairview Entertainment', 'USA');

INSERT INTO Show
VALUES('The Mandalorian', 'Action, Adventure, Sci-Fi', 'English', '12-Nov-2019', 9, 'USA', 'The travels of a lone bounty hunter in the outer reaches of the galaxy, far from the authority of the New Republic.', 'Fairview Entertainment');

INSERT INTO Episode
VALUES('Chapter 1: The Mandalorian', 9, '12-Nov-2019', 'The Mandalorian', '12-Nov-2019');

INSERT INTO Episode
VALUES('Chapter 2: The Chile', 9, '15-Nov-2019', 'The Mandalorian', '12-Nov-2019');

INSERT INTO Episode
VALUES('Chapter 3: The Sin', 9, '22-Nov-2019', 'The Mandalorian', '12-Nov-2019');

INSERT INTO Episode
VALUES('Chapter 4: Sanctuary', 8, '29-Nov-2019', 'The Mandalorian', '12-Nov-2019');

INSERT INTO Episode
VALUES('Chapter 5: The Gunslinger', 8, '06-Dec-2019', 'The Mandalorian', '12-Nov-2019');

INSERT INTO Episode
VALUES('Chapter 6: The Prisoner', 8, '13-Dec-2019', 'The Mandalorian', '12-Nov-2019');

INSERT INTO Episode
VALUES('Chapter 7: The Reckoning', 9, '18-Dec-2019', 'The Mandalorian', '12-Nov-2019');

INSERT INTO Episode
VALUES('Chapter 8: Redemption', 9, '27-Dec-2019', 'The Mandalorian', '12-Nov-2019');

INSERT INTO Episode
VALUES('Chapter 9: The Marshal', 9, '30-Oct-2020', 'The Mandalorian', '12-Nov-2019');

INSERT INTO Episode
VALUES('Chapter 10: The Passenger', 8, '06-Nov-2020', 'The Mandalorian', '12-Nov-2019');

INSERT INTO Episode
VALUES('Chapter 11: The Heiress', 9, '13-Nov-2020', 'The Mandalorian', '12-Nov-2019');

INSERT INTO Episode
VALUES('Chapter 12: The Siege', 9, '20-Nov-2020', 'The Mandalorian', '12-Nov-2019');

INSERT INTO Episode
VALUES('Chapter 13: The Jedi', 10, '27-Nov-2020', 'The Mandalorian', '12-Nov-2019');

INSERT INTO Director
VALUES('Jon Favreau', 'Initially an indie film favorite, actor Jon Favreau has progressed to strong mainstream visibility into the millennium and, after nearly two decades in the business, is still enjoying character stardom as well as earning notice as a writer/producer/director.', '19-Oct-1966', 'Queens, New York City, New York, USA');

INSERT INTO Directs
VALUES('The Mandalorian', '12-Nov-2019', 'Jon Favreau');

INSERT INTO Director_Credits
VALUES('Jon Favreau', 'The Mandalorian');

INSERT INTO Director_Quotes
VALUES('Jon Favreau', 'There was a maze of things that had to be worked through, but it was usually because I was not accurate enough in what I was asking for.');

INSERT INTO Actor
VALUES('Pedro Pascal', 'Pedro Pascal is a Chilean-born actor. He is best known for portraying the roles of Oberyn Martell in the fourth season of the HBO series Game of Thrones and Javier Peña in the Netflix series Narcos.', '02-Apr-1975', 'Santiago de Chile, Metropolitan Region, Chile');

INSERT INTO Actor_Credits
VALUES('Pedro Pascal', 'The Mandalorian');

INSERT INTO Actor_Credits
VALUES('Pedro Pascal', 'Game of Thrones');

INSERT INTO Actor_Quotes
VALUES('Pedro Pascal', 'I have the cliché struggling actor story. I was waiting tables in New York, went out to L.A. soon after graduation to get some jobs, but it didnt work out.');

INSERT INTO Stars
VALUES('The Mandalorian', '12-Nov-2019', 'Pedro Pascal', 'Mandalorian');

INSERT INTO Stars
VALUES('Game of Thrones', '17-Apr-2011', 'Pedro Pascal', 'Oberyn Martell');

INSERT INTO Show
VALUES('1917', 'Drama, War', 'English', '10-Jan-2020', 8, 'USA', 'April 6th, 1917. As a regiment assembles to wage war deep in enemy territory, two soldiers are assigned to race against time and deliver a message that will stop 1,600 men from walking straight into a deadly trap.', 'Dreamworks Pictures');

INSERT INTO Production_Company
VALUES('Dreamworks Pictures', 'USA');

INSERT INTO Actor
VALUES('Jonathan Pryce', 'From Holywell to Hollywood, Jonathan Pryce, CBE is a critically acclaimed and award winning actor from North Wales, internationally regarded as one of the greatest ones on both stage and screen.', '01-Jun-1947', 'Holywel, Flintshire, Wales, UK');

INSERT INTO Stars
VALUES('Game of Thrones', '17-Apr-2011', 'Jonathan Pryce', 'High Sparrow');

INSERT INTO Actor_Credits
VALUES('Jonathan Pryce', 'Game of Thrones');

INSERT INTO Stars
VALUES('Pirates of the Caribbean: The Curse of the Black Pearl', '09-Jul-2003', 'Jonathan Pryce', 'Governor Weatherby Swann');

INSERT INTO Actor_Credits
VALUES('Jonathan Pryce', 'Pirates of the Caribbean: The Curse of the Black Pearl');

INSERT INTO Stars
VALUES('The Crown', '04-Nov-2016', 'Jonathan Pryce', 'Prince Philip, Duke of Edinburgh');

INSERT INTO Actor_Credits
VALUES('Jonathan Pryce', 'The Crown');

INSERT INTO Director
VALUES('Sam Mendes', 'Samuel Alexander Mendes was born on August 1, 1965 in Reading, England, UK to parents James Peter Mendes, a retired university lecturer, and Valerie Helene Mendes, an author who writes childrens books.', '01-Aug-1965', 'Reading, Berkshire, England, UK');

INSERT INTO Directs
VALUES('1917', '10-Jan-2020', 'Sam Mendes');

INSERT INTO Actor
VALUES('George MacKay', 'George MacKay was born 13 March, 1992 in Hammersmith, London, England, to Kim Baker, a British costume designer, and Paul Christopher MacKay, an Australian stage/lighting manager, from Adelaide.', '13-Mar-1992', 'London, England, UK');

INSERT INTO Stars
VALUES('1917', '10-Jan-2020', 'George MacKay', 'Lance Corporal Schofield');

INSERT INTO Writer
VALUES('Krysty Wilson-Cairns', 'Krysty Wilson-Cairns trained at the National Film and Television School, London. She loves screenwriting, storytelling and writing about herself in the third person.', '02-Feb-1978', 'Glasgow, England, UK');

INSERT INTO Writes
VALUES('1917', '10-Jan-2020', 'Krysty Wilson-Cairns');

INSERT INTO Actor_Credits
VALUES('George MacKay', '1917');

INSERT INTO Actor_Quotes
VALUES('George MacKay', '... do we exist under a St Georges Cross? The Union Jack? The European Union? Do we need borders?');

INSERT INTO Director_Credits
VALUES('Sam Mendes', '1917');

INSERT INTO Director_Quotes
VALUES('Sam Mendes', 'You are playing roulette with someone elses money. If you are going to bet it all on black, you need to be able to explain why.');

INSERT INTO Writer_Credits
VALUES('Krysty Wilson-Cairns', '1917');

INSERT INTO Writer_Quotes
VALUES('Krysty Wilson-Cairns', 'This film is going to be very memorable.');

INSERT INTO Award
VALUES('Golden Globe', 'Best Motion Picture - Drama', '01-Jan-2020', 'Golden Globes', 'Hollywood, CA, USA', '1917', '10-Jan-2020', NULL, NULL, NULL);

INSERT INTO Award
VALUES('Golden Globe', 'Best Director - Motion Picture', '01-Jan-2020', 'Golden Globes', 'Hollywood, CA, USA', '1917', '10-Jan-2020', NULL, 'Sam Mendes', NULL);

INSERT INTO Award
VALUES('BAFTA', 'Best Director', '01-Jan-2020', 'BAFTA Awards', 'United Kingdom', '1917', '10-Jan-2020', NULL, 'Sam Mendes', NULL);

INSERT INTO Director
VALUES('Gore Verbinski', 'Gore Verbinski, one of American cinemas most inventive directors who was a punk-rock guitarist as a teenager and had to sell his guitar to buy his first camera, is now the director of Pirates of the Caribbean: Dead Mans Chest (2006).', '16-Mar-1964', 'Oak Ridge, Tennessee, USA');

INSERT INTO Actor
VALUES('Johnny Depp', 'Johnny Depp is perhaps one of the most versatile actors of his day and age in Hollywood. He was born John Christopher Depp II in Owensboro, Kentucky, on June 9, 1963.', '09-Jun-1963', 'Owensboro, Kentucky, USA');

INSERT INTO Writer
VALUES('Ted Elliott', 'Ted Elliott was born on July 4, 1961 in Santa Ana, California, USA. He is a writer, known for Shrek (2001), The Lone Ranger (2013) and Pirates of the Caribbean: The Curse of the Black Pearl (2003).', '04-Jul-1961', 'Santa Ana, California, USA');

INSERT INTO Writes
VALUES('Pirates of the Caribbean: The Curse of the Black Pearl', '09-Jul-2003', 'Ted Elliott');

INSERT INTO Actor_Credits
VALUES('Johnny Depp', 'Pirates of the Caribbean: The Curse of the Black Pearl');

INSERT INTO Actor_Quotes
VALUES('Johnny Depp', 'You use your money to buy privacy because during most of your life you arent allowed to be normal.');
 
INSERT INTO Director_Credits
VALUES('Gore Verbinski', 'Pirates of the Caribbean: The Curse of the Black Pearl');

INSERT INTO Director_Quotes
VALUES('Gore Verbinski', 'I think when you remake a movie you try not to mess it up.');

INSERT INTO Writer_Credits
VALUES('Ted Elliott', 'Pirates of the Caribbean: The Curse of the Black Pearl');

INSERT INTO Writer_Quotes
VALUES('Ted Elliott', 'Turn in the first draft on the first day of shooting - thats the goal.');

INSERT INTO Show
VALUES('Pirates of the Caribbean: Dead Mans Chest', 'Action, Adventure, Fantasy', 'English', '07-Jul-2006', 7, 'USA', 'Jack Sparrow races to recover the heart of Davy Jones to avoid enslaving his soul to Jones service, as other friends and foes seek the heart for their own agenda as well.', 'Walt Disney Pictures');

INSERT INTO Stars
VALUES('Pirates of the Caribbean: Dead Mans Chest', '07-Jul-2006', 'Johnny Depp', 'Jack Sparrow');

INSERT INTO Directs
VALUES('Pirates of the Caribbean: Dead Mans Chest', '07-Jul-2006', 'Gore Verbinski');

INSERT INTO Writes
VALUES('Pirates of the Caribbean: Dead Mans Chest', '07-Jul-2006', 'Ted Elliott');

INSERT INTO Actor_Credits
VALUES('Johnny Depp', 'Pirates of the Caribbean: Dead Mans Chest');

INSERT INTO Director_Credits
VALUES('Gore Verbinski', 'Pirates of the Caribbean: Dead Mans Chest');

INSERT INTO Writer_Credits
VALUES('Ted Elliott', 'Pirates of the Caribbean: Dead Mans Chest');

INSERT INTO Show
VALUES('Pirates of the Caribbean: At Worlds End', 'Action, Adventure, Fantasy', 'English', '25-May-2007', 7, 'USA', 'Captain Barbossa, Will Turner and Elizabeth Swann must sail off the edge of the map, navigate treachery and betrayal, find Jack Sparrow, and make their final alliances for one last decisive battle.', 'Walt Disney Pictures');

INSERT INTO Stars
VALUES('Pirates of the Caribbean: At Worlds End', '25-May-2007', 'Johnny Depp', 'Jack Sparrow');

INSERT INTO Directs
VALUES('Pirates of the Caribbean: At Worlds End', '25-May-2007', 'Gore Verbinski');

INSERT INTO Writes
VALUES('Pirates of the Caribbean: At Worlds End', '25-May-2007', 'Ted Elliott');

INSERT INTO Actor_Credits
VALUES('Johnny Depp', 'Pirates of the Caribbean: At Worlds End');

INSERT INTO Director_Credits
VALUES('Gore Verbinski', 'Pirates of the Caribbean: At Worlds End');

INSERT INTO Writer_Credits
VALUES('Ted Elliott', 'Pirates of the Caribbean: At Worlds End');

INSERT INTO Actor
VALUES('Geoffrey Rush', 'Geoffrey Roy Rush was born on July 6, 1951, in Toowoomba, Queensland, Australia, to Merle (Bischof), a department store sales assistant, and Roy Baden Rush, an accountant for the Royal Australian Air Force.', '06-Jul-1951', 'Toowoomba, Queensland, Australia');

INSERT INTO Stars
VALUES('Pirates of the Caribbean: The Curse of the Black Pearl', '09-Jul-2003', 'Geoffrey Rush', 'Barbossa');

INSERT INTO Stars
VALUES('Pirates of the Caribbean: Dead Mans Chest', '07-Jul-2006', 'Geoffrey Rush', 'Barbossa');

INSERT INTO Stars
VALUES('Pirates of the Caribbean: At Worlds End', '25-May-2007', 'Geoffrey Rush', 'Barbossa');

INSERT INTO Actor_Credits
VALUES('Geoffrey Rush', 'Pirates of the Caribbean: The Curse of the Black Pearl');

INSERT INTO Actor_Credits
VALUES('Geoffrey Rush', 'Pirates of the Caribbean: Dead Mans Chest');

INSERT INTO Actor_Credits
VALUES('Geoffrey Rush', 'Pirates of the Caribbean: At Worlds End');

INSERT INTO Stars
VALUES('Pirates of the Caribbean: Dead Mans Chest', '07-Jul-2006', 'Jonathan Pryce', 'Governor Weatherby Swann');

INSERT INTO Stars
VALUES('Pirates of the Caribbean: At Worlds End', '25-May-2007', 'Jonathan Pryce', 'Governor Weatherby Swann');

INSERT INTO Actor_Credits
VALUES('Jonathan Pryce', 'Pirates of the Caribbean: Dead Mans Chest');

INSERT INTO Actor_Credits
VALUES('Jonathan Pryce', 'Pirates of the Caribbean: At Worlds End');

INSERT INTO Actor
VALUES('Orlando Bloom', 'Orlando Jonathan Blanchard Copeland Bloom was born on January 13, 1977 in Canterbury, Kent, England.', '13-Jan-1977', 'Canterbury, Kent, England');

INSERT INTO Stars
VALUES('Pirates of the Caribbean: The Curse of the Black Pearl', '09-Jul-2003', 'Orlando Bloom', 'Will Turner');

INSERT INTO Stars
VALUES('Pirates of the Caribbean: Dead Mans Chest', '07-Jul-2006', 'Orlando Bloom', 'Will Turner');

INSERT INTO Stars
VALUES('Pirates of the Caribbean: At Worlds End', '25-May-2007', 'Orlando Bloom', 'Will Turner');

INSERT INTO Actor_Credits
VALUES('Orlando Bloom', 'Pirates of the Caribbean: The Curse of the Black Pearl');

INSERT INTO Actor_Credits
VALUES('Orlando Bloom', 'Pirates of the Caribbean: Dead Mans Chest');

INSERT INTO Actor_Credits
VALUES('Orlando Bloom', 'Pirates of the Caribbean: At Worlds End');

INSERT INTO Actor
VALUES('Keira Knightley', 'Keira Christina Knightley was born March 26, 1985 in the South West Greater London suburb of Richmond.', '26-Mar-1985', 'Teddington, Middlesex, England, UK');

INSERT INTO Stars
VALUES('Pirates of the Caribbean: The Curse of the Black Pearl', '09-Jul-2003', 'Keira Knightley', 'Elizabeth Swann');

INSERT INTO Stars
VALUES('Pirates of the Caribbean: Dead Mans Chest', '07-Jul-2006', 'Keira Knightley', 'Elizabeth Swann');

INSERT INTO Stars
VALUES('Pirates of the Caribbean: At Worlds End', '25-May-2007', 'Keira Knightley', 'Elizabeth Swann');

INSERT INTO Show
VALUES('Pirates of the Caribbean: On Stranger Tides', 'Action, Adventure, Fantasy', 'English', '20-May-2011', 7, 'USA', 'Jack Sparrow and Barbossa embark on a quest to find the elusive fountain of youth, only to discover that Blackbeard and his daughter are after it too.', 'Walt Disney Pictures');

INSERT INTO Actor
VALUES('Penelope Cruz', 'Known outside her native country as the Spanish enchantress, Penélope Cruz Sánchez was born in Madrid to Eduardo Cruz, a retailer, and Encarna Sánchez, a hairdresser.', '28-Apr-1974', 'Alcobendas, Madrid, Spain');

INSERT INTO Show
VALUES('Pirates of the Caribbean: Dead Men Tell No Tales', 'Action, Adventure, Fantasy', 'English', '26-May-2017', 7, 'USA', 'Captain Jack Sparrow is pursued by old rival Captain Salazar and a crew of deadly ghosts who have escaped from the Devils Triangle. Theyre determined to kill every pirate at sea...notably Jack.', 'Walt Disney Pictures');

INSERT INTO Stars
VALUES('Pirates of the Caribbean: On Stranger Tides', '20-May-2011', 'Johnny Depp', 'Jack Sparrow');

INSERT INTO Stars
VALUES('Pirates of the Caribbean: Dead Men Tell No Tales', '26-May-2017', 'Johnny Depp', 'Jack Sparrow');

INSERT INTO Stars
VALUES('Pirates of the Caribbean: On Stranger Tides', '20-May-2011', 'Geoffrey Rush', 'Barbossa');

INSERT INTO Stars
VALUES('Pirates of the Caribbean: Dead Men Tell No Tales', '26-May-2017', 'Geoffrey Rush', 'Barbossa');

INSERT INTO Stars
VALUES('Pirates of the Caribbean: On Stranger Tides', '20-May-2011', 'Penelope Cruz', 'Angelica');

INSERT INTO Stars
VALUES('Pirates of the Caribbean: Dead Men Tell No Tales', '26-May-2017', 'Orlando Bloom', 'Will Turner');

INSERT INTO Stars
VALUES('Pirates of the Caribbean: Dead Men Tell No Tales', '26-May-2017', 'Keira Knightley', 'Elizabeth Swann');

INSERT INTO Actor_Credits
VALUES('Johnny Depp', 'Pirates of the Caribbean: On Stranger Tides');

INSERT INTO Actor_Credits
VALUES('Johnny Depp', 'Pirates of the Caribbean: Dead Men Tell No Tales');

INSERT INTO Actor_Credits
VALUES('Penelope Cruz', 'Pirates of the Caribbean: On Stranger Tides');

INSERT INTO Actor_Credits
VALUES('Geoffrey Rush', 'Pirates of the Caribbean: On Stranger Tides');

INSERT INTO Actor_Credits
VALUES('Orlando Bloom', 'Pirates of the Caribbean: Dead Men Tell No Tales');

INSERT INTO Actor_Credits
VALUES('Keira Knightley', 'Pirates of the Caribbean: Dead Men Tell No Tales');

INSERT INTO Actor
VALUES('Bryan Cranston', 'Bryan Lee Cranston was born on March 7, 1956 in Hollywood, California, to Audrey Peggy Sell, a radio actress, and Joe Cranston, an actor and former amateur boxer.', '07-Mar-1956', 'Hollywood, California, USA');

INSERT INTO Stars
VALUES('Breaking Bad', '20-Jan-2008', 'Bryan Cranston', 'Walter White');

INSERT INTO Actor_Credits
VALUES('Bryan Cranston', 'Breaking Bad');

INSERT INTO Actor
VALUES('Giancarlo Esposito', 'Giancarlo Giuseppe Alessandro Esposito was born in Copenhagen, Denmark, to an Italian carpenter/stagehand father from Naples, Italy, and an African-American opera singer mother from Alabama.', '26-Apr-1958', 'Copenhagen, Denmark');

INSERT INTO Stars
VALUES('Breaking Bad', '20-Jan-2008', 'Giancarlo Esposito', 'Gus Fring');

INSERT INTO Stars
VALUES('The Mandalorian', '12-Nov-2019', 'Giancarlo Esposito', 'Moff Gideon');

INSERT INTO Actor_Credits
VALUES('Giancarlo Esposito', 'The Mandalorian');

INSERT INTO Actor_Quotes
VALUES('Giancarlo Esposito', 'My advice for achieving success is to make a career choice that reflects your passion.');

INSERT INTO Actor_Quotes
VALUES('Giancarlo Esposito', 'Accumulating money has never been a real goal for me. Rather, I think about how to make every moment of my life mean something.');

INSERT INTO Actor_Quotes
VALUES('Giancarlo Esposito', 'I started in the acting business at age 8, so I feel its my experience and social skills for example, how to be charismatic, how not to lose your temper - that have helped me the most to succeed.');

INSERT INTO Award
VALUES('Golden Globe', 'Best Television Series - Drama', '01-Jan-2017', 'Golden Globes', 'Hollywood, CA, USA', 'The Crown', '04-Nov-2016', NULL, NULL, NULL);

INSERT INTO Actor
VALUES('Claire Foy', 'Claire Elizabeth Foy (born 16 April 1984) is an English actress. She studied acting at the Liverpool John Moores University and the Oxford School of Drama and made her screen debut in the pilot of the supernatural comedy series Being Human, in 2008.', '16-Apr-1984', 'Stockport, England, UK');

INSERT INTO Stars
VALUES('The Crown', '04-Nov-2016', 'Claire Foy', 'Queen Elizabeth II');

INSERT INTO Actor_Credits
VALUES('Claire Foy', 'The Crown');

INSERT INTO Actor_Quotes
VALUES('Claire Foy', 'I love home, any home really - my mums, and of course my own. I love eating food there and chilling in bed with a cup of tea.');

INSERT INTO Award
VALUES('Golden Globe', 'Best Performance by an Actress in a Television Series - Drama', '01-Jan-2017', 'Golden Globes', 'Hollywood, CA, USA', 'The Crown', '04-Nov-2016', 'Claire Foy', NULL, NULL);

INSERT INTO Actor
VALUES('Olivia Colman', 'Olivia Colman was born on January 30, 1974 in Norwich, Norfolk, England as Sarah Caroline Olivia Colman. She is an actress, known for The Favourite (2018), Tyrannosaur (2011) and The Lobster (2015).', '30-Jan-1974', 'Norwich, Norfolk, England, UK');

INSERT INTO Stars
VALUES('The Crown', '04-Nov-2016', 'Olivia Colman', 'Queen Elizabeth II');

INSERT INTO Actor_Credits
VALUES('Olivia Colman', 'The Crown')

INSERT INTO Actor_Quotes
VALUES('Olivia Colman', '[on The Suspicions of Mr Whicher: The Suspicions of Mr Whicher: The Murder in Angel Lane (2013)] I had already agreed to do this before Id even read the script, because Paddy was in it.');

INSERT INTO Actor_Quotes
VALUES('Olivia Colman', '[on what drew her to the role of Queen Anne] I loved that she had every emotion under the sun every five minutes. Thats an actors dream. Shes spoiled, grieving, sensitive and cruel.');

INSERT INTO Award
VALUES('Golden Globe', 'Best Performance by an Actress in a Television Series - Drama', '01-Jan-2020', 'Golden Globes', 'Hollywood, CA, USA', 'The Crown', '04-Nov-2016', 'Olivia Colman', NULL, NULL);

INSERT INTO Award
VALUES('SAG Award', 'Outstanding Performance by a Male Actor in a Leading Role', '01-Jan-2004', 'Screen Actors Guild Awards', 'Hollywood, CA, USA', 'Pirates of the Caribbean: The Curse of the Black Pearl', '09-Jul-2003', 'Johnny Depp', NULL, NULL);

INSERT INTO Director
VALUES('Rob Marshall', 'Rob Marshall was born on October 17, 1960 in Madison, Wisconsin, USA. He is known for his work on Chicago (2002), Mary Poppins Returns (2018) and Into the Woods (2014).', '17-Oct-1960', 'Madison, Wisconsin, USA');

INSERT INTO Directs
VALUES('Pirates of the Caribbean: On Stranger Tides', '20-May-2011', 'Rob Marshall');

INSERT INTO Director_Credits
VALUES('Rob Marshall', 'Pirates of the Caribbean: On Stranger Tides');

INSERT INTO Writes
VALUES('Pirates of the Caribbean: On Stranger Tides', '20-May-2011', 'Ted Elliott');

INSERT INTO Writer_Credits
VALUES('Ted Elliott', 'Pirates of the Caribbean: On Stranger Tides');

INSERT INTO Director
VALUES('Joachim Ronning', 'Joachim Rønning is a film director and writer from Sandefjord, Norway - a small coastal town south of Oslo. He spent his teenage years making short films and shooting commercials for local businesses.', '30-May-1972', 'Sandefjord, Norway');

INSERT INTO Directs
VALUES('Pirates of the Caribbean: Dead Men Tell No Tales', '26-May-2017', 'Joachim Ronning');

INSERT INTO Director_Credits
VALUES('Joachim Ronning', 'Pirates of the Caribbean: Dead Men Tell No Tales');

INSERT INTO Writer
VALUES('Jeff Nathanson', 'Jeff Nathanson was born on October 12, 1965 in Los Angeles, California, USA. He is known for his work on Speed 2: Cruise Control (1997), Catch Me If You Can (2002) and Pirates of the Caribbean: Dead Men Tell No Tales (2017).', '12-Oct-1965', 'Los Angeles, California, USA');

INSERT INTO Writes
VALUES('Pirates of the Caribbean: Dead Men Tell No Tales', '26-May-2017', 'Jeff Nathanson');

INSERT INTO Writer_Credits
VALUES('Jeff Nathanson', 'Pirates of the Caribbean: Dead Men Tell No Tales');



INSERT INTO Actor
VALUES('Ceara Flowers','Music lover. Explorer. Incurable student. Zombie guru. Reader. Beer scholar. Social media ninja. Problem solver. Twitter junkie.','11-Dec-58','Oklahoma City, OK');

INSERT INTO Actor
VALUES('Tamara Reese','Hardcore communicator. Passionate social media trailblazer. Infuriatingly humble beer fan.','25-Sep-62','Baltimore, MA');

INSERT INTO Actor
VALUES('Milla Ryan','Student. Devoted introvert. Certified alcohol expert. Coffee geek. Twitter ninja. Hipster-friendly reader.','21-Jun-76','Las Vegas, NV');

INSERT INTO Actor
VALUES('Yunus Slater','Hardcore creator. Amateur social media evangelist. Internet fan. Total baconaholic.','14-Dec-68','Oakland, CA');

INSERT INTO Actor
VALUES('Zi Acosta','Twitter geek. Friendly travel advocate. Food fanatic. Subtly charming pop culture aficionado. Typical organizer.','26-Feb-59','Anchorage, AL');

INSERT INTO Actor
VALUES('Melinda Russo','Hipster-friendly zombie fanatic. Freelance writer. Amateur alcohol fanatic. Bacon practitioner.','31-Jan-75','Buffalo, NY');

INSERT INTO Actor
VALUES('Zackary Broadhurst','Explorer. Passionate zombie maven. Coffee evangelist. Food scholar. Amateur entrepreneur.','19-Dec-54','San Francisco, CA');

INSERT INTO Actor
VALUES('Darrell Buckner','Thinker. Travel practitioner. Food expert. Music advocate. Total zombie aficionado. Award-winning social media fanatic. Problem solver. Gamer.','18-Jan-68','Lincoln, NE');

INSERT INTO Actor
VALUES('Devin Case','Total entrepreneur. Creator. Communicator. Pop culture expert. Unapologetic internet guru.','28-Jun-63','St. Petersburg, FL');

INSERT INTO Actor
VALUES('Humphrey Benton','Wannabe travel fanatic. Hardcore gamer. Social media scholar. Music advocate. Reader. Alcoholaholic. Passionate bacon expert. Proud writer. Troublemaker.','21-Mar-46','Raleigh, NC');

INSERT INTO Actor
VALUES('Neave Ellis','Freelance writer. Foodaholic. Certified web evangelist. Proud alcohol fanatic. Travel advocate. Twitter maven.','4-Jul-72','Detroit, MI');

INSERT INTO Actor
VALUES('Antony Francis','Friendly communicator. Social media buff. Hardcore writer. Web enthusiast. Prone to fits of apathy.','29-Mar-45','Minneapolis, MN');

INSERT INTO Actor
VALUES('Esme-Rose Mcghee','Twitter evangelist. Lifelong beer trailblazer. Reader. Avid internet lover. Thinker. Extreme zombie practitioner.','18-Aug-53','Kansas City, MO');

INSERT INTO Actor
VALUES('Cherry Mcbride','Devoted social media junkie. Entrepreneur. Certified music practitioner. Extreme internet buff. Infuriatingly humble tv trailblazer.','30-Jan-66','Glendale, AZ');

INSERT INTO Actor
VALUES('Mya Simmons','Friendly food enthusiast. Tv aficionado. Gamer. Proud twitter expert. Zombie lover. Bacon maven. Pop culture buff.','28-Aug-59','Mesa, AZ');

INSERT INTO Actor
VALUES('Della Rossi','Amateur zombie evangelist. Student. Bacon nerd. Friendly explorer. Social media maven. Web practitioner. Food buff.','23-Sep-72','Riverside, CA');

INSERT INTO Actor
VALUES('Alina Peters','Beer scholar. Professional web buff. General travel expert. Writer. Total introvert. Alcohol lover.','20-Nov-81','Jersey City, NJ');

INSERT INTO Actor
VALUES('Sama Pritchard','Professional food guru. Troublemaker. Incurable creator. Coffee practitioner. Webaholic. Travel evangelist.','3-Apr-62','Plano, TX');

INSERT INTO Actor
VALUES('Tea Cole','Freelance thinker. Communicator. Musicaholic. Food trailblazer. Writer. Hardcore twitter specialist.','15-Jan-68','New Orleans, LA');

INSERT INTO Actor
VALUES('Blessing Mcculloch','Subtly charming coffee specialist. Infuriatingly humble communicator. Explorer. Web advocate. Lifelong beeraholic. Music expert. Creator.','4-Jul-91','Bakersfield, CA');

INSERT INTO Actor
VALUES('Zidane Easton','Music evangelist. Social media scholar. Extreme beer junkie. Alcohol geek. Unapologetic internet aficionado. Tv fanatic. Web lover.','10-May-42','Long Beach, CA');

INSERT INTO Actor
VALUES('Payton Lloyd','Infuriatingly humble gamer. Travel advocate. Explorer. Typical twitter aficionado. General creator.','2-Jul-81','Lexington-Fayette, KY');

INSERT INTO Actor
VALUES('Roseanna Rudd','Extreme problem solver. Professional web practitioner. Devoted pop culture enthusiast. Evil tv fan.','13-Feb-93','Chandler, AZ');

INSERT INTO Actor
VALUES('Menaal Rollins','Food fan. Tv evangelist. General pop culture advocate. Twitter specialist. Amateur reader. Zombie buff. Certified social media junkie.','13-Aug-48','Los Angeles, CA');

INSERT INTO Actor
VALUES('Tiernan Matthews','Award-winning alcohol fan. Bacon nerd. Hipster-friendly music enthusiast. General troublemaker. Devoted zombie expert.','10-Aug-48','Charlotte, NC');

INSERT INTO Actor
VALUES('Abigail Flynn','Total tv specialist. Passionate beer scholar. Organizer. Award-winning explorer. Future teen idol.','19-Nov-92','Sacramento, CA');

INSERT INTO Actor
VALUES('Everett Bond','Zombie nerd. Evil pop culture evangelist. Award-winning web expert. Extreme travel ninja. Creator. Beer advocate.','2-Jun-50','Stockton, CA');

INSERT INTO Actor
VALUES('Nicolle Finnegan','Entrepreneur. Bacon junkie. Friendly tv lover. Professional twitteraholic. Passionate writer. Award-winning reader.','13-Jan-60','Miami, FL');

INSERT INTO Actor
VALUES('Teri Alvarado','Wannabe analyst. Music guru. Falls down a lot. Friend of animals everywhere. Reader. Social media ninja.','9-Sep-54','Indianopolis, IN');

INSERT INTO Actor
VALUES('Jackson Cooke','Professional social media evangelist. Friendly zombie fanatic. Food practitioner. Avid analyst. Evil entrepreneur.','7-Apr-44','Fort Worth,TX');

INSERT INTO Actor
VALUES('Lukas Poole','Extreme introvert. Zombie buff. Incurable bacon advocate. Explorer. Devoted internet geek.','7-Mar-76','Huntington, NY');

INSERT INTO Actor
VALUES('Evan Rodriguez','Certified student. Internet enthusiast. Analyst. Extreme coffee trailblazer. Social media scholar.','14-Oct-81','Philadelphia, PA');

INSERT INTO Actor
VALUES('Dillon Thornton','Travel ninja. Web advocate. Social media trailblazer. Infuriatingly humble zombie expert.','12-Jul-45','Omaha, NE');

INSERT INTO Actor
VALUES('Umayr Redmond','Certified bacon fan. Total food scholar. Subtly charming web nerd. Wannabe alcohol buff. Infuriatingly humble beer junkie.','8-Oct-66','Aurora, CO');

INSERT INTO Actor
VALUES('Lilly-Mae Rowe','Organizer. Communicator. Freelance bacon fanatic. Alcohol specialist. Certified zombie trailblazer. Travelaholic.','14-Feb-89','Lubbock, TX');

INSERT INTO Actor
VALUES('Leonard Mac','Zombie lover. Creator. Infuriatingly humble student. Typical gamer. Future teen idol. Communicator.','1-Apr-44','Columbus, OH');

INSERT INTO Actor
VALUES('Natalie Meadows','Proud travel nerd. Infuriatingly humble student. Pop culture scholar. Zombie advocate. Professional reader. Analyst.','9-Mar-77','Fort Wayne, IN');

INSERT INTO Actor
VALUES('Aaliya Sutton','Food aficionado. Alcohol expert. Zombie trailblazer. Evil pop culture maven. Bacon guru.','29-Apr-58','Garland, TX');

INSERT INTO Actor
VALUES('Iram Johns','Typical introvert. Coffee geek. Music evangelist. Twitter aficionado. Lifelong food buff. Travel expert.','9-Nov-66','Phoenix, AZ');

INSERT INTO Actor
VALUES('Marlie Mayo','Friend of animals everywhere. Travel fanatic. Problem solver. Friendly web fan.','22-Apr-51','San Bernardino, CA');

INSERT INTO Actor
VALUES('Daisy-May Wright','Beer practitioner. Proud entrepreneur. Travel junkie. Amateur music scholar. Coffee fan.','28-Apr-85','Greensboro, NC');

INSERT INTO Actor
VALUES('Issa Storey','Hardcore food guru. Coffee geek. Beer scholar. Typical explorer. Hipster-friendly social media fan. Avid analyst.','19-Jul-77','Hialeah, FL');

INSERT INTO Actor
VALUES('Efan Lugo','Certified music scholar. Coffee geek. Subtly charming food lover. Professional social media guru. Hardcore beer fan. Internet nerd. Thinker. Bacon specialist.','16-Jun-89','Norfolk, VA');

INSERT INTO Actor
VALUES('Ellesse Blackburn','Entrepreneur. Travel advocate. Devoted organizer. Wannabe social media fanatic. Certified tv maven.','13-Feb-87','Tucson, AZ');

INSERT INTO Actor
VALUES('Bogdan Terrell','Amateur zombie ninja. Explorer. Hardcore foodaholic. Coffee fanatic. Incurable bacon scholar. Troublemaker. Certified internet geek.','12-Dec-56','Pittsburgh, PA');

INSERT INTO Actor
VALUES('Alanis Bassett','Alcohol aficionado. Introvert. Total music lover. Troublemaker. Pop culture evangelist.','1-May-49','Scottsdale, AZ');

INSERT INTO Actor
VALUES('Maxim Markham','Social media scholar. Freelance music fan. Award-winning explorer. Evil creator. Typical writer. Incurable pop culture expert.','15-Nov-65','Chicago, IL');

INSERT INTO Actor
VALUES('Kitty Gibson','Social media guru. Beer practitioner. Music aficionado. Twitter fanatic. Analyst. Infuriatingly humble pop culture evangelist.','21-Nov-64','Nashville, TN');

INSERT INTO Actor
VALUES('Lorraine Duncan','Food fanatic. Subtly charming organizer. Hardcore bacon specialist. Web aficionado. Travel guru.','3-Nov-85','St. Louis, MO');

INSERT INTO Actor
VALUES('Uma Friedman','Zombie scholar. Amateur web nerd. Tv fanatic. Incurable twitter junkie. Beer buff.','15-Jul-87','El Paso, TX');

INSERT INTO Actor
VALUES('Rebecca Paterson','Beer specialist. Proud student. Entrepreneur. Tv practitioner. Introvert. Internet buff. Hipster-friendly bacon aficionado.','20-Jun-42','Tampa, FL');

INSERT INTO Director
VALUES('Danielius Phelps','Music lover. Infuriatingly humble twitter trailblazer. Analyst. Proud social mediaholic. Creator.','1-Jan-64','Colorado Springs, CO');

INSERT INTO Director
VALUES('Keyan Perez','Alcohol aficionado. Hipster-friendly bacon trailblazer. Extreme organizer. Pop culture expert.','11-Nov-67','New York, NY');

INSERT INTO Director
VALUES('Ellisha Ayala','General introvert. Extreme zombie junkie. Twitter advocate. Coffee lover. Subtly charming gamer.','14-Jul-75','Santa Ana, CA');

INSERT INTO Director
VALUES('Kaleem Woodward','Lifelong beer expert. Organizer. Alcohol practitioner. Proud music enthusiast. Wannabe food fan.','4-Feb-85','Newark, New Jersey');

INSERT INTO Director
VALUES('Everly Mccarthy','Award-winning beer ninja. Social media practitioner. Bacon expert. Lifelong alcohol enthusiast. Extreme pop culture advocate.','16-Nov-80','San Antonio, TX');

INSERT INTO Director
VALUES('Yvonne Atkins','Incurable coffee junkie. Thinker. Zombieaholic. Pop culture aficionado. Avid food fan.','7-Feb-75','Jacksonville, FL');

INSERT INTO Director
VALUES('Ifan Beech','Coffee scholar. Food trailblazer. Infuriatingly humble tv enthusiast. Typical zombie advocate.','4-Nov-91','Birmingham, AL');

INSERT INTO Director
VALUES('Jessica Enriquez','Award-winning food aficionado. Bacon geek. Tvaholic. Amateur internet advocate. Beer evangelist. Extreme pop culture trailblazer.','26-Jun-59','Arlington, TX');

INSERT INTO Director
VALUES('Alessia Bailey','Unapologetic problem solver. Incurable introvert. Pop culture practitioner. Friendly tv maven. Avid bacon nerd.','6-Dec-75','Tulsa, OK');

INSERT INTO Director
VALUES('Imogen Brandt','Web aficionado. Friend of animals everywhere. Food advocate. Travel nerd. Infuriatingly humble internet expert.','27-Jul-67','Denver, CO');

INSERT INTO Director
VALUES('Julie Higgs','Twitter lover. Beer maven. Creator. Incurable food evangelist. Bacon nerd. Communicator.','12-Jun-83','Honolulu, HI');

INSERT INTO Director
VALUES('Rita Macias','Lifelong zombie lover. Devoted web fanatic. Subtly charming travel scholar. Friendly problem solver. Creator. Award-winning beer geek.','20-Mar-93','Memphis, TN');

INSERT INTO Director
VALUES('Arjan Coulson','Typical explorer. Food aficionado. Lifelong twitter fan. Wannabe analyst. Bacon enthusiast.','18-Jul-51','Washington D.C.');

INSERT INTO Director
VALUES('Tomi Logan','Tv evangelist. Devoted writer. Typical alcohol buff. Avid pop culture nerd. Amateur creator.','31-Jan-58','Dallas, TX');

INSERT INTO Director
VALUES('Jasmine Gates','Friendly bacon enthusiast. Avid twitter trailblazer. Food evangelist. Freelance zombie ninja.','8-Nov-83','North Hempstead,NY');

INSERT INTO Director
VALUES('Amanah Gilbert','Internet expert. Freelance pop culture scholar. Award-winning bacon maven. Typical tv guru. Hipster-friendly analyst. Wannabe web advocate.','5-May-83','Atlanta, GA');

INSERT INTO Director
VALUES('Isla-Mae Huynh','Tv expert. Problem solver. Social media fan. Music geek. Alcohol fanatic. Hardcore food aficionado.','7-May-50','San Diego, CA');

INSERT INTO Director
VALUES('Iqra Hunt','Social media ninja. Organizer. Amateur twitter lover. Entrepreneur. Writer. Bacon evangelist.','25-Apr-89','Madison, WI');

INSERT INTO Director
VALUES('Hermione Strong','Music advocate. Zombie trailblazer. Analyst. Alcohol scholar. Introvert. Amateur web specialist. Lifelong travel maven.','11-Feb-70','Chulu Vista, CA');

INSERT INTO Director
VALUES('Adrianna Kearney','Infuriatingly humble analyst. Tv fanatic. Hipster-friendly coffee enthusiast.','24-Feb-94','Reno, NV');

INSERT INTO Director
VALUES('Fabien Parkes','Entrepreneur. Twitter enthusiast. Freelance food aficionado. Writer. Certified student. Beer lover.','24-Feb-74','Cleveland, OH');

INSERT INTO Writer
VALUES('Waqas Wilde','Explorer. Coffee fanatic. Total travel scholar. Certified zombieaholic. Entrepreneur. Beer aficionado.','7-Apr-81','Fresno, CA');

INSERT INTO Writer
VALUES('Chanel Alcock','Twitter fanatic. Tv enthusiast. Creator. Wannabe beer lover. Reader. Alcohol fan. Music guru.','28-Jan-88','Orlando, FL');

INSERT INTO Writer
VALUES('Fionn Quinn','Proud communicator. Coffee specialist. Amateur music buff. Future teen idol. Creator.','2-Mar-68','Portland, OR');

INSERT INTO Writer
VALUES('Ahmet Davey','Subtly charming music enthusiast. Gamer. Analyst. Foodaholic. Freelance writer.','14-Jun-46','San Jose, CA');

INSERT INTO Writer
VALUES('Elle-May Bonilla','Troublemaker. Food nerd. Award-winning communicator. Tv enthusiast.','30-May-86','Modesto, CA');

INSERT INTO Writer
VALUES('Wasim Melton','Prone to fits of apathy. Alcohol practitioner. Writer. General problem solver.','13-Jun-50','Anaheim, CA');

INSERT INTO Writer
VALUES('Angelina Alvarez','Passionate tvaholic. Hardcore communicator. Problem solver. Reader. Organizer. Zombie scholar. Internet fan.','23-Jul-77','Laredo, TX');

INSERT INTO Writer
VALUES('Kajetan Byrd','Tv trailblazer. Lifelong food buff. General pop culture ninja. Devoted web enthusiast.','29-Jan-81','Chesapeake, VA');

INSERT INTO Writer
VALUES('Elliott Weaver','Bacon lover. Organizer. Subtly charming music advocate. Travel ninja. Passionate reader. Avid web fan. Extreme pop culture scholar.','11-Apr-79','Baton Rouge, LA');

INSERT INTO Writer
VALUES('Elize Ali','Incurable introvert. Food maven. Alcohol junkie. Friendly tv fanatic. Web fan.','1-Jul-82','Rochester, NY');

INSERT INTO Writer
VALUES('Sofie Sullivan','Hipster-friendly introvert. Coffee fan. Evil student. Bacon scholar. Twitter trailblazer.','23-Jul-85','Toledo, OH');

INSERT INTO Writer
VALUES('Bronwyn Snider','Friendly web nerd. Falls down a lot. Pop culture fan. Devoted zombie buff. Proud organizer. Certified travel junkie. Musicaholic.','25-Apr-89','Montgomery, AL');

INSERT INTO Writer
VALUES('Morgan Trujillo','Reader. Professional pop culture lover. Travel scholar. Devoted food maven. Web fanatic. Internet practitioner. Gamer.','23-Dec-77','St. Paul, MN');

INSERT INTO Writer
VALUES('Willie Serrano','Hardcore introvert. Total web aficionado. Friendly social media specialist. Zombie evangelist.','12-May-83','Houston, TX');

INSERT INTO Writer
VALUES('Emer Molloy','Alcohol trailblazer. Certified introvert. Zombie fanatic. Proud music aficionado. Entrepreneur.','25-Jan-91','Henderson, NV');

INSERT INTO Writer
VALUES('Lennon Delacruz','Subtly charming gamer. Tv lover. Avid bacon nerd. Twitter geek. Beer specialist. Zombie enthusiast.','27-Mar-54','Durham, NC');

INSERT INTO Writer
VALUES('Sofija Clifford','Troublemaker. Creator. Travel scholar. Zombie ninja. Web geek. Evil problem solver. Amateur pop culture specialist.','23-Mar-81','Virginia Beach, VA');

INSERT INTO Writer
VALUES('Lauren Chandler','Evil bacon fan. Infuriatingly humble zombie nerd. Friendly student. Incurable alcohol scholar.','10-Aug-48','Arlington,VA');

INSERT INTO Writer
VALUES('Ana Burt','Introvert. Unapologetic travel fan. Food fanatic. Freelance alcohol junkie. Hardcore tv guru.','23-Jul-95','Seattle, WA');

INSERT INTO Writer
VALUES('Fraser Denton','Explorer. Total twitter maven. Amateur music evangelist. Tv nerd. Gamer.','20-Jan-61','Austin, TX');

INSERT INTO Writer
VALUES('Isa Dudley','General creator. Food specialist. Award-winning gamer. Hipster-friendly pop culture trailblazer. Introvert.','23-Mar-71','Albuquerque, NM');

INSERT INTO Writer
VALUES('Hareem Hurst','Incurable web evangelist. Hipster-friendly gamer. Award-winning entrepreneur. Falls down a lot.','21-Aug-59','Cincinnati, OH');

INSERT INTO Writer
VALUES('Keri Hardy','Wannabe coffee nerd. Hardcore tv advocate. Reader. Alcohol geek. Bacon maven. Typical thinker. Total beeraholic.','1-Sep-52','Milwaukee, WI');

INSERT INTO Writer
VALUES('Joy Guzman','Amateur troublemaker. Award-winning organizer. Lifelong tv expert. Zombie specialist. Explorer. Beer buff.','20-Sep-50','Boise, ID');

INSERT INTO Writer
VALUES('Lillie-Mae Connor','Beer expert. Typical explorer. Web advocate. Bacon fanatic. Hipster-friendly introvert. Gamer.','1-Apr-44','Corpus Christi, TX');

INSERT INTO Writer
VALUES('Rayhan Vu','Total zombie evangelist. Friendly web expert. General organizer. Beer junkie. Internetaholic.','7-Dec-68','Wichita, KA');

INSERT INTO Writer
VALUES('Inigo Smart','Subtly charming food geek. Tv lover. Unapologetic twitter ninja. Web specialist. Avid entrepreneur. Introvert. Analyst.','27-Dec-55','Boston, MA');

INSERT INTO Writer
VALUES('Emme Pace','Internet lover. Food junkie. Explorer. Analyst. Amateur troublemaker. Total zombie enthusiast.','8-Mar-54','Akron, OH');

INSERT INTO Actor_Quotes
VALUES('Ceara Flowers','Every well built house started in the form of a definite purpose plus a definite plan in the nature of a set of blueprints.');

INSERT INTO Actor_Quotes
VALUES('Tamara Reese','Just as appetite comes by eating, so work brings inspiration, if inspiration is not discernible at the beginning.');

INSERT INTO Actor_Quotes
VALUES('Milla Ryan','My life has been a tapestry of rich and royal hue, an everlasting vision of the everchanging view.');

INSERT INTO Actor_Quotes
VALUES('Yunus Slater','A perfect summer day is when the sun is shining, the breeze is blowing, the birds are singing, and the lawn mower is broken.');

INSERT INTO Actor_Quotes
VALUES('Zi Acosta','Associate reverently, and as much as you can, with your loftiest thoughts.');

INSERT INTO Actor_Quotes
VALUES('Melinda Russo','The robbd that smiles steals something from the thief.');

INSERT INTO Actor_Quotes
VALUES('Zackary Broadhurst','Curiosity will conquer fear even more than bravery will.');

INSERT INTO Actor_Quotes
VALUES('Darrell Buckner','Every charitable act is a stepping stone toward heaven');

INSERT INTO Actor_Quotes
VALUES('Devin Case','The sun and the moon and the stars would have disappeared long ago ... had they happened to be within the reach of predatory human hands.');

INSERT INTO Actor_Quotes
VALUES('Humphrey Benton','Ive been lucky. Opportunities dont often come along. So, when they do, you have to grab them.');

INSERT INTO Actor_Quotes
VALUES('Neave Ellis','Fires cant be made with dead embers, nor can enthusiasm be stirred by spiritless men. Enthusiasm in our daily work lightens effort and turns even labor into pleasant tasks.');

INSERT INTO Actor_Quotes
VALUES('Antony Francis','People just dont know how to handle it if a woman uses smarts and brains rather than tits.');

INSERT INTO Actor_Quotes
VALUES('Esme-Rose Mcghee','Nothing adds such dignity to character as the recognition of ones self- sovereignty.');

INSERT INTO Actor_Quotes
VALUES('Cherry Mcbride','By and large, I seem to have made more mistakes than any others of whom I know, but have learned thereby to make ever swifter acknowledgment of the errors and thereafter immediately set about to deal more effectively with the truths disclosed by the acknowledgment of erroneous assumptions.');

INSERT INTO Actor_Quotes
VALUES('Mya Simmons','For this is the true strength of guilty kings, When they corrupt the souls of those they rule.');

INSERT INTO Actor_Quotes
VALUES('Della Rossi','That she won the game startled me cold. The way she won, the pattern of her thought on the chessboard, charmed me warm again and then some.');

INSERT INTO Actor_Quotes
VALUES('Alina Peters','The only thing I was fit for was to be a writer, and this notion rested solely on my suspicion that I would never be fit for real work, and that writing didnt require any.');

INSERT INTO Actor_Quotes
VALUES('Sama Pritchard','The secret of ugliness consists not in irregularity, but in being uninteresting.');

INSERT INTO Actor_Quotes
VALUES('Tea Cole','The best way is to forget doubts and set about the task in hand.');

INSERT INTO Actor_Quotes
VALUES('Blessing Mcculloch','No time to marry, no time to settle down; Im a young woman, and I aint done runnin around.');

INSERT INTO Actor_Quotes
VALUES('Zidane Easton','Its a fine thing to rise above pride, but you must have pride in order to do so.');

INSERT INTO Actor_Quotes
VALUES('Payton Lloyd','If any man seeks for greatness, let him forget greatness and ask for truth, and he will find both.');

INSERT INTO Actor_Quotes
VALUES('Roseanna Rudd','America is at that awkward stage; its too late to work within the system, but too early to shoot the bastards.');

INSERT INTO Actor_Quotes
VALUES('Menaal Rollins','Often the hands will solve a mystery that the intellect has struggled with in vain.');

INSERT INTO Actor_Quotes
VALUES('Tiernan Matthews','Everything we see is a shadow cast by that which we do not see.');

INSERT INTO Actor_Quotes
VALUES('Abigail Flynn','I dont have false teeth. Do you think Id buy teeth like these?');

INSERT INTO Actor_Quotes
VALUES('Everett Bond','It is one of the most beautiful compensations of this life that no man can sincerely try to help another without helping himself.');

INSERT INTO Actor_Quotes
VALUES('Nicolle Finnegan','But make no mistake: the weeds will win: nature bats last.');

INSERT INTO Actor_Quotes
VALUES('Teri Alvarado','First prize was a week in Philadelphia. Second prize was two weeks. Evidently had a low opinion of Philadelphia');

INSERT INTO Actor_Quotes
VALUES('Jackson Cooke','The art of living does not consist in preserving and clinging to a particular mood of happiness, but in allowing happiness to change its form without being disappointed by the change; for happiness, like a child, must be allowed to grow up.');

INSERT INTO Actor_Quotes
VALUES('Lukas Poole','Gentlemen, you cant fight in here! This is the war room.');

INSERT INTO Actor_Quotes
VALUES('Evan Rodriguez','I had reasoned this out in my mind, there was two things I had a right to, liberty and death. If I could not have one, I would have the other, for no man should take me alive.');

INSERT INTO Actor_Quotes
VALUES('Dillon Thornton','Cleopatras nose, had it been shorter, the whole face of the world would have been changed.');

INSERT INTO Actor_Quotes
VALUES('Umayr Redmond','Just because some of us can read and write and do a little math, that doesnt mean we deserve to conquer the universe.');

INSERT INTO Actor_Quotes
VALUES('Lilly-Mae Rowe','I do not attach much importance to Americas bombs. I attach importance to her great vitality and integrity. The strength of America is deeper and more significant than her financial power.');

INSERT INTO Actor_Quotes
VALUES('Leonard Mac','Leadership is the capacity to translate vision into reality.');

INSERT INTO Actor_Quotes
VALUES('Natalie Meadows','Nature reaches out to us with welcoming arms, and bids us enjoy her beauty; but we dread her silence and rush into the crowded cities, there to huddle like sheep fleeing from a ferocious wolf.');

INSERT INTO Actor_Quotes
VALUES('Aaliya Sutton','Take your life in your own hands and what happens? A terrible thing: no one to blame.');

INSERT INTO Actor_Quotes
VALUES('Iram Johns','Under any conditions, anywhere, whatever you are doing, there is some ordinance under which you can be booked.');

INSERT INTO Actor_Quotes
VALUES('Marlie Mayo','Evolution is fascinating to watch. To me it is the most interesting when one can observe the evolution of a single man.');

INSERT INTO Actor_Quotes
VALUES('Daisy-May Wright','The true harbinger of spring is not crocuses or swallows returning to Capistrano, but the sound of the bat on the ball.');

INSERT INTO Actor_Quotes
VALUES('Issa Storey','Religion; Humanitys greatest folly, greatest curse.');

INSERT INTO Actor_Quotes
VALUES('Efan Lugo','A man may die, nations may rise and fall, but an idea lives on.');

INSERT INTO Actor_Quotes
VALUES('Ellesse Blackburn','It is important to our friends to believe that we are unreservedly frank with them, and important to friendship that we are not.');

INSERT INTO Actor_Quotes
VALUES('Bogdan Terrell','One swallow does not make a summer, but one skein of geese, cleaving the murk of March thaw, is the Spring.');

INSERT INTO Actor_Quotes
VALUES('Alanis Bassett','Good fame is like fire; when you have kindled you may easily preserve it; but if you extinguish it, you will not easily kindle it again.');

INSERT INTO Actor_Quotes
VALUES('Maxim Markham','Beauty itself doth of itself persuade The eyes of man without an orator.');

INSERT INTO Actor_Quotes
VALUES('Kitty Gibson','The ultimate high: a mans abilities equaling his opinion of them.');

INSERT INTO Actor_Quotes
VALUES('Lorraine Duncan','A Muslim has five duties towards another Muslim; to return a salutation, visit the sick, follow funerals, accept an invitation and say God have mercy on you when one sneezes.');

INSERT INTO Actor_Quotes
VALUES('Uma Friedman','To business that we love we rise betime, And go tot with delight.');

INSERT INTO Actor_Quotes
VALUES('Rebecca Paterson','True wisdom lies in gathering the precious things out of each day as it goes by.');

INSERT INTO Director_Quotes
VALUES('Danielius Phelps','LECTURER, n. One with his hand in your pocket, his tongue in your ear and his faith in your patience.');

INSERT INTO Director_Quotes
VALUES('Keyan Perez','The greatest mistake I made was not to die in office.');

INSERT INTO Director_Quotes
VALUES('Ellisha Ayala','We thought we were running away from the grownups, and now we are the grownups.');

INSERT INTO Director_Quotes
VALUES('Kaleem Woodward','Our cities with their swollen populations and cliff dwelling high-rise buildings are breeding places for loneliness. Neighborhoods crumble under the housing development bulldozers and families scatter in pursuit of jobs and professions everywhere. In a world of wheels, old and comfortable groupings of people have disappeared.');

INSERT INTO Director_Quotes
VALUES('Everly Mccarthy','The lovely thing about being forty is that you can appreciate twenty-five-year-old men more.');

INSERT INTO Director_Quotes
VALUES('Yvonne Atkins','There is a field where all wonderful perfections of microscope and telescope fail, all exquisite niceties of weights and measures, as well as that which is behind them, the keen and driving power of the mind. No facts however indubitably detected, no effort of reason however magnificently maintained, can prove that Bachs music is beautiful.');

INSERT INTO Director_Quotes
VALUES('Ifan Beech','There is no human problem which could not be solved if people would simply do as I advise.');

INSERT INTO Director_Quotes
VALUES('Jessica Enriquez','Lowly, with a broken neck, The crocus lays her cheek to mire.');

INSERT INTO Director_Quotes
VALUES('Alessia Bailey','Who will grieve for this woman? Does she not seem too insignificant for our concern? Yet in my heart I never will deny her, Who suffered death because she chose to turn.');

INSERT INTO Director_Quotes
VALUES('Imogen Brandt','She s no chicken; she s on the wrong side of thirty, if she be a day.');

INSERT INTO Director_Quotes
VALUES('Julie Higgs','At the sight of blackbirds Flying in a green light, Even the bawds of euphony Would cry out sharply.');

INSERT INTO Director_Quotes
VALUES('Rita Macias','Happy and successful cooking doesnt rely only on know-how; it comes from the heart, makes great demands on the palate and needs enthusiasm and a deep love of food to bring it to life.');

INSERT INTO Director_Quotes
VALUES('Arjan Coulson','I have found that great people do have in common ... an immense belief in themselves and in their mission. They also have gerat determination as well as an ability to work hard. At the crucial moment of decision, they draw on their accumulated wisdom. Above all, they have integrity.');

INSERT INTO Director_Quotes
VALUES('Tomi Logan','Decided only to be undecided, resolved to be irresolute, adamant for drift, solid for fluidity, all-powerful to be impotent. Of Stanley Baldwins policies.');

INSERT INTO Director_Quotes
VALUES('Jasmine Gates','Research teaches a man to admit he is wrong and to be proud of the fact that he does so, rather than try with all his energy to defend an unsound plan because he is afraid that admission of error is a confession of weakness when rather it is a sign of strength.');

INSERT INTO Director_Quotes
VALUES('Amanah Gilbert','The growth of bigness has resulted in ruthless sacrifices of human value. The disappearance of free enterprise has submerged the individual in the impersonal corporation. When a nation of shopkeepers is transformed into a nation of clerks, enormous spiritual sacrifices are made.');

INSERT INTO Director_Quotes
VALUES('Isla-Mae Huynh','RETRIBUTION, n. A rain of fire-and-brimstone that falls alike upon the just and such of the unjust as have not procured shelter by evicting them.');

INSERT INTO Director_Quotes
VALUES('Iqra Hunt','These people are so worthless it makes me want to puke blood. I would gladly open fire on them, but if given a choice Id rather subject them to a slower form of death. They fear me because Im intelligent and creative. I have something better to do with my time. They are insecure');

INSERT INTO Director_Quotes
VALUES('Hermione Strong','We need timeless principles to steer by in running our organizations and building our personal careers. We need high standards ... the ethics of excellence.');

INSERT INTO Director_Quotes
VALUES('Adrianna Kearney','Fear not that thy life shall come to an end, but rather fear that it shall never have a beginning.');

INSERT INTO Director_Quotes
VALUES('Fabien Parkes','Does anyone believe that the difference between the Lebesgue and Riemann integrals can have physical significance, and that whether say, an airplane would or would not fly could depend on this difference? If such were claimed, I should not care to fly in that plane.');

INSERT INTO Writer_Quotes
VALUES('Waqas Wilde','Private patients, if they do not like me, can go elsewhere; but the poor devils in the hospital I am bound to take care of.');

INSERT INTO Writer_Quotes
VALUES('Chanel Alcock','PHYSIOGNOMY, n. The art of determining the character of another by the resemblances and differences between his face and our own, which is the standard of excellence.');

INSERT INTO Writer_Quotes
VALUES('Fionn Quinn','In matters of style swim with the current; In matters of principle, stand like a rock.');

INSERT INTO Writer_Quotes
VALUES('Ahmet Davey','All we have to do is to go onward and upward, and keep the commandments of our Father and God; and he will confound our enemies.');

INSERT INTO Writer_Quotes
VALUES('Elle-May Bonilla','Mr. Keating: Seize the day! Make your lives extraordinary.');

INSERT INTO Writer_Quotes
VALUES('Wasim Melton','Life is not so short but that there is always time enough for courtesy.');

INSERT INTO Writer_Quotes
VALUES('Angelina Alvarez','On one issue at least, men and women agree; they both distrust women.');

INSERT INTO Writer_Quotes
VALUES('Kajetan Byrd','New Yorkers love it when you spill your guts out there. Spill your guts at Wimbledon and they make you stop and clean it up.');

INSERT INTO Writer_Quotes
VALUES('Elliott Weaver','Pity me that the heart is slow to learn What the swift mind beholds at every turn.');

INSERT INTO Writer_Quotes
VALUES('Elize Ali','Forget not that the earth delights to feel your bare feet and the winds long to play with your hair.');

INSERT INTO Writer_Quotes
VALUES('Sofie Sullivan','The shoe that fits one person pinches another; there is no recipe for living that suits all cases.');

INSERT INTO Writer_Quotes
VALUES('Bronwyn Snider','The art of invention grows young with the things invented.');

INSERT INTO Writer_Quotes
VALUES('Morgan Trujillo','Do you believe in fairies? ... If you believe, clap your hands!');

INSERT INTO Writer_Quotes
VALUES('Willie Serrano','The exact measure of the progress of civilization is the degree in which the intelligence of the common mind has prevailed over wealth and brute force.');

INSERT INTO Writer_Quotes
VALUES('Emer Molloy','I am once more seated under my own vine and fig tree ... and hope to spend the remainder of my days in peaceful retirement, making political pursuits yield to the more rational amusement of cultivating the earth.');

INSERT INTO Writer_Quotes
VALUES('Lennon Delacruz','You cannot help men permanently by doing for them what they could and should do for themselves.');

INSERT INTO Writer_Quotes
VALUES('Sofija Clifford','CONNOISSEUR, n. A specialist who knows everything about something and nothing about anything else.');

INSERT INTO Writer_Quotes
VALUES('Lauren Chandler','They see nothing wrong in the rule that to the victors belong the spoils of the enemy.');

INSERT INTO Writer_Quotes
VALUES('Ana Burt','Experience is the best of school masters, only the school fees are heavy.');

INSERT INTO Writer_Quotes
VALUES('Fraser Denton','Those who listened to Lord Chatham felt that there was something finer in the man, than anything which he said.');

INSERT INTO Writer_Quotes
VALUES('Isa Dudley','People are like stained-glass windows. They sparkle when the sun is out, but when the darkness sets in, their true beauty is revealed only if there is a light from within.');

INSERT INTO Writer_Quotes
VALUES('Hareem Hurst','twisting inland, the sea fog takes awhile in the apple trees.');

INSERT INTO Writer_Quotes
VALUES('Keri Hardy','Imagine a school with children that can read or write, but with teachers who cannot, and you have a metaphor of the Information Age in which we live.');

INSERT INTO Writer_Quotes
VALUES('Joy Guzman','Actions of the last age are like almanacs of the last year.');

INSERT INTO Writer_Quotes
VALUES('Lillie-Mae Connor','Gratitude is the fairest blossom Which springs from the soul.');

INSERT INTO Writer_Quotes
VALUES('Rayhan Vu','Through the magic of motion pictures, someone whos never left Peoria knows the softness of a Paris spring, the color of a Nile sunset, the sorts of vegetation one will find along the upper Amazon and that Big Ben has not yet gone digital.');

INSERT INTO Writer_Quotes
VALUES('Inigo Smart','The butterfly counts not months but moments, and has time enough.');

INSERT INTO Writer_Quotes
VALUES('Emme Pace','Great men sometimes lose the reins and lose their heads. This time, let us hope that they will retain them and that when victory is assured they will sit down and reckon what the future is going to be for their countries as well as for other lands.');




ALTER TABLE Show
ADD CONSTRAINT Show_PCo_FK FOREIGN KEY(Production_Company, Country_of_Production)
REFERENCES Production_Company(PC_Name, PC_Country);

ALTER TABLE Episode
ADD CONSTRAINT Episode_of_Show_FK FOREIGN KEY(Show_Titled, Show_Aired)
REFERENCES Show(Title, Release_Date);

ALTER TABLE Stars
ADD CONSTRAINT Stars_in_Show_FK FOREIGN KEY(Show_title, Show_Aired)
REFERENCES Show(Title, Release_Date);

ALTER TABLE Stars
ADD CONSTRAINT Stars_Actor_FK FOREIGN KEY(Actor)
REFERENCES Actor(Actor_Name);

ALTER TABLE Directs
ADD CONSTRAINT Directs_Show_FK FOREIGN KEY(Show_title, Show_Aired)
REFERENCES Show(Title, Release_Date);

ALTER TABLE Directs
ADD CONSTRAINT Director_FK FOREIGN KEY(Director_name)
REFERENCES Director(Name);

ALTER TABLE Actor_Credits
ADD CONSTRAINT Actor_Credit_FK FOREIGN KEY(AName)
REFERENCES Actor(Actor_Name);

ALTER TABLE Actor_Quotes
ADD CONSTRAINT Actor_Quote_FK FOREIGN KEY(AName)
REFERENCES Actor(Actor_Name);

ALTER TABLE Director_Credits
ADD CONSTRAINT Director_Credit_FK FOREIGN KEY(DName)
REFERENCES Director(Name);

ALTER TABLE Director_Quotes
ADD CONSTRAINT Director_Quotes_FK FOREIGN KEY(DName)
REFERENCES Director(Name);

ALTER TABLE Writer_Credits
ADD CONSTRAINT Writer_Credit_FK FOREIGN KEY(WName)
REFERENCES Writer(Writer_name);

ALTER TABLE Writer_Quotes
ADD CONSTRAINT Writer_Quotes_FK FOREIGN KEY(WName)
REFERENCES Writer(Writer_name);

ALTER TABLE Award
ADD CONSTRAINT Show_Award_FK FOREIGN KEY(Show, Show_Aired)
REFERENCES Show(Title, Release_Date);

ALTER TABLE Award
ADD CONSTRAINT Actor_Award_FK FOREIGN KEY(Actor)
REFERENCES Actor(Actor_Name);

ALTER TABLE Award
ADD CONSTRAINT Director_Award_FK FOREIGN KEY(Director)
REFERENCES Director(Name);

ALTER TABLE Award
ADD CONSTRAINT Writer_Award_FK FOREIGN KEY(Writer)
REFERENCES Writer(Writer_name);
