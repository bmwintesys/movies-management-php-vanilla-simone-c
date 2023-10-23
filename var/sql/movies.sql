-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Creato il: Ago 05, 2022 alle 14:18
-- Versione del server: 10.6.5-MariaDB-1:10.6.5+maria~focal
-- Versione PHP: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movies`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `actors`
--

CREATE TABLE `actors` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `actors`
--

INSERT INTO `actors` (`id`, `firstname`, `lastname`) VALUES
(1, 'Kevin', 'Costner'),
(2, 'Mary', 'McDonnell'),
(3, 'Graham', 'Greene'),
(4, 'Morgan', 'Freeman'),
(5, 'Christian', 'Slater'),
(6, 'Bruce', 'Willis'),
(7, 'Clive', 'Owen'),
(8, 'Mickey', 'Rourke'),
(9, 'Jessica', 'Alba'),
(10, 'Danny', 'Trejo'),
(11, 'Jeff', 'Fahey');

-- --------------------------------------------------------

--
-- Struttura della tabella `directors`
--

CREATE TABLE `directors` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `directors`
--

INSERT INTO `directors` (`id`, `firstname`, `lastname`) VALUES
(1, 'Kevin', 'Costner'),
(2, 'Kevin', 'Reynolds'),
(3, 'Frank', 'Miller'),
(4, 'Robert', 'Rodriguez'),
(5, 'Ethan', 'Maniquis');

-- --------------------------------------------------------

--
-- Struttura della tabella `genres`
--

CREATE TABLE `genres` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Animazione'),
(2, 'Avventura'),
(3, 'Azione'),
(4, 'Biografico'),
(5, 'Commedia'),
(6, 'Documentario'),
(7, 'Drammatico'),
(8, 'Fantascienza'),
(9, 'Fantasy/Fantastico'),
(10, 'Guerra'),
(11, 'Horror'),
(12, 'Musical'),
(13, 'Storico'),
(14, 'Thriller'),
(15, 'Western');

-- --------------------------------------------------------

--
-- Struttura della tabella `movies`
--

CREATE TABLE `movies` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `year` int(10) UNSIGNED NOT NULL,
  `story` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `movies`
--

INSERT INTO `movies` (`id`, `title`, `year`, `story`) VALUES
(1, 'Balla coi lupi', 1990, 'Un generale dell\'Unione stringe amicizia con la tribù Sioux dei Lakota, che porta un senso nuovo alla sua vita e lo spinge ad andare contro i suoi stessi commilitoni.'),
(2, 'Robin Hood - Principe dei ladri', 1991, 'Robin di Locksley torna dalle Crociate e trova il proprio regno usurpato dall\'arrogante sceriffo di Nottingham: decide allora di reclutare un gruppo di ribelli per abbattere l\'odioso tiranno e riprendersi ciò che gli appartiene.'),
(3, 'Sin City\r\n', 2005, 'Un misterioso uomo d\'affari narra una storia tragica basata sul tema della dipendenza mentre un vigilante si fa strada attraverso il difficile mondo sommerso della criminalità, oltre a ricercare il proprio amore perduto. Nel frattempo, in un\'altra zona della stessa città, un poliziotto annienta i piani di un terribile assassino di bambini.'),
(4, 'Machete', 2010, 'In Messico, Machete Cortez, agente federale, è in missione per salvare una ragazza sequestrata. Durante l\'operazione incontra il suo capo corrotto con il signore della droga, Rogelio Torrez, che uccide moglie e figlia di Machete, mentre quest\'ultimo - ferito - viene creduto morto. Tre anni dopo, Machete vaga in Texas in cerca di un qualsiasi lavoro. Michael Booth, uomo d\'affari e spin doctor, spiega a Machete che il corrotto senatore del Texas McLaughlin ha intenzione di aumentare i controlli al confine e ridurre il numero di immigrati messicani negli USA. Machete accetta l\'incarico di ucciderlo e riceve 150 000 $, dopo essere stato minacciato da Booth.\r\n\r\nMentre Machete si trova sul tetto di un edificio vicino al luogo del comizio di McLaughlin, subisce il doppio gioco di uno scagnozzo di Booth, che prima spara all\'ex agente federale e poi al senatore, colpendolo a una gamba. Booth ha organizzato il tentato omicidio per guadagnare sostenitori alle elezioni del senatore e far approvare il progetto per una recinzione elettrificata lungo tutto il confine.\r\n\r\nMachete fugge e arriva all\'ospedale dove due infermiere e un dottore lo curano nonostante sia un clandestino. Ancora una volta riesce a non farsi prendere dagli uomini di Booth che lo vogliono morto. Sartana Rivera, agente dell\'immigrazione, è inviata dai suoi superiori per trovare e arrestare Machete. Quest\'ultimo, con l\'aiuto di Luz, una ragazza che vende panini, conosciuta anche con il nome di Shè, capo di un\'organizzazione di aiuto per gli immigrati clandestini conosciuta come \"la Rete\", raggiunge padre Cortez, il fratello di Machete. Per vendicarsi, Machete rapisce la moglie di Booth e sua figlia, April, dopo aver partecipato in un video a luci rosse con le due. Raccoglie anche delle prove che collegano McLaughlin con il signore della droga Torrez.\r\n\r\nBooth e i suoi uomini trovano il nascondiglio di Machete e uccidono padre Cortez, ma non trovano la moglie e la figlia di Booth. A loro insaputa, ci sono delle telecamere di sorveglianza nella chiesa. Attraverso le registrazioni, la notizia del finto assassinio di McLaughlin e il relativo giro di corruzione, viene trasmessa su tutti i canali televisivi. Questo porta McLaughlin a scappare e a uccidere Booth, dopo di che si rifugia presso la base di Von Jackson che decide di ucciderlo con l\'accusa di \"alto tradimento\" nei confronti della nazione. McLaughlin sta per essere giustiziato quando Machete guida i membri della Rete alla base della vigilanza di confine.\r\n\r\nNello scontro i messicani vincono sui vigilanti, Jackson è ucciso da Luz - alla quale, in precedenza, aveva sparato in faccia facendole perdere un occhio- e Machete sfida Torrez, giunto negli Stati Uniti con l\'intenzione di ucciderlo. Alla fine Torrez, sconfitto, commette il seppuku con un machete del suo avversario. April, fuggita dalla chiesa con abiti monacali, uccide McLaughlin, nel frattempo liberato da Luz e i membri della Rete, per vendicare la morte di suo padre. Il senatore però aveva un giubbotto antiproiettile, sopravvive e tenta la fuga a piedi nella notte vestito da messicano, per poi essere cacciato e ucciso da alcuni uomini di Von. Nel finale, Sartana dà a Machete un documento di identità e insieme partono in moto.\r\n\r\nPrima dei titoli di coda, una voce fuori campo annuncia i sequel Machete uccide e Machete uccide ancora.');

-- --------------------------------------------------------

--
-- Struttura della tabella `movie_actor`
--

CREATE TABLE `movie_actor` (
  `id` int(11) UNSIGNED NOT NULL,
  `movie_id` int(10) UNSIGNED NOT NULL,
  `actor_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `movie_actor`
