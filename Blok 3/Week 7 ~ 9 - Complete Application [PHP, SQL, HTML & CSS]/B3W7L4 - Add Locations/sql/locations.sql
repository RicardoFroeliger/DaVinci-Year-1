
ALTER TABLE `characters` ADD `location` INT NULL DEFAULT 1;

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `locations`
--

INSERT INTO `locations` (`id`, `name`) VALUES
(1, 'Toy Chest'),
(2, 'Prison'),
(3, 'Swamp'),
(4, 'Hyrule'),
(5, 'Mushroom Kingdom'),
(6, 'New York'),
(7, 'Sunnydale');

UPDATE `characters` SET location = 1 WHERE id = 4;
UPDATE `characters` SET location = 2 WHERE id = 1;
UPDATE `characters` SET location = 3 WHERE id = 6;
UPDATE `characters` SET location = 4 WHERE id = 8;
UPDATE `characters` SET location = 5 WHERE id = 5 OR id = 10;
UPDATE `characters` SET location = 6 WHERE id = 2 OR id = 3 OR id = 9;
UPDATE `characters` SET location = 7 WHERE id = 7;

ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;