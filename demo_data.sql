-- ALL DATA GENERERAD AV CLAUDE:
-- har skrivit vilka kolumner som ska fyllas med vad och deras datatyper etc
-- kan hända att allt inte stämmer 100% men är tillräckligt bra för ett demo


-- Insert data into Författare (Authors)
INSERT INTO [Författare] ([Förnamn], Efternamn, [Födelsedatum]) VALUES
('Astrid', 'Lindgren', '1907-11-14'),
('J.K.', 'Rowling', '1965-07-31'),
('Stieg', 'Larsson', '1954-08-15'),
('August', 'Strindberg', '1849-01-22'),
('Selma', 'Lagerlöf', '1858-11-20'),
('Jonas', 'Jonasson', '1961-07-06'),
('Fredrik', 'Backman', '1981-06-02'),
('Camilla', 'Läckberg', '1974-08-30'),
('Henning', 'Mankell', '1948-02-03'),
('Mari', 'Jungstedt', '1962-10-31'),
('Lars', 'Kepler', '1967-03-15'),
('Karin', 'Boye', '1900-10-26'),
('Tove', 'Jansson', '1914-08-09'),
('Hjalmar', 'Söderberg', '1869-07-02'),
('John', 'Ajvide Lindqvist', '1968-12-02'),
('Liza', 'Marklund', '1962-09-09'),
('David', 'Lagercrantz', '1962-09-04'),
('Niklas', 'Natt och Dag', '1979-01-08'),
('Per', 'Olov Enquist', '1934-09-23'),
('Kerstin', 'Ekman', '1933-08-27'),
('Jan', 'Guillou', '1944-01-17'),
('Jonas', 'Gardell', '1963-11-02'),
('Viveca', 'Sten', '1959-06-18'),
('Arne', 'Dahl', '1963-01-11'),
('Håkan', 'Nesser', '1950-02-21'),
('Haruki', 'Murakami', '1949-01-12'),
('Gabriel', 'García Márquez', '1927-03-06'),
('Elena', 'Ferrante', '1943-04-05'),
('Karl', 'Ove Knausgård', '1968-12-06'),
('Michel', 'Houellebecq', '1956-02-26'),
('Orhan', 'Pamuk', '1952-06-07'),
('Margaret', 'Atwood', '1939-11-18'),
('Chimamanda', 'Ngozi Adichie', '1977-09-15'),
('Olga', 'Tokarczuk', '1962-01-29'),
('Jo', 'Nesbø', '1960-03-29'),
('Tove', 'Alsterdal', '1960-09-14'),
('Jens', 'Lapidus', '1974-05-24'),
('Katarina', 'Wennstam', '1973-10-17'),
('Jussi', 'Adler-Olsen', '1950-08-02'),
('Leif GW', 'Persson', '1945-03-12');

-- Insert data into Förlag (Publishers)
INSERT INTO Förlag (Namn) VALUES
('Bonnier'),
('Norstedts'),
('Rabén & Sjögren'),
('Bloomsbury'),
('Forum'),
('Albert Bonniers Förlag'),
('Alfabeta'),
('Natur & Kultur'),
('Piratförlaget'),
('Wahlström & Widstrand');

