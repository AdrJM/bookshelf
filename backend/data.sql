-- BookShelf sample data
-- Disable FK checks for easier insertion
SET FOREIGN_KEY_CHECKS=0;

-- Authors
INSERT INTO `authors` (`authors_id`, `image_maker`, `cover_developer`, `illustrator`, `writers`) VALUES
(1, 'Adrian Jasek', 'Adrian Jasek', 'Adrian Jasek', 'Adrian Jasek (Psycho_AM)'),
(2, 'Anna Bednarek', 'KryWaj', NULL, 'Anna Bednarek, Danuta Borkowska, Ewa Brudek, Artur Chabrowski, Katarzyna Dominik, Kazimiera Duraj, Barbara Gradek, Tadeusz Grela, Adam Gabriel Grzelązka, Tadeusz Hutyra, Adrian Jasek, Małgorzata Kulisiewicz, Mirosław Kurowski, Agnieszka Kuśmierczuk, Renata Lisik'),
(3, 'Beata Mietła', 'KryWaj', 'Beata Mietła', 'Radosław Marcin Bartz, Anna Bednarek, Ewa Brudek, Eryk Chmurka, Katarzyna Dominik, Tomasz Kłuczyński, Agnieszka Kuśmierczuk, Anna Liana, Marcel Macibuch, Beata Mietła, Iwona Miżyńska van Eck, Marta Nadworna, Łukasz Nowakowski, Jacek Pelian, Ewelina Podolska, Mateusz Poterański, Jarosław Konrad Powojski, Psycho_AM');

-- Details
INSERT INTO `details` (`details_id`, `page_count`, `category`, `about_book`) VALUES
(1, 60, 'Poezja', 'Wiersze i rysunki autorstwa Psycho_AM, w których opowiadane historie, opisują uczucia, często niezauważane przez innych.'),
(2, 180, 'Antologia', 'Pamiętnik Poetycki – wiersze autorskie z serca płynące. Druga antologia wydawnictwa KryWaj.'),
(3, 160, 'Antologia', 'Antologia poezji w słowach i obrazach. Wiersze i ilustracje wielu autorów wydane przez KryWaj.');

-- Publication
INSERT INTO `publication` (`publication_id`, `publisher`, `language`, `release_date`) VALUES
(1, 'Rideró', 'Polski', '2022-01-01'),
(2, 'KryWaj', 'Polski', '2022-01-01'),
(3, 'KryWaj', 'Polski', '2023-01-01');

-- Images URL
INSERT INTO `images_url` (`image_url_id`, `front_url`, `back_url`, `side_url`, `color`) VALUES
(1, 'assets/images/covers/front/front-okiem-mlodego-poety.png', 'assets/images/covers/back/back-okiem-mlodego-poety.png', NULL, '#0a0a2e'),
(2, 'assets/images/covers/front/front-natchnieniem-napisane.jpg', 'assets/images/covers/back/back-natchnieniem-napisane.jpg', 'assets/images/covers/side/side-natchnieniem-napisane.jpg', '#d4c5b0'),
(3, 'assets/images/covers/front/front-poezja-w-slowach-i-obrazach.jpg', 'assets/images/covers/back/back-poezja-w-slowach-i-obrazach.jpg', 'assets/images/covers/side/side-poezja-w-slowach-i-obrazach.jpg', '#6b4a8c');

-- Books
INSERT INTO `books` (`title`, `is_still_available`, `authors_id`, `details_id`, `publication_id`, `image_url_id`) VALUES
('Okiem Młodego Poety', b'1', 1, 1, 1, 1),
('Natchnieniem Napisane – Antologia 2', b'1', 2, 2, 2, 2),
('Poezja w Słowach i Obrazach', b'1', 3, 3, 3, 3);

-- Intro words
INSERT INTO `intro_words` (`intro_words_id`, `intro_words`, `author_of_words`, `book_id`) VALUES
(1, 'Wiersze i rysunki autorstwa Psycho_AM, w których opowiadane historie, opisują uczucia, często niezauważane przez innych.', 'Adrian Jasek', 1),
(2, 'Kochani, mam okazję po raz drugi zaprosić Was do świata poezji. Odkryć piękno widziane nie tylko okiem, ale sercem i duszą. Kreowane piórem wiedzionym ręką niebiańskiej weny.', 'Anna Bednarek', 2),
(3, 'Poezja jest melodią duszy niesiona wiatrem barwną tęczą niebem słońcem kwiatem pachnącym jest oddechem chlebem powszednim miłością gorącą kto jej nie poznał ten wiele traci.', 'Anna Bednarek', 3);

SET FOREIGN_KEY_CHECKS=1;
