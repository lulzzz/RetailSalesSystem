CREATE TABLE `Customers` (
  `Id` MediumInt NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `MobileNo` int(11) DEFAULT NULL,
  `LanNo` int(11) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,  
  `CustomerTypeId` MEDIUMINT,
  `BalanceDue` decimal DEFAULT NULL,
  `CreditLimit` decimal DEFAULT NULL,
  `CreditDays` int not null,
  `AddedOn` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedOn` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` MEDIUMINT NULL,
  PRIMARY KEY (`Id`)
);
CREATE TABLE IF NOT EXISTS `mydb`.`Products` (
  `Id` MEDIUMINT NOT NULL AUTO_INCREMENT,
  `Code` VARCHAR(45) NULL,
  `Name` VARCHAR(45) NULL,
  `Description` VARCHAR(100) NULL,  
  `UnitOfMeasure` VARCHAR(10) NULL,
  `CategoryId` VARCHAR(10) NULL,
  `CompanyId` MEDIUMINT not null,
  `AddedOn` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedOn` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` MEDIUMINT NULL,
  PRIMARY KEY (`Id`)
  ); 
  
  CREATE TABLE IF NOT EXISTS `mydb`.`MeasuringUnits` (
   `Id` MEDIUMINT NOT NULL AUTO_INCREMENT,
  `unit` VARCHAR(10) NOT NULL,
  `MeasureQty` decimal NOT NULL,
  PRIMARY KEY (`Id`));
  
  CREATE TABLE IF NOT EXISTS `mydb`.`category` (
   `Id` MEDIUMINT NOT NULL AUTO_INCREMENT,
   `parentId` MEDIUMINT NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`Id`)); 
  
   CREATE TABLE IF NOT EXISTS `mydb`.`Companies` (
   `Id` MEDIUMINT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `MobileNo` int(11) DEFAULT NULL,
  `LanNo` int(11) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,  
  `AddedOn` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedOn` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` MEDIUMINT NULL);
  
  
  CREATE TABLE IF NOT EXISTS `mydb`.`users` (
   `Id` MEDIUMINT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `AddedOn` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedOn` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedBy` VARCHAR(20) NULL);
  
  