-- Insert data into Böcker (Books)
INSERT INTO [Böcker] (ISBN, Titel, [Språk], Pris, Utgivningsdatum, [FörlagID]) VALUES
('9789129657401', 'Pippi Långstrump', 'Svenska', 149, '1945-11-26', 3),
('9789129688306', 'Emil i Lönneberga', 'Svenska', 129, '1963-01-15', 3),
('9781408855652', 'Harry Potter och De Vises Sten', 'Svenska', 199, '1997-06-26', 4),
('9781408855669', 'Harry Potter och Hemligheternas Kammare', 'Svenska', 199, '1998-07-02', 4),
('9789113084893', 'Män som hatar kvinnor', 'Svenska', 179, '2005-08-01', 2),
('9789113084909', 'Flickan som lekte med elden', 'Svenska', 179, '2006-06-01', 2),
('9789174293487', 'Röda rummet', 'Svenska', 159, '1879-11-01', 5),
('9789174293760', 'Nils Holgerssons underbara resa', 'Svenska', 169, '1906-12-01', 1),
('9789113045108', 'Hundraåringen som klev ut genom fönstret', 'Svenska', 159, '2009-08-26', 2),
('9789100175115', 'Folk med ångest', 'Svenska', 189, '2019-04-25', 6),
('9789175036434', 'Isprinsessan', 'Svenska', 149, '2003-05-14', 9),
('9789176631355', 'Mördare utan ansikte', 'Svenska', 169, '1991-09-10', 8),
('9789113056234', 'Den döende detektiven', 'Svenska', 179, '2010-08-19', 10),
('9789143504392', 'I denna stilla natt', 'Svenska', 155, '2004-06-01', 7),
('9789146235460', 'Hypnotisören', 'Svenska', 195, '2009-01-15', 6),
('9789100183856', 'Kallocain', 'Svenska', 139, '1940-10-01', 6),
('9789129672190', 'Trollvinter', 'Svenska', 129, '1957-10-01', 3),
('9789100183863', 'Doktor Glas', 'Svenska', 149, '1905-10-01', 6),
('9789113071435', 'Låt den rätte komma in', 'Svenska', 189, '2004-05-15', 8),
('9789113084916', 'Luftslottet som sprängdes', 'Svenska', 179, '2007-05-15', 2),
('9781408855676', 'Harry Potter och Fången från Azkaban', 'Svenska', 219, '1999-07-08', 4),
('9781408855683', 'Harry Potter och Den Flammande Bägaren', 'Svenska', 249, '2000-07-08', 4),
('9789176795941', '1793', 'Svenska', 179, '2017-08-17', 5),
('9789146236053', 'Ondskan', 'Svenska', 149, '1981-09-05', 6),
('9789185849482', 'Hemsöborna', 'Svenska', 139, '1887-01-15', 8),
('9789113111438', 'Det som inte dödar oss', 'Svenska', 179, '2015-08-27', 2),
('9789146235477', 'Sprängaren', 'Svenska', 159, '1998-08-15', 6),
('9789127173194', 'Stieg Larssons arv', 'Svenska', 215, '2019-11-14', 1),
('9789127173392', 'Torka aldrig tårar utan handskar', 'Svenska', 169, '2012-09-01', 1),
('9789113084947', 'Mannen som sökte sin skugga', 'Svenska', 179, '2017-09-07', 2),
('9789175037363', 'I natt är du död', 'Svenska', 175, '2011-03-24', 9),
('9789127160972', 'Legionärerna', 'Svenska', 145, '1968-09-15', 1),
('9789146237234', 'Lasermannen', 'Svenska', 179, '1999-09-01', 6),
('9789113084930', 'Hon som måste dö', 'Svenska', 179, '2019-06-06', 2),
('9789176799994', '1794', 'Svenska', 179, '2019-09-12', 5),
('9789175039046', 'I farans riktning', 'Svenska', 175, '2013-06-01', 9),
('9789100182144', 'En man som heter Ove', 'Svenska', 169, '2012-08-27', 6),
('9789189061583', 'Låt mig ta din hand', 'Svenska', 199, '2021-08-26', 5),
('9789113113746', 'Snabba cash', 'Svenska', 179, '2006-07-15', 2),
('9789177592433', 'Svårförklarligt', 'Svenska', 189, '2021-01-21', 7),
('9789100185718', 'Nattsystern', 'Svenska', 189, '2020-10-29', 6),
('9789113025162', 'Den sanna historien om Pinocchios näsa', 'Svenska', 179, '2013-06-15', 2),
('9789113115634', 'Bombmakaren och hans kvinna', 'Svenska', 195, '2022-03-10', 2),
('9789113074092', 'Vindlande fågeln', 'Svenska', 219, '1998-03-15', 2),
('9789100183405', 'Hundra år av ensamhet', 'Svenska', 189, '1970-04-10', 6),
('9789174617283', 'Min lysande väninna', 'Svenska', 179, '2016-09-10', 5),
('9789127071667', 'Främlingen', 'Svenska', 159, '1946-11-30', 1),
('9789177016632', 'Tjänarinnans berättelse', 'Svenska', 195, '1986-05-22', 3),
('9789170016011', 'Min kamp 1', 'Svenska', 239, '2011-09-05', 9),
('9789170160417', 'Snömannen', 'Svenska', 199, '2007-12-10', 10),
('9780307350152', 'The Wind-Up Bird Chronicle', 'Engelska', 195, '1997-01-12', 8),
('9780060883287', 'One Hundred Years of Solitude', 'Engelska', 179, '1967-05-30', 6),
('9781609455064', 'My Brilliant Friend', 'Engelska', 169, '2012-10-25', 5),
('9780099555162', 'The Stranger', 'Engelska', 149, '1942-05-19', 1),
('9780385547925', 'The Handmaid''s Tale', 'Engelska', 189, '1985-06-14', 3),
('9788202419417', 'Min kamp 1', 'Norska', 229, '2009-09-01', 9),
('9788203363191', 'Snömannen', 'Norska', 199, '2007-10-02', 10),
('9782081258495', 'Soumission', 'Franska', 249, '2015-01-07', 7),
('9783423142311', 'Der Vorleser', 'Tyska', 179, '1995-09-01', 6),
('9788866213291', 'L''amica geniale', 'Italienska', 215, '2011-10-19', 5),
('9788437604947', 'Cien años de soledad', 'Spanska', 185, '1967-05-30', 6);

