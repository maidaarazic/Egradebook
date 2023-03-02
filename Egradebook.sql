-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2021 at 02:23 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `egradebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--
DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS`student` (
  `S_ID` varchar(30) NOT NULL,
  `JMBG`  varchar(30) NOT NULL,
  `Sname` varchar(30) NOT NULL,
  `DateOfBirth` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`S_ID`, `JMBG`, `Sname`,`DateOfBirth`  )VALUES
('190302133', '2804000185092',`Jonna Jinton`, `14. 8. 1993.`), 
('180306138', '1324000185168',`Tomy Aviara`, `24. 3. 1973.`),
('200306138', '5494063185123',`Moon Shogun`, `13. 12. 1999.`),
('230322138', '1894063135187',`Cris Americos`, `2. 11. 1991.`),
('242306278', '2544000185143',`Adem Krampa`, `22. 7. 2001.`),
('623306278', '0984220185437',`Ahmo Sikirica`, `13. 8. 2003.`),
('434302133', '4854000185092',`Lejla Ždero`, `27. 1. 1994.`),
('170304290', '1324000185168',`Endry Aviara`, `4. 9. 1999.`);


-- --------------------------------------------------------

--
-- Table structure for table `parents`
--
DROP TABLE IF EXISTS `parents`;
CREATE TABLE IF NOT EXISTS `parents` (
  `p_id` varchar(30) NOT NULL,
  `DateOfBirth` varchar(30) NOT NULL,
  `work_status` varchar(30) NOT NULL,
  `p_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`p_id`,  `DateOfBirth`, `work_status`, `p_name` ) VALUES
(`280302135`,  `25.2.1972.`, `employed`, `Ahmet Kuyuk` ),
(`245301125`,  `21.2.1962.`, `employed`, `Fatima Buyuk` ),
(`378645926`,  `11.4.1969.`, `unemployed`, `Emina Gepek` ),
(`228632923`,  `3.6.1975.`, `unemployed`, `Lamija Spahić` ),
(`325632923`,  `2.5.1968.`, `unemployed`, `Behija Spahić` ),
(`325546233`,  `8.8.1978.`, `employed`, `Sara Dervisevic` );

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE IF NOT EXISTS `subjects` (
  `subject_id` varchar(30) NOT NULL,
  `no_of_students` int NOT NULL,
  `subject_name` varchar(30) NOT NULL
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `no_of_students`, `subject_name`) VALUES
('elit200', 90, 'English'),
('math201', 76, 'Math' ),
('cs105', 68, 'Programming'),
('ibf205', 54,'Programming'),
('turk112', 41, 'Turkish');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `c_id` varchar(30) NOT NULL,
  `c_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`c_id`, `c_name`) VALUES
(`75270`, `Živinice`),
(`75260`, `Kladanj`),
(`75250`, `Olovo`),
(`75240`, `Zenica`),
(`75230`, `Sarajevo`),
(`80230`, `Travnik`),
(`55980`, `Visoko`),
(`44678`, `Mostar`);

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
CREATE TABLE IF NOT EXISTS `grade` (
  `G_ID` varchar(30) NOT NULL,
  `letter` varchar(30) NOT NULL,
  `points` float NOT NULL
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` ( `G_ID`,  `letter`,`points` ) VALUES
( `10`,  `A`, 95 ),
( `9`,  `A-`, 85 ),
( `8`,  `B+`, 80 ),
( `8`,  `B`, 75 ),
( `7`,  `B-`, 70 );
-- --------------------------------------------------------

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
CREATE TABLE IF NOT EXISTS `school` (
  `S_ID` varchar(30) NOT NULL,
  `sc_name` varchar(30) NOT NULL,
  `adress` varchar(30) NOT NULL
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`S_ID`, `sc_name`,  `adress`) VALUES
(`222333`, `Prva Gimnazija`,  `Ul. Mehmeda Sioče 45. Sarajevo`),
(`342335`, `Druga Gimnazija`,  `Ul. Hamde Motike 7. Ustikolina`),
(`236092`, `Ban Kulin`,  `Ul. Bana Kulina 17. Mostar`),
(`234392`, `Behram-begova`,  `Ul. Behram-begova 1. Tuzla`),
(`456245`, `Turali-begova`,  `Ul. Turali-begova 14. Tuzla`),
(`265765`, `Lejla Miller`,  `Ul. Najbolje Profe 53. Sarajevo`),
(`636894`, `Bošnjačka Gimnazija`,  `Ul. Mustafe Busuladžića 3.`),
(`234854`, `IUS`,  `Ul. Hrasnička Cesta 15.`);

-- --------------------------------------------------------

--
-- Table structure for table `professors`
--

DROP TABLE IF EXISTS `professors`;
CREATE TABLE IF NOT EXISTS `professors` (
  `P_ID` varchar(30) NOT NULL,
  `p_name` varchar(30) NOT NULL,
  `date_of-birth` varchar(30) NOT NULL
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `professors`
--

INSERT INTO `professors` (`P_ID`, `p_name`, `date_of-birth`) VALUES
(`145`, `Brada Amir`, `1.1.1971.`),
(`157`, `Kemica Bejnejedejk`, `3.5.1987.`),
(`274`, `Pafa Omerović`, `7.5.1981.`),
(`222`, `Murga Izborna`, `4.11.1980.`),
(`247`, `Deda Kiraet`, `6.1.1982.`),
(`113`, `Šesto Biblioteka`, `7.4.1980.`),
(`110`, `Remza Prezentacija`, `4.4.1984.`),
(`100`, `Boki Bojan`, `7.4.1992.`);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`

--
DROP TABLE IF EXISTS `attendance`;
CREATE TABLE IF NOT EXISTS `attendance` (
  `A_ID` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `reason` varchar(30) NOT NULL
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`A_ID`, `name`, `reason`) VALUES
(`2`, `Talha`, `illness`),
(`3`, `Orhan`, `illness`),
(`1`, `Alija`, `illness`),
(`7`, `Merim`, `illness`),
(`9`, `Zerina`, `illness`),
(`11`, `Zumra`, `illness`),
(`8`, `Emir`, `illness`);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY `S_ID`(`S_ID`);
 
--
-- Indexes for table `course`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`p_id`);
  
--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`c_id`);
  
--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`G_ID`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`S_ID`);
  
--
-- Indexes for table `professors`
--
ALTER TABLE `professors`
  ADD PRIMARY KEY (` P_ID`);
  
--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`A_ID`);
  
  
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
