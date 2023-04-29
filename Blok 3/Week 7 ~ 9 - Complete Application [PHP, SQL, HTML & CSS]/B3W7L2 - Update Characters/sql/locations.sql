
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

ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;