-- Insert data into Bokförfattare (Book-Author relationships)
INSERT INTO [Bokförfattare] (ISBN, [FörfattareID], Roll) VALUES
('9789129657401', 1, 'Författare'),
('9789129688306', 1, 'Författare'),
('9781408855652', 2, 'Författare'),
('9781408855669', 2, 'Författare'),
('9789113084893', 3, 'Författare'),
('9789113084909', 3, 'Författare'),
('9789174293487', 4, 'Författare'),
('9789174293760', 5, 'Författare'),
('9789113045108', 6, 'Författare'),
('9789100175115', 7, 'Författare'),
('9789175036434', 8, 'Författare'),
('9789176631355', 9, 'Författare'),
('9789113056234', 9, 'Författare'),
('9789143504392', 10, 'Författare'),
('9789146235460', 11, 'Författare'),
('9789100183856', 12, 'Författare'),
('9789129672190', 13, 'Författare'),
('9789100183863', 14, 'Författare'),
('9789113071435', 15, 'Författare'),
('9789113084916', 3, 'Författare'),
('9781408855676', 2, 'Författare'),
('9781408855683', 2, 'Författare'),
('9789176795941', 18, 'Författare'),
('9789146236053', 21, 'Författare'),
('9789185849482', 4, 'Författare'),
('9789113111438', 17, 'Författare'),
('9789113111438', 2, 'Co-författare'),
('9789146235477', 16, 'Författare'),
('9789127173194', 17, 'Författare'),
('9789127173194', 3, 'Ämne'),
('9789127173392', 22, 'Författare'),
('9789113084947', 17, 'Författare'),
('9789113084947', 3, 'Originalförfattare'),
('9789175037363', 23, 'Författare'),
('9789127160972', 21, 'Författare'),
('9789146237234', 16, 'Författare'),
('9789146237234', 21, 'Editor'),
('9789113084930', 17, 'Författare'),
('9789113084930', 3, 'Originalförfattare'),
('9789176799994', 18, 'Författare'),
('9789175039046', 23, 'Författare'),
('9789175039046', 16, 'Konsult'),
('9789100182144', 7, 'Författare'),
('9789146236053', 19, 'Editor'),
('9789127173392', 19, 'Faktagranskare'),
('9789113084947', 24, 'Språkkonsult'),
('9789113084930', 25, 'Förord'),
('9789176799994', 9, 'Historisk konsult'),
('9789100182144', 22, 'Inspiration'),
('9789189061583', 36, 'Författare'),
('9789113113746', 37, 'Författare'),
('9789177592433', 38, 'Författare'),
('9789100185718', 8, 'Författare'),
('9789113025162', 40, 'Författare'),
('9789113115634', 40, 'Författare'),
('9789113115634', 10, 'Co-författare'),
('9780307350152', 26, 'Författare'),
('9780060883287', 27, 'Författare'),
('9781609455064', 28, 'Författare'),
('9788202419417', 29, 'Författare'),
('9782081258495', 30, 'Författare'),
('9788203363191', 35, 'Författare'),
('9788866213291', 28, 'Författare'),
('9788437604947', 27, 'Författare'),
('9789113074092', 26, 'Originalförfattare'),
('9789100183405', 27, 'Originalförfattare'),
('9789174617283', 28, 'Originalförfattare'),
('9789127071667', 30, 'Originalförfattare'),
('9789177016632', 32, 'Originalförfattare'),
('9789170016011', 29, 'Originalförfattare'),
('9789170160417', 35, 'Originalförfattare'),
('9789113074092', 7, 'Översättare'),
('9789100183405', 4, 'Översättare'),
('9789174617283', 16, 'Översättare'),
('9789127071667', 14, 'Översättare'),
('9789177016632', 20, 'Översättare'),
('9789170016011', 36, 'Översättare'),
('9789170160417', 9, 'Översättare');

