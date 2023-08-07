/* SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
 START TRANSACTION;
 SET time_zone = "+00:00"; */

CREATE TABLE
    `movies` (
        `tconst` varchar(9) NOT NULL,
        `titleType` varchar(9) DEFAULT NULL,
        `primaryTitle` varchar(57) DEFAULT NULL,
        `runtimeMinutes` varchar(14) DEFAULT NULL,
        `genres` varchar(11) DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8;

--

-- Dumping data for table `movies`

--

INSERT INTO
    `movies` (
        `tconst`,
        `titleType`,
        `primaryTitle`,
        `runtimeMinutes`,
        `genres`
    )
VALUES (
        'tt0000001',
        'short',
        'Carmencita',
        '1',
        'Documentary'
    ), (
        'tt0000002',
        'movie',
        'Le clown et ses chiens',
        '5',
        'Animation'
    ), (
        'tt0000003',
        'short',
        'Pauvre Pierrot',
        '4',
        'Animation'
    ), (
        'tt0000004',
        'short',
        'Un bon bock',
        '12',
        'Animation'
    ), (
        'tt0000005',
        'movie',
        'Blacksmith Scene',
        '1',
        'Comedy'
    ), (
        'tt0000006',
        'short',
        'Chinese Opium Den',
        '1',
        'Short'
    ), (
        'tt0000007',
        'short',
        'Corbett and Courtney Before the Kinetograph',
        '1',
        'Sport'
    ), (
        'tt0000008',
        'movie',
        'Edison Kinetoscopic Record of a Sneeze',
        '1',
        'Documentary'
    ), (
        'tt0000009',
        'movie',
        'Miss Jerry',
        '45',
        'Romance'
    ), (
        'tt0000010',
        'short',
        'Leaving the Factory',
        '1',
        'Action'
    ), (
        'tt0000011',
        'movie',
        'Akrobatisches Potpourri',
        '1',
        'Documentary'
    ), (
        'tt0000012',
        'movie',
        'The Arrival of a Train',
        '1',
        'Action'
    ), (
        'tt0000013',
        'movie',
        'The Photographical Congress Arrives in Lyon',
        '1',
        'Documentary'
    ), (
        'tt0000014',
        'short',
        'The Waterer Watered',
        '1',
        'Comedy'
    ), (
        'tt0000015',
        'movie',
        'Autour dune cabine',
        '2',
        'Animation'
    ), (
        'tt0000016',
        'short',
        'Boat Leaving the Port',
        '1',
        'Action'
    ), (
        'tt0000017',
        'movie',
        'Italienischer Bauerntanz',
        '1',
        'Action'
    ), (
        'tt0000018',
        'short',
        'Das boxende Känguruh',
        '1',
        'Short'
    ), (
        'tt0000019',
        'short',
        'The Clown Barber',
        '12',
        'Comedy'
    ), (
        'tt0000020',
        'short',
        'The Derby 1895',
        '1',
        'Documentary'
    ), (
        'tt0000022',
        'short',
        'Blacksmith Scene',
        '1',
        'Documentary'
    ), (
        'tt0000023',
        'movie',
        'The Sea',
        '1',
        'Documentary'
    ), (
        'tt0000024',
        'short',
        'Opening of the Kiel Canal',
        '34',
        'News'
    ), (
        'tt0000025',
        'short',
        'The Oxford and Cambridge University Boat Race',
        '415',
        'News'
    ), (
        'tt0000026',
        'short',
        'The Messers. Lumière at Cards',
        '1',
        'Documentary'
    ), (
        'tt0000027',
        'short',
        'Cordeliers Square in Lyon',
        '1',
        'Action'
    ), (
        'tt0000028',
        'short',
        'Fishing for Goldfish',
        '1',
        'Action'
    ), (
        'tt0000029',
        'movie',
        'Babys Meal',
        '1',
        'Documentary'
    ), (
        'tt0000030',
        'short',
        'Rough Sea at Dover',
        '1',
        'Documentary'
    ), (
        'tt0000031',
        'short',
        'Jumping the Blanket',
        '1',
        'Documentary'
    ), (
        'tt0000032',
        'movie',
        'Die Serpentintänzerin',
        '1',
        'Short'
    ), (
        'tt0000033',
        'short',
        'Horse Trick Riders',
        '1',
        'Documentary'
    ), (
        'tt0000034',
        'short',
        'Arrivée dun train gare de Vincennes',
        '1',
        'Documentary'
    ), (
        'tt0000035',
        'short',
        'Watering the Flowers',
        '1',
        'Comedy'
    ), (
        'tt0000036',
        'movie',
        'Awakening of Rip',
        '0',
        'Drama'
    ), (
        'tt0000037',
        'short',
        'Sea Bathing',
        '1',
        'Short'
    ), (
        'tt0000038',
        'movie',
        'The Ball Game',
        '66',
        'Documentary'
    ), (
        'tt0000039',
        'movie',
        'Barnet Horse Fair',
        '415',
        'Short'
    ), (
        'tt0000040',
        'short',
        'Barque sortant du port de Trouville',
        '78',
        'Documentary'
    ), (
        'tt0000041',
        'movie',
        'Bataille de neige',
        '66',
        'Comedy'
    ), (
        'tt0000042',
        'short',
        'Bateau-mouche sur la Seine',
        '102',
        'Documentary'
    ), (
        'tt0000043',
        'short',
        'Batteuse à vapeur',
        '85',
        'Documentary'
    ), (
        'tt0000044',
        'short',
        'Le bivouac',
        '1',
        'Short'
    ), (
        'tt0000045',
        'movie',
        'Les blanchisseuses',
        '458',
        'Short'
    ), (
        'tt0000046',
        'short',
        'Bois de Boulogne',
        '120',
        'Comedy'
    ), (
        'tt0000047',
        'movie',
        'Boulevard des Italiens',
        '444',
        'Documentary'
    ), (
        'tt0000048',
        'short',
        'The Boxing Kangaroo',
        '555',
        'Short'
    ), (
        'tt0000049',
        'movie',
        'Glove Contest',
        '695',
        'Short'
    ), (
        'tt0000050',
        'short',
        'Bébé et fillettes',
        '120',
        'Comedy'
    ), (
        'tt0000051',
        'movie',
        'The Bohemian Encampment',
        '654',
        'Documentary'
    ), (
        'tt0000052',
        'short',
        'Carga de rurales',
        '222',
        'Comedy'
    ), (
        'tt0000053',
        'movie',
        'A Chegada do Comboio Inaugural à Estação Central do Porto',
        '42',
        'Documentary'
    ), (
        'tt0000054',
        'movie',
        'A Merry-Go-Round',
        '65',
        'Short'
    ), (
        'tt0000055',
        'movie',
        'Le chiffonnier',
        '325',
        'Short'
    ), (
        'tt0000056',
        'short',
        'Uma Corrida de Touros no Campo Pequeno',
        '415',
        'Short'
    ), (
        'tt0000057',
        'movie',
        'Cortège de tzar allant à Versailles',
        '9621',
        'Comedy'
    ), (
        'tt0000058',
        'short',
        'Cortège de tzar au Bois de Boulogne',
        '4745',
        'Comedy'
    ), (
        'tt0000059',
        'movie',
        'Coronation of a Village Maiden',
        '456',
        'Short'
    ), (
        'tt0000060',
        'movie',
        'Dancing Darkies',
        '78',
        'Horror'
    ), (
        'tt0000061',
        'movie',
        'Dancing Girls',
        '445',
        'Short'
    ), (
        'tt0000062',
        'movie',
        'Danse serpentine',
        '23',
        'Short'
    ), (
        'tt0000063',
        'short',
        'Dessinateur express',
        '456',
        'Short'
    ), (
        'tt0000064',
        'short',
        'Dessinateur: Chamberlain',
        '455',
        'Horror'
    ), (
        'tt0000065',
        'short',
        'Dessinateur: Reine Victoria',
        '23',
        'Short'
    ), (
        'tt0000066',
        'movie',
        'Dessinateur: Von Bismark',
        '12',
        'Short'
    ), (
        'tt0000067',
        'movie',
        'Conjurer Making Ten Hats in Sixty Seconds',
        '12',
        'Fantasy'
    ), (
        'tt0000068',
        'movie',
        'Unloading the Boat',
        '45',
        'Horror'
    ), (
        'tt0000069',
        'short',
        'Post No Bills',
        '1',
        'Short'
    ), (
        'tt0000070',
        'movie',
        'Demolition of a Wall',
        '1',
        'Documentary'
    ), (
        'tt0000071',
        'short',
        'Automobiles Starting a Race',
        '52',
        'Sport'
    ), (
        'tt0000072',
        'movie',
        'Officers of French Army Leaving Service',
        '41',
        'Short'
    ), (
        'tt0000073',
        'movie',
        'Effets de mer sur les rochers',
        '85',
        'Documentary'
    ), (
        'tt0000074',
        'short',
        'Enfants jouant sur la plage',
        '475',
        'Horror'
    ), (
        'tt0000075',
        'movie',
        'The Conjuring of a Woman at the House of Robert Houdin',
        '122',
        'Horror'
    ), (
        'tt0000076',
        'short',
        'Exit of Rip and the Dwarf',
        '1',
        'Drama'
    ), (
        'tt0000077',
        'movie',
        'indien',
        '457',
        'Short'
    ), (
        'tt0000078',
        'short',
        'Feira de Gado na Corujeira',
        '1',
        'Documentary'
    ), (
        'tt0000079',
        'movie',
        'La gare Saint-Lazare',
        '123',
        'Documentary'
    ), (
        'tt0000080',
        'short',
        'Grandes manoeuvres',
        '65',
        'Family'
    ), (
        'tt0000081',
        'movie',
        'Towing a Boat on the River',
        '100',
        'Family'
    ), (
        'tt0000082',
        'short',
        'A Hard Wash',
        '45',
        'Comedy'
    ), (
        'tt0000083',
        'short',
        'Les indiscrets',
        '121',
        'Short'
    ), (
        'tt0000084',
        'short',
        'Les ivrognes',
        '3',
        'Short'
    ), (
        'tt0000085',
        'movie',
        'Gardener Burning Weeds',
        '125',
        'Short'
    ), (
        'tt0000086',
        'movie',
        'Family',
        '100',
        'Family'
    ), (
        'tt0000087',
        'short',
        'Life ',
        '475',
        'Documentary'
    ), (
        'tt0000088',
        'short',
        'Market Day',
        '111',
        'Family'
    ), (
        'tt0000089',
        'movie',
        'Leaving Jerusalem by Railway',
        '1',
        'Documentary'
    ), (
        'tt0000090',
        'short',
        'Libération des territoriaux',
        '859',
        'Documentary'
    ), (
        'tt0000091',
        'short',
        'The House of the Devil',
        '3',
        'Horror'
    ), (
        'tt0000092',
        'short',
        'Marée montante sur Brise-Larmes',
        '652',
        'Documentary'
    ), (
        'tt0000093',
        'movie',
        'Melbourne',
        '653',
        'Documentary'
    ), (
        'tt0000094',
        'short',
        'Miss de Vere',
        '22',
        'Short'
    ), (
        'tt0000095',
        'movie',
        'The Mysterious Paper',
        '88',
        'Short'
    ), (
        'tt0000096',
        'short',
        'Place Saint-Augustin',
        '487',
        'Documentary'
    ), (
        'tt0000097',
        'movie',
        'Picasso',
        '965',
        'Documentary'
    ), (
        'tt0000098',
        'short',
        'alice In Wonderland',
        '222',
        'Fantasy'
    ), (
        'tt0000099',
        'short',
        'Pele',
        '555',
        'Documentary'
    ), (
        'tt0000100',
        'movie',
        'Ronaldo',
        '145',
        'Fantasy'
    );

-- --------------------------------------------------------

--

-- Table structure for table `ratings`

--

CREATE TABLE
    `ratings` (
        `tconst` varchar(9) DEFAULT NULL,
        `averageRating` varchar(13) DEFAULT NULL,
        `numVotes` varchar(8) DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8;

--

-- Dumping data for table `ratings`

--

INSERT INTO
    `ratings` (
        `tconst`,
        `averageRating`,
        `numVotes`
    )
VALUES ('tt0000001', '5.7', '1911'), ('tt0000002', '5.8', '257'), ('tt0000003', '6.5', '1716'), ('tt0000004', '5.6', '169'), ('tt0000005', '6.2', '2532'), ('tt0000006', '5.1', '173'), ('tt0000007', '5.4', '790'), ('tt0000008', '5.4', '2054'), ('tt0000009', '5.2', '199'), ('tt0000010', '6.9', '6929'), ('tt0000011', '5.3', '355'), ('tt0000012', '7.4', '11869'), ('tt0000013', '5.7', '1829'), ('tt0000014', '7.1', '5322'), ('tt0000015', '6.2', '1020'), ('tt0000016', '5.9', '1440'), ('tt0000017', '4.6', '314'), ('tt0000018', '5.3', '577'), ('tt0000019', '5', '31'), ('tt0000020', '4.8', '345'), ('tt0000022', '5.1', '1061'), ('tt0000023', '5.7', '1387'), ('tt0000024', '4.2', '99'), ('tt0000025', '4', '45'), ('tt0000026', '5.6', '1496'), ('tt0000027', '5.6', '1118'), ('tt0000028', '5.1', '1036'), ('tt0000029', '5.9', '3266'), ('tt0000030', '5.2', '820'), ('tt0000031', '5.5', '975'), ('tt0000032', '5', '408'), ('tt0000033', '5.5', '992'), ('tt0000034', '5', '190'), ('tt0000035', '5.3', '78'), ('tt0000036', '4.4', '594'), ('tt0000037', '4.2', '66'), ('tt0000038', '4.1', '197'), ('tt0000039', '3.1', '30'), ('tt0000040', '4.2', '64'), ('tt0000041', '6.8', '1772'), ('tt0000042', '3.8', '37'), ('tt0000043', '3.6', '32'), ('tt0000044', '3.7', '45'), ('tt0000045', '4.1', '33'), ('tt0000046', '3.6', '34'), ('tt0000047', '3.1', '34'), ('tt0000048', '4.8', '191'), ('tt0000049', '4.8', '49'), ('tt0000050', '3.7', '34'), ('tt0000051', '3.2', '35'), ('tt0000052', '4.2', '97'), ('tt0000053', '2.7', '18'), ('tt0000054', '4.5', '34'), ('tt0000055', '3.2', '30'), ('tt0000056', '2.5', '22'), ('tt0000057', '4.5', '34'), ('tt0000058', '4.3', '33'), ('tt0000059', '3', '27'), ('tt0000060', '7.4', '87'), ('tt0000061', '4.1', '24'), ('tt0000062', '6.3', '193'), ('tt0000063', '2.9', '28'), ('tt0000064', '2.7', '29'), ('tt0000065', '2.9', '29'), ('tt0000066', '2.8', '29'), ('tt0000067', '5.6', '62'), ('tt0000068', '3.3', '31'), ('tt0000069', '4.9', '441'), ('tt0000070', '6.4', '2574'), ('tt0000071', '3.5', '29'), ('tt0000072', '3.2', '27'), ('tt0000073', '2.9', '30'), ('tt0000074', '4.1', '31'), ('tt0000075', '6.3', '1866'), ('tt0000076', '4.4', '523'), ('tt0000077', '4.1', '35'), ('tt0000078', '3.6', '76'), ('tt0000079', '4.4', '35'), ('tt0000080', '3.5', '31'), ('tt0000081', '3.6', '32'), ('tt0000082', '4.5', '49'), ('tt0000083', '4.2', '32'), ('tt0000084', '4', '30'), ('tt0000085', '4.2', '33'), ('tt0000086', '3.7', '33'), ('tt0000087', '4.3', '37'), ('tt0000088', '3.7', '32'), ('tt0000089', '6.2', '977'), ('tt0000090', '3.5', '31'), ('tt0000091', '6.7', '3479'), ('tt0000092', '4', '29'), ('tt0000093', '4.7', '93'), ('tt0000094', '4.5', '32'), ('tt0000095', '4.3', '34'), ('tt0000096', '3.8', '29'), ('tt0000097', '4.5', '33'), ('tt0000098', '4.6', '36'), ('tt0000099', '4.1', '32'), ('tt0000100', '4.6', '53');

--

-- Indexes for dumped tables

--

--

-- Indexes for table `movies`

--

ALTER TABLE `movies` ADD PRIMARY KEY (`tconst`);

--

-- Indexes for table `ratings`

--

ALTER TABLE `ratings` ADD KEY `fk_ratings_movies` (`tconst`);

--

-- Constraints for dumped tables

--

--

-- Constraints for table `ratings`

--

ALTER TABLE `ratings`
ADD
    CONSTRAINT `fk_ratings_movies` FOREIGN KEY (`tconst`) REFERENCES `movies` (`tconst`) ON DELETE CASCADE ON UPDATE CASCADE;

COMMIT;