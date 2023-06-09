
-- +migrate Up
CREATE TABLE IF NOT EXISTS `datapoints` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ProjectId` int(11) NOT NULL,
  `EquipID` varchar(45) NOT NULL,
  `System` varchar(45) DEFAULT NULL,
  `EquipType` varchar(45) DEFAULT NULL,
  `PointName` varchar(128) DEFAULT NULL,
  `Descriptor` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `Function` varchar(128) DEFAULT NULL,
  `PointType` varchar(45) DEFAULT NULL,
  `EngineeringUnits` varchar(45) DEFAULT NULL,
  `Slope` varchar(45) DEFAULT NULL,
  `Intercept` varchar(45) DEFAULT NULL,
  `SensorType` varchar(45) DEFAULT NULL,
  `COVTrend` varchar(45) DEFAULT NULL,
  `Collection` varchar(45) DEFAULT NULL,
  `PanelSamples` varchar(45) DEFAULT NULL,
  `PCSamples` varchar(45) DEFAULT NULL,
  `COVLimit` varchar(45) DEFAULT NULL,
  `TrendInterval1` varchar(45) DEFAULT NULL,
  `Collection1` varchar(45) DEFAULT NULL,
  `PanelSamples1` varchar(45) DEFAULT NULL,
  `PCDays1` varchar(45) DEFAULT NULL,
  `TrendInterval2` varchar(45) DEFAULT NULL,
  `Collection2` varchar(45) DEFAULT NULL,
  `PanelSamples2` varchar(45) DEFAULT NULL,
  `PCDays2` varchar(45) DEFAULT NULL,
  `TrendInterval3` varchar(45) DEFAULT NULL,
  `Collection3` varchar(45) DEFAULT NULL,
  `PanelSamples3` varchar(45) DEFAULT NULL,
  `PCDays3` varchar(45) DEFAULT NULL,
  `TrendInterval4` varchar(45) DEFAULT NULL,
  `Collection4` varchar(45) DEFAULT NULL,
  `PanelSamples4` varchar(45) DEFAULT NULL,
  `PCDays4` varchar(45) DEFAULT NULL,
  `EquipRef` varchar(45) DEFAULT NULL,
  `DisplayMode` varchar(45) DEFAULT NULL,
  `BLNType` varchar(45) DEFAULT NULL,
  `BLNSysName` varchar(45) DEFAULT NULL,
  `NodeIdentifier` int(11) DEFAULT NULL,
  `DeviceSysName` varchar(45) DEFAULT NULL,
  `BACnetObjectType` varchar(128) DEFAULT NULL,
  `BACnetObjectInstance` varchar(128) DEFAULT NULL,
  `BACnetObjectName` varchar(128) DEFAULT NULL,
  `BACnetDeviceInstance` varchar(128) DEFAULT NULL,
  `AddressTypeDHCP` varchar(45) DEFAULT NULL,
  `IPaddress` varchar(45) DEFAULT NULL,
  `UDPport` varchar(128) DEFAULT NULL,
  `BACnetNetwork` int(11) DEFAULT NULL,
  `MSTPaddress` varchar(45) DEFAULT NULL,
  `MSTPnetwork` varchar(45) DEFAULT NULL,
  `ApogeePtType` varchar(45) DEFAULT NULL,
  `Virtual` varchar(45) DEFAULT NULL,
  `IPport` varchar(128) DEFAULT NULL,
  `InsightNodeNumber` int(11) DEFAULT NULL,
  `FLNdeviceSysName` varchar(45) DEFAULT NULL,
  `IncludedInProject` bit(1) DEFAULT b'1',
  `MediumId` int(11) DEFAULT NULL,
  `ReportGroupId` int(11) DEFAULT NULL,
  `Medium` varchar(45) DEFAULT NULL,
  `ReportGroup` varchar(128) DEFAULT NULL,
  `UnitId` int(11) DEFAULT NULL,
  `NavigatorUnits` varchar(45) DEFAULT NULL,
  `MatchingRatio` varchar(10) DEFAULT NULL,
  `LocalRef` varchar(10) DEFAULT NULL,
  `AppInstanceId` varchar(10) DEFAULT NULL,
  `Medium` varchar(10) DEFAULT NULL,
  `Memo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `DataItems_ProjectId_Project_Id_idx` (`ProjectId`),
  CONSTRAINT `DataItems_ProjectId_Project_Id` FOREIGN KEY (`ProjectId`) REFERENCES `projects` (`Id`) ON DELETE CASCADE ON UPDATE NO ACTION
);

-- +migrate Down
DROP TABLE  datapoints;