-- Insert data into Butiker (Stores)
INSERT INTO Butiker (Butiksnamn, Stad, Adress, Postnummer) VALUES
('Akademibokhandeln City', 'Stockholm', 'Mäster Samuelsgatan 28', '11157'),
('Bokia Gallerian', 'Göteborg', 'Östra Hamngatan 30-34', '41109'),
('Bokus Malmö', 'Malmö', 'Södergatan 22', '21134'),
('Bokhandeln Umeå', 'Umeå', 'Kungsgatan 48', '90326'),
('Läslusten', 'Uppsala', 'Drottninggatan 6', '75310'),
('Bokens Värld', 'Linköping', 'Drottninggatan 23', '58221'),
('Bokälskaren', 'Helsingborg', 'Stortorget 8', '25224'),
('Bokcentrum', 'Jönköping', 'Västra Storgatan 12', '55321'),
('Bokpalatset', 'Luleå', 'Storgatan 45', '97233'),
('Läsglädjen', 'Örebro', 'Drottninggatan 15', '70221');

-- Insert data into Kunder (Customers)
INSERT INTO Kunder ([Förnamn], Efternamn, LeveransAdress, Postnummer, Stad) VALUES
('Erik', 'Svensson', 'Storgatan 12', '11434', 'Stockholm'),
('Anna', 'Lindberg', 'Kungsgatan 45', '41108', 'Göteborg'),
('Johan', 'Bergström', 'Drottninggatan 33', '21119', 'Malmö'),
('Maria', 'Andersson', 'Vasagatan 8', '90321', 'Umeå'),
('Karl', 'Nilsson', 'Sveavägen 22', '75323', 'Uppsala'),
('Lisa', 'Eriksson', 'Björkvägen 8', '58234', 'Linköping'),
('Anders', 'Pettersson', 'Storgatan 45', '25233', 'Helsingborg'),
('Sofia', 'Larsson', 'Klostergatan 12', '55327', 'Jönköping'),
('Gustav', 'Jakobsson', 'Åkergatan 33', '97221', 'Luleå'),
('Emma', 'Gustafsson', 'Stortorget 5', '70212', 'Örebro'),
('Niklas', 'Dahl', 'Kungsgatan 67', '11432', 'Stockholm'),
('Sara', 'Forsberg', 'Kyrkogatan 22', '41122', 'Göteborg'),
('Mattias', 'Lundgren', 'Södra vägen 18', '21446', 'Malmö'),
('Johanna', 'Sjögren', 'Järnvägsgatan 8', '90344', 'Umeå'),
('Andreas', 'Hansson', 'Svartbäcksgatan 15', '75313', 'Uppsala');

