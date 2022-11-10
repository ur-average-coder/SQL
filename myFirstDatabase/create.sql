#advarela
CREATE TABLE `zip` (
  `zipcode` varchar(5) NOT NULL,
  `state` varchar(45) NOT NULL,
  `city` varchar(255) NOT NULL,
  PRIMARY KEY (`zipcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `property` (
  `pid` varchar(16) NOT NULL,
  `zipcode` varchar(5) NOT NUll, 
  `streetaddress` varchar(45) DEFAULT NULL,
  `yearbuilt` int DEFAULT NULL,
  `bathrooms` float NOT NULL,
  `bedrooms` int NOT NULL,
  `ptype` varchar(45) NOT NULL,
 
  PRIMARY KEY (`pid`),
  CONSTRAINT `zipcode` FOREIGN KEY (`zipcode`) REFERENCES `zip` (`zipcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `event` (
  `pid` varchar(16) NOT NULL,
  `edate` varchar(255) NOT NULL,
  `edescription` varchar(255) NOT NULL,
  `eprice` int NOT NULL,
  PRIMARY KEY (`pid`,`edate`),
  CONSTRAINT `pid` FOREIGN KEY (`pid`) REFERENCES `property` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


