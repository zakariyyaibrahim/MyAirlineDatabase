-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2020 at 02:34 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airlinedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `aeroplane`
--

CREATE TABLE `aeroplane` (
  `PlaneID` int(11) NOT NULL,
  `PlaneNumber` varchar(10) NOT NULL,
  `SeatCapacity` int(10) NOT NULL,
  `ManufacturedBy` varchar(50) NOT NULL,
  `ManufacturedDate` date DEFAULT NULL,
  `Active` tinyint(1) DEFAULT NULL,
  `CompanyID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aeroplane`
--

INSERT INTO `aeroplane` (`PlaneID`, `PlaneNumber`, `SeatCapacity`, `ManufacturedBy`, `ManufacturedDate`, `Active`, `CompanyID`) VALUES
(1, 'KWIL1254', 250, 'SUZUKI Company Limited', '2018-02-01', 0, NULL),
(2, 'ABJ11190', 500, 'IEEE & sons', '2010-10-28', 1, NULL),
(3, 'CAL7779', 1500, 'Airik Air Engineers International', '1999-02-08', 1, NULL),
(4, 'ACC67565', 180, 'Arab Air Contractors', '2019-12-13', 0, NULL),
(5, 'TKY54647', 360, 'YAMAHA', '2014-11-25', 0, NULL),
(6, 'CRO67580KX', 900, 'AviConEngineers Nig. Ltd', '2008-12-02', 1, NULL),
(7, 'UK303LND', 120, 'EcoFriendly Engineers', '2011-09-30', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `airfare`
--

CREATE TABLE `airfare` (
  `ChargeID` int(30) NOT NULL,
  `RouteID` int(11) DEFAULT NULL,
  `Charges` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `airlinecompany`
--

CREATE TABLE `airlinecompany` (
  `CompanyID` int(5) NOT NULL,
  `CompanyName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airlinecompany`
--

INSERT INTO `airlinecompany` (`CompanyID`, `CompanyName`) VALUES
(1, 'Arik Air'),
(2, 'Aero Contractors'),
(3, 'Dana Air'),
(4, 'Med-View Airline'),
(5, 'Dornier Aviation Nigeria'),
(6, 'Kabo Air'),
(7, 'Overland Airways'),
(8, 'Air Peace'),
(9, 'Associated Aviation'),
(10, 'Allied Airline'),
(11, 'Azman Air'),
(12, 'First Nation Airways'),
(13, 'Max Air'),
(14, 'TAT Nigeria'),
(15, 'IRS Airline'),
(16, 'Chanchangi Airlines'),
(17, 'Alaska Airlines'),
(18, 'JetBlue'),
(19, 'United Airlines'),
(20, 'Spirit Airlines'),
(21, 'American Airlines'),
(22, 'Hawaaian Airlines'),
(23, 'Delta Airlines'),
(24, 'Allegiant Airlines'),
(25, 'Frontier Airways'),
(26, 'Republic Airways');

-- --------------------------------------------------------

--
-- Table structure for table `airports`
--

CREATE TABLE `airports` (
  `AiportCode` varchar(10) NOT NULL,
  `AirportName` varchar(50) NOT NULL,
  `StateID` int(11) DEFAULT NULL,
  `CountryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airports`
--

INSERT INTO `airports` (`AiportCode`, `AirportName`, `StateID`, `CountryID`) VALUES
('ATLA', 'Hartsfield-jackson Atlanta International Airport', NULL, 10),
('BOSB', 'Logan International Airport', NULL, 10),
('DDNAAABV', 'Nnamdi Azikiwe International Airport', 37, 1),
('DFWD', 'Dallas/Fort worth international Airport', NULL, 10),
('DNENENU', 'Akanu International Airport', 14, 1),
('DNILILR', 'Ilorin International Airport', 23, 1),
('DNKAKAD', 'Kaduna international Airport', 18, 1),
('DNKNKAN', 'Mallam Aminu Kano international Airport', 19, 1),
('LAXL', 'Los Angeles International Airports', 46, 10),
('ORDC', 'O\'Hare international Airport', NULL, 10);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `ContactID` int(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Telephone` varchar(11) DEFAULT NULL,
  `MobileNumber` varchar(11) NOT NULL,
  `Street` varchar(10) DEFAULT NULL,
  `StateID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`ContactID`, `Email`, `Telephone`, `MobileNumber`, `Street`, `StateID`) VALUES
(1, 'Musa@gmail.com', '2345543323', '0705422345', 'qah', 41),
(2, 'live@yahoomail.com', '2345543387', '999126236', 'liv', 59),
(3, 'xxswaas@hotmail.com', '23455433098', '0800543389', 'texs', 49),
(4, 'gana@hotmail.com', '23455433345', '08098304580', 'ghan', 38),
(5, 'alexis@gmail.com', '2345509875', '07080808134', 'alex', 42),
(6, 'gift@gmail.com', '108876654', '08099676892', 'gftte', 47),
(7, 'london@gmail.com', '23455431018', '08027374859', 'westlondon', 56),
(8, 'cali@gmail.com', '131618191', '09063646561', 'no. 1 ang', 48),
(9, 'salah@gmail.com', '23455123456', '09067686960', 'Salah ', 45),
(10, 'Aliyu@yahoomai.com', '1341424019', '09067676869', 'Arewa ', 15);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `CountryID` int(10) NOT NULL,
  `CountryName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`CountryID`, `CountryName`) VALUES
(1, 'NIGERIA'),
(2, 'ALGERIA'),
(3, 'MORROCCO'),
(4, 'GHANA'),
(5, 'CAMEROON'),
(6, 'NIGER'),
(7, 'BENIN'),
(8, 'CHINA'),
(9, 'UK'),
(10, 'USA'),
(11, 'MEXICO'),
(12, 'CANADA'),
(13, 'FRANCE'),
(14, 'EGYPT'),
(15, 'JAPAN'),
(16, 'INDIA');

-- --------------------------------------------------------

--
-- Table structure for table `flightschedule`
--

CREATE TABLE `flightschedule` (
  `FlightID` int(20) NOT NULL,
  `FlightDate` datetime DEFAULT NULL,
  `Departure` datetime DEFAULT NULL,
  `Arrival` datetime DEFAULT NULL,
  `PlaneNumber` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `PassengerID` int(15) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `OtherNames` varchar(50) DEFAULT NULL,
  `Age` int(5) NOT NULL,
  `Nationality` varchar(50) NOT NULL,
  `ContactID` int(11) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`PassengerID`, `FirstName`, `LastName`, `OtherNames`, `Age`, `Nationality`, `ContactID`, `Gender`) VALUES
(1, 'Zakariya', 'Ibrahim', 'Areo', 39, 'USA', 1, 'Male'),
(2, 'Habibu', 'Adepoju', 'Olawale', 60, 'Nigeria', 2, 'Male'),
(7, 'Moses', 'Chukwuka', 'Emmanuel', 14, 'UK', 7, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `TicketID` int(25) NOT NULL,
  `BookingDate` datetime DEFAULT NULL,
  `DepartureDate` datetime DEFAULT NULL,
  `passengerID` int(15) DEFAULT NULL,
  `FlightID` int(20) DEFAULT NULL,
  `Type` varchar(20) DEFAULT NULL,
  `Charges` decimal(5,2) DEFAULT NULL,
  `Discounts` decimal(6,2) DEFAULT NULL,
  `Total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `RouteID` int(11) NOT NULL,
  `SourceAirport` varchar(10) DEFAULT NULL,
  `DestinationAirport` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `StateID` int(10) NOT NULL,
  `State` varchar(20) NOT NULL,
  `CountryID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`StateID`, `State`, `CountryID`) VALUES
(1, 'ABIA', 1),
(2, 'Adamawa', 1),
(3, 'Anambra', 1),
(4, 'Akwa Ibom', 1),
(5, 'Bauci', 1),
(6, 'Bayelsa', 1),
(7, 'Benue', 1),
(8, 'Borno', 1),
(9, 'Cross River', 1),
(10, 'Delta', 1),
(11, 'Ebonyi', 1),
(12, 'Edo', 1),
(13, 'Ekiti', 1),
(14, 'Enugu', 1),
(15, 'Gombe', 1),
(16, 'Imo', 1),
(17, 'Jigawa', 1),
(18, 'Kaduna', 1),
(19, 'Kano', 1),
(20, 'Katsina', 1),
(21, 'Kebbi', 1),
(22, 'Kogi', 1),
(23, 'Kwara', 1),
(24, 'Lagos', 1),
(25, 'Nassarawa', 1),
(26, 'Niger', 1),
(27, 'Ogun', 1),
(28, 'Osun', 1),
(29, 'Ondo', 1),
(30, 'Oyo', 1),
(31, 'Plateau', 1),
(32, 'Rivers', 1),
(33, 'Sokoto', 1),
(34, 'Taraba', 1),
(35, 'Yobe', 1),
(36, 'Zamfara', 1),
(37, 'Abuja', 1),
(38, 'Accra', 4),
(39, 'Younde', 5),
(40, 'Yamsokro', 5),
(41, 'Cairo', 14),
(42, 'Alexandra', 14),
(43, 'Misra', 14),
(44, 'Qahirah', 14),
(45, 'Hilal', 14),
(46, 'Los Angeles', 10),
(47, 'New York', 10),
(48, 'Califonia', 10),
(49, 'Texas', 10),
(50, 'Washiton', 10),
(56, 'Birmingham', 9),
(57, 'Manchester', 9),
(58, 'Newcastle', 9),
(59, 'Liverpool', 9),
(60, 'London', 9),
(61, 'Nottingham', 9),
(62, 'County', 9),
(63, 'Westham', 9),
(64, 'Southampton', 9),
(65, 'Watford', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aeroplane`
--
ALTER TABLE `aeroplane`
  ADD PRIMARY KEY (`PlaneID`),
  ADD KEY `CompanyID` (`CompanyID`);

--
-- Indexes for table `airfare`
--
ALTER TABLE `airfare`
  ADD PRIMARY KEY (`ChargeID`),
  ADD KEY `RouteID` (`RouteID`);

--
-- Indexes for table `airlinecompany`
--
ALTER TABLE `airlinecompany`
  ADD PRIMARY KEY (`CompanyID`);

--
-- Indexes for table `airports`
--
ALTER TABLE `airports`
  ADD PRIMARY KEY (`AiportCode`),
  ADD KEY `StateID` (`StateID`),
  ADD KEY `CountryID` (`CountryID`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`ContactID`),
  ADD UNIQUE KEY `MobileNumber` (`MobileNumber`),
  ADD KEY `StateID` (`StateID`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`CountryID`);

--
-- Indexes for table `flightschedule`
--
ALTER TABLE `flightschedule`
  ADD PRIMARY KEY (`FlightID`);

--
-- Indexes for table `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`PassengerID`),
  ADD KEY `ContactID` (`ContactID`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`TicketID`),
  ADD KEY `passengerID` (`passengerID`),
  ADD KEY `FlightID` (`FlightID`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`RouteID`),
  ADD UNIQUE KEY `SourceAirport` (`SourceAirport`),
  ADD UNIQUE KEY `DestinationAirport` (`DestinationAirport`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`StateID`),
  ADD KEY `CountryID` (`CountryID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aeroplane`
--
ALTER TABLE `aeroplane`
  MODIFY `PlaneID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `airfare`
--
ALTER TABLE `airfare`
  MODIFY `ChargeID` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `airlinecompany`
--
ALTER TABLE `airlinecompany`
  MODIFY `CompanyID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `ContactID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `CountryID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `flightschedule`
--
ALTER TABLE `flightschedule`
  MODIFY `FlightID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `passengers`
--
ALTER TABLE `passengers`
  MODIFY `PassengerID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `TicketID` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `RouteID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `StateID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aeroplane`
--
ALTER TABLE `aeroplane`
  ADD CONSTRAINT `aeroplane_ibfk_1` FOREIGN KEY (`CompanyID`) REFERENCES `airlinecompany` (`CompanyID`);

--
-- Constraints for table `airfare`
--
ALTER TABLE `airfare`
  ADD CONSTRAINT `airfare_ibfk_1` FOREIGN KEY (`RouteID`) REFERENCES `route` (`RouteID`);

--
-- Constraints for table `airports`
--
ALTER TABLE `airports`
  ADD CONSTRAINT `airports_ibfk_1` FOREIGN KEY (`StateID`) REFERENCES `states` (`StateID`),
  ADD CONSTRAINT `airports_ibfk_2` FOREIGN KEY (`CountryID`) REFERENCES `countries` (`CountryID`);

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_ibfk_1` FOREIGN KEY (`StateID`) REFERENCES `states` (`StateID`);

--
-- Constraints for table `passengers`
--
ALTER TABLE `passengers`
  ADD CONSTRAINT `passengers_ibfk_1` FOREIGN KEY (`ContactID`) REFERENCES `contacts` (`ContactID`);

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`passengerID`) REFERENCES `passengers` (`PassengerID`),
  ADD CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`FlightID`) REFERENCES `flightschedule` (`FlightID`);

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_ibfk_1` FOREIGN KEY (`CountryID`) REFERENCES `countries` (`CountryID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