-- Insert data into Lagersaldo (Inventory)
INSERT INTO Lagersaldo (ButikID, ISBN, Antal) VALUES
(1, '9789129657401', 15),
(1, '9789129688306', 10),
(1, '9781408855652', 20),
(1, '9789113084893', 8),
(1, '9789113045108', 12),
(1, '9789100175115', 8),
(1, '9789175036434', 5),
(1, '9789176795941', 9),
(1, '9789146236053', 11),
(1, '9780307350152', 7),
(1, '9780060883287', 5),
(2, '9789129657401', 12),
(2, '9781408855652', 18),
(2, '9781408855669', 14),
(2, '9789176631355', 10),
(2, '9789113056234', 7),
(2, '9789143504392', 6),
(2, '9789185849482', 8),
(2, '9789113111438', 15),
(2, '9781609455064', 8),
(2, '9788202419417', 4),
(3, '9789113084893', 6),
(3, '9789113084909', 9),
(3, '9789174293487', 4),
(3, '9789146235460', 9),
(3, '9789100183856', 3),
(3, '9789129672190', 5),
(3, '9789146235477', 7),
(3, '9789127173194', 5),
(3, '9782081258495', 3),
(3, '9788203363191', 7),
(4, '9789129657401', 7),
(4, '9789129688306', 5),
(4, '9789174293760', 8),
(4, '9789100183863', 4),
(4, '9789113071435', 7),
(4, '9789113084916', 6),
(4, '9789127173392', 6),
(4, '9789113084947', 9),
(4, '9788866213291', 2),
(4, '9788437604947', 3),
(5, '9781408855652', 15),
(5, '9781408855669', 10),
(5, '9789174293760', 6),
(5, '9781408855676', 12),
(5, '9781408855683', 9),
(5, '9789113074092', 10),
(5, '9789100183405', 8),
(5, '9789175037363', 12),
(5, '9789127160972', 4),
(5, '9789129657401', 8),
(6, '9789129688306', 6),
(6, '9789146237234', 8),
(6, '9789113084930', 10),
(6, '9789174617283', 12),
(6, '9789127071667', 6),
(6, '9781408855652', 11),
(6, '9781408855669', 8),
(6, '9789177016632', 9),
(6, '9789170016011', 7),
(6, '9789176799994', 7),
(7, '9789175039046', 5),
(7, '9789113084893', 5),
(7, '9789113084909', 7),
(7, '9789170160417', 11),
(7, '9789189061583', 14),
(7, '9789100182144', 14),
(7, '9789176795941', 6),
(7, '9789174293487', 3),
(7, '9789174293760', 5),
(7, '9789113113746', 9),
(8, '9789177592433', 6),
(8, '9789146236053', 9),
(8, '9789113111438', 11),
(8, '9789113045108', 10),
(8, '9789100175115', 6),
(8, '9789100185718', 8),
(8, '9789113025162', 5),
(8, '9789127173392', 7),
(8, '9789175037363', 9),
(8, '9789113115634', 4),
(9, '9789129657401', 6),
(9, '9789129688306', 4),
(9, '9781408855652', 12),
(9, '9789113084893', 7),
(9, '9789113045108', 8),
(9, '9789100175115', 5),
(9, '9789175036434', 3),
(9, '9789176795941', 5),
(9, '9789146236053', 6),
(9, '9780307350152', 4),
(10, '9780060883287', 3),
(10, '9789129657401', 8),
(10, '9781408855652', 14),
(10, '9781408855669', 10),
(10, '9789176631355', 6),
(10, '9789113056234', 4),
(10, '9789143504392', 3),
(10, '9789185849482', 5),
(10, '9789113111438', 9),
(10, '9781609455064', 5);

