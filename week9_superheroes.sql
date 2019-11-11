-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Pon 04. bře 2019, 08:31
-- Verze serveru: 10.1.30-MariaDB
-- Verze PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `week9_v2`
--

--
-- Vypisuji data pro tabulku `images`
--

INSERT INTO `images` (`id`, `path`, `description`, `created_at`, `updated_at`) VALUES
(1, 'media/avengers-assembled.jpg', 'Avengers being assembled', NULL, NULL),
(2, 'media/black-widow-standing.jpg', 'Black Widow looking stern', NULL, NULL),
(3, 'media/captain-america-jumping.jpg', 'Captain America from the waist down.', NULL, NULL),
(4, 'media/not-looking-at-the-blast.jpg', 'Superheroes never look at the blast.', NULL, NULL),
(5, 'media/thor-looking.jpg', 'Thor sees something.', NULL, NULL);

--
-- Vypisuji data pro tabulku `superheroes`
--

INSERT INTO `superheroes` (`id`, `slug`, `name`, `story`, `fights_from`, `fights_until`, `created_at`, `updated_at`) VALUES
(1, 'ironman', 'Iron Man', 'Anthony Edward "Tony" Stark was a billionaire industrialist, a founding member of the Avengers, and the former CEO of Stark Industries, a company originally started by his father, Howard Stark. A brash but brilliant inventor, Stark was self-described as a genius, billionaire, playboy and philanthropist. With his great wealth and exceptional technical knowledge, Stark was one of the world\'s most powerful men, and enjoyed the playboy lifestyle for many years until he was kidnapped by the Ten Rings.', '20:00:00', '06:00:00', '2018-03-05 07:23:36', '2018-03-05 07:23:36'),
(2, 'captainamerica', 'Captain America', 'Captain Steven Grant "Steve" Rogers is a World War II veteran, a founding member of the Avengers, and Earth\'s first known superhero. Rogers had suffered from numerous health problems, and upon America\'s entry into World War II, was rejected from military service despite several attempts to enlist. Rogers was the only recipient of the Super Soldier Serum developed by Abraham Erskine under the Strategic Scientific Reserve. ', '10:00:00', '16:00:00', '2018-03-05 07:23:36', '2018-03-05 07:23:36'),
(3, 'hulk', 'Hulk', 'Robert Bruce Banner, M.D., Ph.D., is a renowned scientist and a founding member of the Avengers. As someone who was highly respected for his work regarding biochemistry, nuclear physics, and gamma radiation, he was commissioned by Thaddeus Ross to recreate the Super Soldier Serum which created Captain America, although Ross elected not to inform Banner what he was creating.', '09:00:00', '17:00:00', '2018-03-05 07:23:36', '2018-03-05 07:23:36'),
(4, 'blackwidow', 'Black Widow', 'Natalia Alianovna "Natasha" Romanoff, also known as Black Widow, was one of the most talented spies and assassins in the entire world and a founding member of the Avengers. Originally an agent of the Soviet agency for foreign intelligence, the KGB, she later became a member of S.H.I.E.L.D., the international counter-intelligence agency.', '17:00:00', '23:00:00', '2018-03-05 07:23:36', '2018-03-05 07:23:36'),
(5, 'thor', 'Thor', 'Thor Odinson is the Asgardian God of Thunder, the former king of Asgard and New Asgard, and a founding member of the Avengers. When his irresponsible and impetuous behavior reignited a conflict between Asgard and Jotunheim, Thor was denied the right to become king, stripped of his power, and banished to Earth by Odin. While exiled on Earth, Thor learned humility, finding love with Jane Foster, and helped save his new friends from the Destroyer sent by Loki.', '03:00:00', '23:59:00', '2018-03-05 07:23:36', '2018-03-05 07:23:36');

--
-- Vypisuji data pro tabulku `superhero_image`
--

INSERT INTO `superhero_image` (`superhero_id`, `image_id`) VALUES
(1, 1),
(1, 4),
(2, 1),
(2, 3),
(3, 1),
(4, 1),
(4, 2),
(5, 1),
(5, 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
