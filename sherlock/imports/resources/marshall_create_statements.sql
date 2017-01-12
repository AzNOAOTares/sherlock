CREATE TABLE IF NOT EXISTS `tcs_cat_asassn_supernova_survey_stream` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `Classification_Age` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Disc_Age` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Galaxy_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `No` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Offset` double DEFAULT NULL,
  `RA` double DEFAULT NULL,
  `Redshift` double DEFAULT NULL,
  `Type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `V_abs` double DEFAULT NULL,
  `V_disc` double DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `dateLastModified` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` varchar(45) DEFAULT '0',
  `decl` double DEFAULT NULL,
  `htm16ID` bigint(20) DEFAULT NULL,
  `surveyUrl` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decDeg` double DEFAULT NULL,
  `raDeg` double DEFAULT NULL,
  `htm10ID` bigint(20) DEFAULT NULL,
  `htm13ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `id` (`ID`) KEY_BLOCK_SIZE=2048,
  UNIQUE KEY `radeg_decdeg` (`raDeg`,`decDeg`) KEY_BLOCK_SIZE=1024,
  KEY `ra_dec` (`RA`,`decl`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm16ID` (`htm16ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm10ID` (`htm10ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm13ID` (`htm13ID`) KEY_BLOCK_SIZE=1024
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;



CREATE TABLE IF NOT EXISTS `tcs_cat_asassn_transients_survey_stream` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `Vmag` double DEFAULT NULL,
  `comment` varchar(700) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `dateLastModified` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` varchar(45) DEFAULT '0',
  `decDeg` double DEFAULT NULL,
  `discDate` datetime DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `raDeg` double DEFAULT NULL,
  `specClass` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `commentAdded` tinyint(4) NOT NULL DEFAULT '0',
  `surveyUrl` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `htm16ID` bigint(20) DEFAULT NULL,
  `htm10ID` bigint(20) DEFAULT NULL,
  `htm13ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `name` (`name`) KEY_BLOCK_SIZE=2048,
  UNIQUE KEY `radeg_decdeg` (`raDeg`,`decDeg`) KEY_BLOCK_SIZE=1024,
  KEY `ra_dec` (`decDeg`,`raDeg`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm16ID` (`htm16ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm10ID` (`htm10ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm13ID` (`htm13ID`) KEY_BLOCK_SIZE=1024
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;

CREATE TABLE IF NOT EXISTS `tcs_cat_atel_coordinates_stream` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT,
  `atelNumber` int(11) NOT NULL,
  `raDeg` double NOT NULL,
  `decDeg` double NOT NULL,
  `crossMatchDate` datetime DEFAULT NULL,
  `singleClassification` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supernovaTag` int(11) DEFAULT NULL,
  `atelName` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `atelUrl` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `htm16ID` bigint(20) DEFAULT NULL,
  `survey` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `titleToComment` tinyint(4) NOT NULL DEFAULT '0',
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `dateLastModified` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` varchar(45) DEFAULT '0',
  `htm10ID` bigint(20) DEFAULT NULL,
  `htm13ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `atelnumber_ra_dec` (`atelNumber`,`raDeg`,`decDeg`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `radeg_decdeg` (`raDeg`,`decDeg`) KEY_BLOCK_SIZE=1024,
  KEY `ra_deg` (`raDeg`,`decDeg`) KEY_BLOCK_SIZE=1024,
  KEY `atelNumber` (`atelNumber`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm16ID` (`htm16ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm10ID` (`htm10ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm13ID` (`htm13ID`) KEY_BLOCK_SIZE=1024
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;

CREATE TABLE IF NOT EXISTS `tcs_cat_bright_sn_list_stream` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `dateLastModified` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` varchar(45) DEFAULT '0',
  `decDeg` double DEFAULT NULL,
  `discoveryMag` double DEFAULT NULL,
  `discoveryMjd` double DEFAULT NULL,
  `imageUrl` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `objectUrl` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `raDeg` double DEFAULT NULL,
  `survey` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'bright sn list',
  `type` varchar(45) COLLATE utf8_unicode_ci DEFAULT 'SN',
  `htm16ID` bigint(20) DEFAULT NULL,
  `htm10ID` bigint(20) DEFAULT NULL,
  `htm13ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `name` (`name`) KEY_BLOCK_SIZE=4096,
  UNIQUE KEY `radeg_decdeg` (`raDeg`,`decDeg`) KEY_BLOCK_SIZE=1024,
  KEY `ra_dec` (`decDeg`,`raDeg`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm16ID` (`htm16ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm10ID` (`htm10ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm13ID` (`htm13ID`) KEY_BLOCK_SIZE=1024
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;

CREATE TABLE IF NOT EXISTS `tcs_cat_chase_survey_stream` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `candidateID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ra` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decl` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mag` float DEFAULT NULL,
  `magErr` float DEFAULT NULL COMMENT 'Mag error only available in the recurrence data',
  `observationMJD` double DEFAULT NULL COMMENT 'Observation date in MJD',
  `discDate` date DEFAULT NULL,
  `discMag` float DEFAULT NULL,
  `suggestedType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `catalogType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hostZ` float DEFAULT NULL,
  `lastNonDetection` date DEFAULT NULL,
  `tripletImageURL` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `objectURL` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `htm16ID` bigint(20) unsigned DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `dateLastModified` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` varchar(45) DEFAULT '0',
  `decDeg` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `raDeg` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `htm10ID` bigint(20) DEFAULT NULL,
  `htm13ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `idx_uq_candidateID_observationMJD` (`candidateID`,`observationMJD`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `idx_uq_candidateID_discDate` (`candidateID`,`discDate`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `radeg_decdeg` (`raDeg`,`decDeg`) KEY_BLOCK_SIZE=4096,
  KEY `idx_candidateID` (`candidateID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm16ID` (`htm16ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm10ID` (`htm10ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm13ID` (`htm13ID`) KEY_BLOCK_SIZE=1024
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;

CREATE TABLE IF NOT EXISTS `tcs_cat_crts_css_survey_stream` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `circularUrl` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` mediumtext COLLATE utf8_unicode_ci,
  `commentIngested` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `dateLastModified` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` varchar(45) DEFAULT '0',
  `decDeg` double DEFAULT NULL,
  `filter` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `finderChartUrl` varchar(644) COLLATE utf8_unicode_ci DEFAULT NULL,
  `finderChartWebpage` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagesUrl` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lightcurveUrl` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mag` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `observationDate` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `observationMJD` double DEFAULT NULL,
  `raDeg` double DEFAULT NULL,
  `survey` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surveyObjectUrl` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetImageUrl` varchar(624) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transientTypePrediction` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uniqueId` bigint(20) DEFAULT NULL,
  `htm16ID` bigint(20) DEFAULT NULL,
  `magErr` double DEFAULT NULL,
  `lastNonDetectionDate` datetime DEFAULT NULL,
  `lastNonDetectionMJD` double DEFAULT NULL,
  `htm10ID` bigint(20) DEFAULT NULL,
  `htm13ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `observationmjd_name` (`observationMJD`,`name`) KEY_BLOCK_SIZE=2048,
  UNIQUE KEY `radeg_decdeg` (`raDeg`,`decDeg`) KEY_BLOCK_SIZE=1024,
  KEY `name` (`name`) KEY_BLOCK_SIZE=2048,
  KEY `ra_dec` (`decDeg`,`raDeg`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm16ID` (`htm16ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm10ID` (`htm10ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm13ID` (`htm13ID`) KEY_BLOCK_SIZE=1024
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;

CREATE TABLE IF NOT EXISTS `tcs_cat_crts_mls_survey_stream` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `circularUrl` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` mediumtext COLLATE utf8_unicode_ci,
  `commentIngested` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `dateLastModified` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` varchar(45) DEFAULT '0',
  `decDeg` double DEFAULT NULL,
  `filter` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `finderChartUrl` varchar(644) COLLATE utf8_unicode_ci DEFAULT NULL,
  `finderChartWebpage` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagesUrl` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lightcurveUrl` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mag` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `observationDate` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `observationMJD` double DEFAULT NULL,
  `raDeg` double DEFAULT NULL,
  `survey` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surveyObjectUrl` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetImageUrl` varchar(624) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transientTypePrediction` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uniqueId` bigint(20) DEFAULT NULL,
  `htm16ID` bigint(20) DEFAULT NULL,
  `magErr` double DEFAULT NULL,
  `lastNonDetectionDate` datetime DEFAULT NULL,
  `lastNonDetectionMJD` double DEFAULT NULL,
  `htm10ID` bigint(20) DEFAULT NULL,
  `htm13ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `observationmjd_name` (`observationMJD`,`name`) KEY_BLOCK_SIZE=2048,
  UNIQUE KEY `radeg_decdeg` (`raDeg`,`decDeg`) KEY_BLOCK_SIZE=1024,
  KEY `name` (`name`) KEY_BLOCK_SIZE=2048,
  KEY `ra_dec` (`decDeg`,`raDeg`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm16ID` (`htm16ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm10ID` (`htm10ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm13ID` (`htm13ID`) KEY_BLOCK_SIZE=1024
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;

CREATE TABLE IF NOT EXISTS `tcs_cat_crts_sss_survey_stream` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `circularUrl` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` mediumtext COLLATE utf8_unicode_ci,
  `commentIngested` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `dateLastModified` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` varchar(45) DEFAULT '0',
  `decDeg` double DEFAULT NULL,
  `filter` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `finderChartUrl` varchar(644) COLLATE utf8_unicode_ci DEFAULT NULL,
  `finderChartWebpage` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagesUrl` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lightcurveUrl` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mag` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `observationDate` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `observationMJD` double DEFAULT NULL,
  `raDeg` double DEFAULT NULL,
  `survey` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surveyObjectUrl` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetImageUrl` varchar(624) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transientTypePrediction` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uniqueId` bigint(20) DEFAULT NULL,
  `htm16ID` bigint(20) DEFAULT NULL,
  `magErr` double DEFAULT NULL,
  `lastNonDetectionDate` datetime DEFAULT NULL,
  `lastNonDetectionMJD` double DEFAULT NULL,
  `htm10ID` bigint(20) DEFAULT NULL,
  `htm13ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `observationmjd_name` (`observationMJD`,`name`) KEY_BLOCK_SIZE=2048,
  UNIQUE KEY `radeg_decdeg` (`raDeg`,`decDeg`) KEY_BLOCK_SIZE=1024,
  KEY `name` (`name`) KEY_BLOCK_SIZE=2048,
  KEY `ra_dec` (`decDeg`,`raDeg`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm16ID` (`htm16ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm10ID` (`htm10ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm13ID` (`htm13ID`) KEY_BLOCK_SIZE=1024
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;

CREATE TABLE IF NOT EXISTS `tcs_cat_lsq_survey_stream` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `candidateID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `catalogType` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `dateLastModified` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` varchar(45) DEFAULT '0',
  `decl` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discDate` datetime DEFAULT NULL,
  `discMag` double DEFAULT NULL,
  `discPhase` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `historyURL` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hostZ` double DEFAULT NULL,
  `isFollowed` tinyint(4) DEFAULT NULL,
  `lastNonDetection` datetime DEFAULT NULL,
  `mag` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `minObsDate` datetime DEFAULT NULL,
  `numPhoto` tinyint(4) DEFAULT NULL,
  `numSpectra` tinyint(4) DEFAULT NULL,
  `obsDate` datetime DEFAULT NULL,
  `observationMJD` double DEFAULT NULL,
  `ra` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `specType` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtractedLightcurveURL` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `suggestedType` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tripletImageURL` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transientBucketId` int(11) DEFAULT NULL,
  `htm16ID` bigint(20) DEFAULT NULL,
  `survey` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'LSQ',
  `transientHistoryLogAdded` tinyint(4) NOT NULL DEFAULT '0',
  `decDeg` double DEFAULT NULL,
  `raDeg` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `htm10ID` bigint(20) DEFAULT NULL,
  `htm13ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `candidateid` (`candidateID`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `radeg_decdeg` (`raDeg`,`decDeg`) KEY_BLOCK_SIZE=2048,
  KEY `idx_htm16ID` (`htm16ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm10ID` (`htm10ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm13ID` (`htm13ID`) KEY_BLOCK_SIZE=1024
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;

CREATE TABLE IF NOT EXISTS `tcs_cat_master_survey_stream` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `comment` varchar(700) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `dateLastModified` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` varchar(45) DEFAULT '0',
  `imageUrl` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `magnitude` double DEFAULT NULL,
  `masterInt` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telescope` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `survey` varchar(45) COLLATE utf8_unicode_ci DEFAULT 'master',
  `discoveryMjd` double DEFAULT NULL,
  `decDeg` double DEFAULT NULL,
  `raDeg` double DEFAULT NULL,
  `filter` varchar(45) COLLATE utf8_unicode_ci DEFAULT 'unfiltered',
  `candidateUrl` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'http://observ.pereplet.ru/sn_e.html',
  `htm16ID` bigint(20) DEFAULT NULL,
  `htm10ID` bigint(20) DEFAULT NULL,
  `htm13ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `name` (`name`) KEY_BLOCK_SIZE=2048,
  UNIQUE KEY `radeg_decdeg` (`raDeg`,`decDeg`) KEY_BLOCK_SIZE=1024,
  KEY `ra_dec` (`decDeg`,`raDeg`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm16ID` (`htm16ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm10ID` (`htm10ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm13ID` (`htm13ID`) KEY_BLOCK_SIZE=1024
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;

CREATE TABLE IF NOT EXISTS `tcs_cat_ogle_survey_stream` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `dateLastModified` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` varchar(45) DEFAULT '0',
  `decDeg` double DEFAULT NULL,
  `filter` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastNonDetectionDate` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastNonDetectionMJD` double DEFAULT NULL,
  `lightcurveUrl` varchar(614) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mag` double DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `observationDate` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `observationMJD` double DEFAULT NULL,
  `raDeg` double DEFAULT NULL,
  `referenceFitsUrl` varchar(616) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referenceImageUrl` varchar(616) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtractedFitsUrl` varchar(634) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtractedImageUrl` varchar(634) COLLATE utf8_unicode_ci DEFAULT NULL,
  `survey` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surveyObjectUrl` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetFitsUrl` varchar(638) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetImageUrl` varchar(638) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transientTypePrediction` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `htm16ID` bigint(20) DEFAULT NULL,
  `seeing` double DEFAULT NULL,
  `background` double DEFAULT NULL,
  `magErr` double DEFAULT NULL,
  `limitingMag` tinyint(4) DEFAULT NULL,
  `htm10ID` bigint(20) DEFAULT NULL,
  `htm13ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `observationmjd_name_survey` (`observationMJD`,`name`,`survey`) KEY_BLOCK_SIZE=2048,
  UNIQUE KEY `observationmjd_name` (`observationMJD`,`name`) KEY_BLOCK_SIZE=2048,
  UNIQUE KEY `radeg_decdeg` (`raDeg`,`decDeg`) KEY_BLOCK_SIZE=1024,
  KEY `name` (`name`) KEY_BLOCK_SIZE=2048,
  KEY `ra_dec` (`decDeg`,`raDeg`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm16ID` (`htm16ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm10ID` (`htm10ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm13ID` (`htm13ID`) KEY_BLOCK_SIZE=1024
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;

CREATE TABLE IF NOT EXISTS `tcs_cat_panstarrs_survey_stream` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `candidateID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `mag` float DEFAULT NULL,
  `magErr` float DEFAULT NULL COMMENT 'Mag error only available in the recurrence data',
  `filter` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Observaton filter',
  `observationMJD` double DEFAULT NULL COMMENT 'Observation date in MJD',
  `discDate` date DEFAULT NULL,
  `discMag` float DEFAULT NULL,
  `suggestedType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `catalogType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hostZ` float DEFAULT NULL,
  `targetImageURL` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refImageURL` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diffImageURL` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `objectURL` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `htm16ID` bigint(20) unsigned DEFAULT NULL,
  `survey` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PS1',
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `dateLastModified` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` varchar(45) DEFAULT '0',
  `decDeg` double DEFAULT NULL,
  `raDeg` double DEFAULT NULL,
  `htm10ID` bigint(20) DEFAULT NULL,
  `htm13ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `idx_uq_candidateID_observationMJD_mag_filter` (`candidateID`,`observationMJD`,`mag`,`filter`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `idx_uq_candidateID_discDate` (`candidateID`,`discDate`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `radeg_decdeg` (`raDeg`,`decDeg`) KEY_BLOCK_SIZE=1024,
  KEY `idx_candidateID` (`candidateID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm16ID` (`htm16ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm10ID` (`htm10ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm13ID` (`htm13ID`) KEY_BLOCK_SIZE=1024
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;

CREATE TABLE IF NOT EXISTS `tcs_cat_pessto_marshall_user_added_stream` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `candidateID` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `mag` float DEFAULT NULL,
  `magErr` float DEFAULT NULL COMMENT 'Mag error only available in the recurrence data',
  `filter` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Observaton filter',
  `observationMJD` double DEFAULT NULL COMMENT 'Observation date in MJD',
  `discDate` date DEFAULT NULL,
  `discMag` float DEFAULT NULL,
  `suggestedType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `catalogType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hostZ` float DEFAULT NULL,
  `targetImageURL` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `objectURL` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `htm16ID` bigint(20) unsigned DEFAULT NULL,
  `survey` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `dateLastModified` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` varchar(45) DEFAULT '0',
  `suggestedClassification` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decDeg` double DEFAULT NULL,
  `raDeg` double DEFAULT NULL,
  `htm10ID` bigint(20) DEFAULT NULL,
  `htm13ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `idx_uq_candidateID_observationMJD_mag_filter` (`candidateID`,`observationMJD`,`mag`,`filter`) KEY_BLOCK_SIZE=2048,
  UNIQUE KEY `idx_uq_candidateID_discDate` (`candidateID`,`discDate`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `radeg_decdeg` (`raDeg`,`decDeg`) KEY_BLOCK_SIZE=1024,
  KEY `idx_candidateID` (`candidateID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm16ID` (`htm16ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm10ID` (`htm10ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm13ID` (`htm13ID`) KEY_BLOCK_SIZE=1024
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;

CREATE TABLE IF NOT EXISTS `tcs_cat_skymapper_survey_stream` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `DECL` double DEFAULT NULL COMMENT 'original keyword: DEC',
  `RA` double DEFAULT NULL,
  `bestType` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `candidateID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `candidateURL` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `dateLastModified` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` varchar(45) DEFAULT '0',
  `diffThumbURL` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discFilt` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discMJD` double DEFAULT NULL,
  `discMag` double DEFAULT NULL,
  `filt` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mag` double DEFAULT NULL,
  `magerr` double DEFAULT NULL,
  `mjd` double DEFAULT NULL,
  `newThumbURL` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noneFilt` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noneMJD` double DEFAULT NULL,
  `noneMag` double DEFAULT NULL,
  `numDet` int(11) DEFAULT NULL,
  `refThumbURL` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `htm16ID` bigint(20) unsigned DEFAULT NULL,
  `survey` varchar(45) COLLATE utf8_unicode_ci DEFAULT 'skymapper',
  `finderURL` varchar(624) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decDeg` double DEFAULT NULL,
  `raDeg` double DEFAULT NULL,
  `htm10ID` bigint(20) DEFAULT NULL,
  `htm13ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `candidateid_mjd` (`candidateID`,`mjd`) KEY_BLOCK_SIZE=2048,
  UNIQUE KEY `radeg_decdeg` (`raDeg`,`decDeg`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm16ID` (`htm16ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm10ID` (`htm10ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm13ID` (`htm13ID`) KEY_BLOCK_SIZE=1024
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;

CREATE TABLE IF NOT EXISTS `tcs_cat_tocp_pages_stream` (
  `primaryId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'An internal counter',
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `dateLastModified` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` varchar(45) DEFAULT '0',
  `decDeg` double DEFAULT NULL,
  `discoveryMjd` double DEFAULT NULL,
  `filter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `magnitude` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `raDeg` double DEFAULT NULL,
  `surveyObjectUrl` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `survey` varchar(45) COLLATE utf8_unicode_ci DEFAULT 'tocp',
  `htm16ID` bigint(20) DEFAULT NULL,
  `htm10ID` bigint(20) DEFAULT NULL,
  `htm13ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`primaryId`) KEY_BLOCK_SIZE=1024,
  UNIQUE KEY `name` (`name`) KEY_BLOCK_SIZE=2048,
  UNIQUE KEY `radeg_decdeg` (`raDeg`,`decDeg`) KEY_BLOCK_SIZE=1024,
  KEY `ra_dec` (`decDeg`,`raDeg`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm16ID` (`htm16ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm10ID` (`htm10ID`) KEY_BLOCK_SIZE=1024,
  KEY `idx_htm13ID` (`htm13ID`) KEY_BLOCK_SIZE=1024
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;