-- Insert data into Ordrar (Orders)
INSERT INTO Ordrar (KundID, Datum) VALUES
(1, '2024-01-05'),
(2, '2024-01-07'),
(3, '2024-01-12'),
(4, '2024-01-15'),
(5, '2024-01-18'),
(6, '2024-01-22'),
(7, '2024-01-25'),
(8, '2024-01-28'),
(9, '2024-01-31'),
(10, '2024-02-03'),
(11, '2024-02-05'),
(12, '2024-02-09'),
(13, '2024-02-12'),
(14, '2024-02-15'),
(15, '2024-02-18'),
(1, '2024-02-22'),
(2, '2024-02-27'),
(3, '2024-03-02'),
(4, '2024-03-05'),
(5, '2024-03-08'),
(6, '2024-03-12'),
(7, '2024-03-15'),
(8, '2024-03-19'),
(9, '2024-03-23'),
(10, '2024-03-27'),
(11, '2024-03-31'),
(12, '2024-04-04'),
(13, '2024-04-08'),
(14, '2024-04-12'),
(15, '2024-04-16'),
(1, '2024-04-20'),
(2, '2024-04-24'),
(3, '2024-04-28'),
(4, '2024-05-03'),
(5, '2024-05-06'),
(6, '2024-05-10'),
(7, '2024-05-14'),
(8, '2024-05-18'),
(9, '2024-05-22'),
(10, '2024-05-26'),
(11, '2024-05-30'),
(12, '2024-06-03'),
(13, '2024-06-07'),
(14, '2024-06-11'),
(15, '2024-06-15'),
(1, '2024-06-19'),
(2, '2024-06-23'),
(3, '2024-06-27'),
(4, '2024-07-02'),
(5, '2024-07-06'),
(6, '2024-07-10'),
(7, '2024-07-14'),
(8, '2024-07-18'),
(9, '2024-07-22'),
(10, '2024-07-26'),
(11, '2024-07-30'),
(12, '2024-08-04'),
(13, '2024-08-08'),
(14, '2024-08-12'),
(15, '2024-08-16'),
(1, '2024-08-20'),
(2, '2024-08-24'),
(3, '2024-08-28'),
(4, '2024-09-01'),
(5, '2024-09-05'),
(6, '2024-09-09'),
(7, '2024-09-13'),
(8, '2024-09-17'),
(9, '2024-09-21'),
(10, '2024-09-25'),
(11, '2024-09-29'),
(12, '2025-01-15'),
(13, '2025-01-18'),
(14, '2025-01-20'),
(15, '2025-01-22'),
(1, '2025-01-25'),
(2, '2025-02-01'),
(3, '2025-02-05'),
(4, '2025-02-10'),
(5, '2025-02-12'),
(6, '2025-02-15'),
(7, '2025-02-18'),
(8, '2025-02-20'),
(9, '2025-02-22'),
(10, '2025-02-25'),
(11, '2025-02-28'),
(12, '2025-03-02'),
(13, '2025-03-05'),
(14, '2025-03-07'),
(15, '2025-03-10'),
(1, '2025-03-12'),
(2, '2025-03-15'),
(3, '2025-03-18'),
(4, '2025-03-20'),
(5, '2025-03-22'),
(6, '2025-03-25'),
(7, '2025-03-28'),
(8, '2025-04-01'),
(9, '2025-04-05'),
(10, '2025-04-08'),
(11, '2025-04-10');