--

INSERT INTO `movie_actor` (`id`, `movie_id`, `actor_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 4),
(6, 2, 5),
(7, 3, 6),
(8, 3, 7),
(9, 3, 8),
(10, 3, 9),
(13, 4, 9),
(11, 4, 10),
(12, 4, 11);

-- --------------------------------------------------------

--
-- Struttura della tabella `movie_director`
--

CREATE TABLE `movie_director` (
  `id` int(11) UNSIGNED NOT NULL,
  `movie_id` int(11) UNSIGNED NOT NULL,
  `director_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `movie_director`
--

INSERT INTO `movie_director` (`id`, `movie_id`, `director_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 3, 4),
(5, 4, 4),
(6, 4, 5);

-- --------------------------------------------------------

--
-- Struttura della tabella `movie_genre`
--

CREATE TABLE `movie_genre` (
  `id` int(11) UNSIGNED NOT NULL,
  `movie_id` int(11) UNSIGNED NOT NULL,
  `genre_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `movie_genre`
--

INSERT INTO `movie_genre` (`id`, `movie_id`, `genre_id`) VALUES
(1, 1, 15),
(2, 2, 2),
(3, 2, 3),
(4, 2, 7),
(5, 2, 13),
(7, 3, 3),
(8, 3, 11),
(6, 3, 14),
(9, 4, 3),
(10, 4, 14);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `genre_unique_name` (`name`);

--
-- Indici per le tabelle `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `movie_unique_title_and_year` (`title`,`year`);

--
-- Indici per le tabelle `movie_actor`
--
ALTER TABLE `movie_actor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `movie_actor_unique` (`movie_id`,`actor_id`),
  ADD KEY `actor_id` (`actor_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indici per le tabelle `movie_director`
--
ALTER TABLE `movie_director`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `movie_director_unique` (`movie_id`,`director_id`) USING BTREE,
  ADD KEY `movie_id` (`movie_id`) USING BTREE,
  ADD KEY `director_id` (`director_id`);

--
-- Indici per le tabelle `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `movie_genere_unique` (`movie_id`,`genre_id`),
  ADD KEY `movie_id` (`movie_id`) USING BTREE,
  ADD KEY `genre_id` (`genre_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la tabella `directors`
--
ALTER TABLE `directors`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT per la tabella `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `movie_actor`
--
ALTER TABLE `movie_actor`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT per la tabella `movie_director`
--
ALTER TABLE `movie_director`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `movie_genre`
--
ALTER TABLE `movie_genre`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `movie_actor`
--
ALTER TABLE `movie_actor`
  ADD CONSTRAINT `movie_actor_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_actor_ibfk_2` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`);

--
-- Limiti per la tabella `movie_director`
--
ALTER TABLE `movie_director`
  ADD CONSTRAINT `movie_director_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_director_ibfk_2` FOREIGN KEY (`director_id`) REFERENCES `directors` (`id`);

--
-- Limiti per la tabella `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD CONSTRAINT `movie_genre_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_genre_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