-- Insert data into OrderDetaljer (Order Details)
INSERT INTO OrderDetaljer (OrderID, ISBN, Antal, ButikID) VALUES
(1, '9780307350152', 1, 1),
(2, '9789113074092', 1, 5),
(3, '9780060883287', 1, 1),
(4, '9781609455064', 2, 2),
(5, '9788202419417', 1, 2),
(6, '9782081258495', 1, 3),
(7, '9788203363191', 2, 3),
(8, '9788866213291', 1, 4),
(9, '9788437604947', 1, 4),
(10, '9789100183405', 1, 5),
(11, '9789174617283', 1, 6),
(12, '9789127071667', 1, 6),
(13, '9789177016632', 1, 7),
(14, '9789170016011', 1, 7),
(15, '9789170160417', 1, 8),
(16, '9789189061583', 1, 8),
(17, '9789113113746', 1, 9),
(18, '9789177592433', 1, 9),
(19, '9789100185718', 1, 10),
(20, '9789113025162', 1, 10),
(21, '9789113115634', 1, 10),
(22, '9780307350152', 1, 1),
(23, '9780060883287', 2, 1),
(24, '9781609455064', 1, 2),
(25, '9788202419417', 1, 2),
(26, '9782081258495', 1, 3),
(27, '9788203363191', 1, 3),
(28, '9788866213291', 1, 4),
(29, '9788437604947', 1, 4),
(30, '9789113074092', 1, 5),
(31, '9789100183405', 2, 5),
(32, '9789174617283', 1, 6),
(33, '9789127071667', 1, 6),
(34, '9789177016632', 1, 7),
(35, '9789170016011', 1, 7),
(36, '9789170160417', 3, 8),
(37, '9789189061583', 2, 8),
(38, '9789113113746', 4, 9),
(39, '9789177592433', 3, 9),
(40, '9789100185718', 2, 10),
(41, '9789113025162', 2, 10),
(42, '9780307350152', 1, 1),
(43, '9789113074092', 1, 5),
(44, '9788437604947', 1, 4),
(45, '9789100183405', 1, 5),
(46, '9789176795941', 1, 1),
(47, '9789100183405', 1, 5),
(48, '9789113045108', 1, 1),
(49, '9789170160417', 1, 8),
(50, '9781408855652', 1, 1),
(51, '9789170016011', 1, 7),
(52, '9789129657401', 2, 1),
(53, '9789189061583', 1, 8),
(54, '9782081258495', 1, 3),
(55, '9788202419417', 1, 2),
(56, '9788866213291', 1, 4),
(57, '9789113074092', 1, 5),
(58, '9789100183405', 1, 5),
(59, '9789174617283', 1, 6),
(60, '9789127071667', 1, 6),
(61, '9789177016632', 1, 7),
(62, '9789170016011', 1, 7),
(63, '9789170160417', 1, 8),
(64, '9789189061583', 1, 8),
(65, '9789113113746', 1, 9),
(66, '9789177592433', 1, 9),
(67, '9789100185718', 1, 10),
(68, '9789113025162', 1, 10),
(69, '9789113115634', 1, 10),
(70, '9789176795941', 1, 1),
(71, '9789146236053', 1, 1),
(72, '9789185849482', 1, 2),
(73, '9789113111438', 1, 2),
(74, '9789146235477', 1, 3),
(75, '9789127173194', 1, 3),
(76, '9789127173392', 1, 4),
(77, '9789113084947', 1, 4),
(78, '9789175037363', 1, 5),
(79, '9789127160972', 1, 5),
(80, '9789129657401', 1, 1),
(81, '9781408855652', 1, 1),
(82, '9781408855669', 2, 2),
(83, '9789113084893', 1, 3),
(84, '9789113084909', 1, 3),
(85, '9789129688306', 1, 4),
(86, '9789174293760', 1, 4),
(87, '9781408855652', 1, 5),
(88, '9789113084893', 1, 1),
(89, '9789174293487', 1, 3),
(90, '9789113045108', 1, 1),
(91, '9789129657401', 1, 6),
(92, '9789100175115', 1, 2),
(93, '9789129688306', 1, 6),
(94, '9789175036434', 1, 3),
(95, '9781408855652', 1, 7),
(96, '9789176631355', 2, 4),
(97, '9781408855669', 1, 7);

-- Insert data into Kategorier (Categories)
INSERT INTO Kategorier (Kategorinamn) VALUES
('Skönlitteratur'),
('Deckare'),
('Barnböcker'),
('Fantasy'),
('Romantik'),
('Thriller'),
('Biografi'),
('Historia'),
('Science Fiction'),
('Klassiker'),
('Drama'),
('Översatt litteratur'),
('Självbiografi'),
('Kriminal');

-- Insert data into BokKategorier (Book-Category relationships)
INSERT INTO BokKategorier (ISBN, KategoriID) VALUES
-- Pippi Långstrump - Barnböcker, Klassiker
('9789129657401', 3),
('9789129657401', 10),
-- Emil i Lönneberga - Barnböcker
('9789129688306', 3),
-- Harry Potter böcker - Fantasy, Barnböcker
('9781408855652', 4),
('9781408855652', 3),
('9781408855669', 4),
('9781408855669', 3),
('9781408855676', 4),
('9781408855676', 3),
('9781408855683', 4),
('9781408855683', 3),
-- Millennium-serien - Deckare, Thriller
('9789113084893', 2),
('9789113084893', 6),
('9789113084909', 2),
('9789113084909', 6),
('9789113084916', 2),
('9789113084916', 6),
-- Strindberg - Klassiker, Drama
('9789174293487', 10),
('9789174293487', 11),
('9789185849482', 10),
('9789185849482', 11),
-- Selma Lagerlöf - Klassiker, Barnböcker
('9789174293760', 10),
('9789174293760', 3),
-- Hundraåringen - Skönlitteratur
('9789113045108', 1),
-- Fredrik Backman - Skönlitteratur
('9789100175115', 1),
('9789100182144', 1),
-- Camilla Läckberg - Deckare
('9789175036434', 2),
-- Henning Mankell - Deckare, Kriminal
('9789176631355', 2),
('9789176631355', 14),
('9789113056234', 2),
('9789113056234', 14),
-- Mari Jungstedt - Deckare
('9789143504392', 2),
-- Lars Kepler - Thriller, Deckare
('9789146235460', 6),
('9789146235460', 2),
-- Karin Boye - Klassiker, Science Fiction
('9789100183856', 10),
('9789100183856', 9),
-- Tove Jansson - Barnböcker, Fantasy
('9789129672190', 3),
('9789129672190', 4),
-- Hjalmar Söderberg - Klassiker
('9789100183863', 10),
-- John Ajvide Lindqvist - Thriller
('9789113071435', 6),
-- Niklas Natt och Dag - Deckare, Historia
('9789176795941', 2),
('9789176795941', 8),
('9789176799994', 2),
('9789176799994', 8),
-- Jan Guillou - Thriller, Historia
('9789146236053', 6),
('9789146236053', 8),
('9789127160972', 6),
('9789127160972', 8),
-- David Lagercrantz - Deckare, Thriller
('9789113111438', 2),
('9789113111438', 6),
('9789113084947', 2),
('9789113084947', 6),
('9789113084930', 2),
('9789113084930', 6),
-- Liza Marklund - Deckare, Thriller
('9789146235477', 2),
('9789146235477', 6),
('9789146237234', 2),
('9789146237234', 6),
-- Jonas Gardell - Skönlitteratur
('9789127173392', 1),
-- Viveca Sten - Deckare
('9789175037363', 2),
('9789175039046', 2),
-- Jens Lapidus - Kriminal, Thriller
('9789113113746', 14),
('9789113113746', 6),
-- Internationella böcker - Översatt litteratur
('9780307350152', 12),
('9780307350152', 1),
('9780060883287', 12),
('9780060883287', 10),
('9781609455064', 12),
('9781609455064', 1),
('9788202419417', 12),
('9788202419417', 13),
('9782081258495', 12),
('9782081258495', 1),
('9788203363191', 12),
('9788203363191', 2),
-- Svenska översättningar
('9789113074092', 12),
('9789113074092', 1),
('9789100183405', 12),
('9789100183405', 10),
('9789174617283', 12),
('9789174617283', 1),
('9789127071667', 12),
('9789127071667', 10),
('9789177016632', 12),
('9789177016632', 9),
('9789170016011', 12),
('9789170016011', 13),
('9789170160417', 12),
('9789170160417', 2),
-- Nya böcker
('9789189061583', 2),
('9789177592433', 1),
('9789100185718', 2),
('9789113025162', 1),
('9789113115634', 2),
('9789113115634', 6);