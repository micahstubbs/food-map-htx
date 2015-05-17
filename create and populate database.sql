CREATE TABLE `raw_inspection` (
  `uid` int(11) NOT NULL,
  `fachashid` varchar(45) DEFAULT NULL,
  `idate` varchar(45) DEFAULT NULL,
  `iscore` varchar(45) DEFAULT NULL,
  `inoemployees` varchar(45) DEFAULT NULL,
  `itype` varchar(45) DEFAULT NULL,
  `istaffcode` varchar(45) DEFAULT NULL,
  `ientereddate` varchar(45) DEFAULT NULL,
  `idatetimeadded` varchar(45) DEFAULT NULL,
  `ifollowupdate` varchar(45) DEFAULT NULL,
  `icitationno` varchar(45) DEFAULT NULL,
  `istarttime` varchar(45) DEFAULT NULL,
  `iendtime` varchar(45) DEFAULT NULL,
  `icatering` varchar(45) DEFAULT NULL,
  `istatus` varchar(45) DEFAULT NULL,
  `ismoking` varchar(45) DEFAULT NULL,
  `icomments` varchar(45) DEFAULT NULL,
  `idatesigned` varchar(45) DEFAULT NULL,
  `isite` varchar(45) DEFAULT NULL,
  `itype2` varchar(45) DEFAULT NULL,
  `ihashid` varchar(45) DEFAULT NULL,
  `facaccountno` varchar(45) DEFAULT NULL,
  `facpermits` varchar(45) DEFAULT NULL,
  `facstatus` varchar(45) DEFAULT NULL,
  `facname` varchar(45) DEFAULT NULL,
  `facstreetno` varchar(45) DEFAULT NULL,
  `facstreetnofrac` varchar(45) DEFAULT NULL,
  `facstreetprefix` varchar(45) DEFAULT NULL,
  `facstreet` varchar(45) DEFAULT NULL,
  `facstreettype` varchar(45) DEFAULT NULL,
  `facstreetsuffix` varchar(45) DEFAULT NULL,
  `facsuite` varchar(45) DEFAULT NULL,
  `facfullstreetaddy` varchar(45) DEFAULT NULL,
  `faccity` varchar(45) DEFAULT NULL,
  `facstate` varchar(45) DEFAULT NULL,
  `faczip` varchar(45) DEFAULT NULL,
  `facmail1` varchar(45) DEFAULT NULL,
  `facmail2` varchar(45) DEFAULT NULL,
  `facmailcity` varchar(45) DEFAULT NULL,
  `facmailstate` varchar(45) DEFAULT NULL,
  `facmailzip` varchar(45) DEFAULT NULL,
  `facphone` varchar(45) DEFAULT NULL,
  `facdist` varchar(45) DEFAULT NULL,
  `facnonprofit` varchar(45) DEFAULT NULL,
  `facownerid` varchar(45) DEFAULT NULL,
  `facowner` varchar(45) DEFAULT NULL,
  `faclicensetag` varchar(45) DEFAULT NULL,
  `facvehicle` varchar(45) DEFAULT NULL,
  `faccomno` varchar(45) DEFAULT NULL,
  `establishmentcode` varchar(45) DEFAULT NULL,
  `estabishmenttype` varchar(45) DEFAULT NULL,
  `cuisine` varchar(45) DEFAULT NULL,
  `facriskscore` varchar(45) DEFAULT NULL,
  `facriskprofile` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `raw_lastinspection` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `stnum` varchar(45) DEFAULT NULL,
  `stname` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zip` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `ownername` varchar(45) DEFAULT NULL,
  `owneraddress` varchar(45) DEFAULT NULL,
  `ownerphone` varchar(45) DEFAULT NULL,
  `owneremail` varchar(45) DEFAULT NULL,
  `permittypes` varchar(45) DEFAULT NULL,
  `expiration` varchar(45) DEFAULT NULL,
  `factype` varchar(45) DEFAULT NULL,
  `district` varchar(45) DEFAULT NULL,
  `risk` varchar(45) DEFAULT NULL,
  `employees` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  `inspectiondate` varchar(45) DEFAULT NULL,
  `starttime` varchar(45) DEFAULT NULL,
  `endtime` varchar(45) DEFAULT NULL,
  `createddate` varchar(45) DEFAULT NULL,
  `createdtime` varchar(45) DEFAULT NULL,
  `lastmodifieddate` varchar(45) DEFAULT NULL,
  `lastmodifiedtime` varchar(45) DEFAULT NULL,
  `activitytype` varchar(45) DEFAULT NULL,
  `inspectorid` varchar(45) DEFAULT NULL,
  `inspectorname` varchar(45) DEFAULT NULL,
  `nosites` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `raw_loc` (
  `accountid` int(11) NOT NULL,
  `lat` varchar(45) DEFAULT NULL,
  `lng` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`accountid`),
  UNIQUE KEY `accountid_UNIQUE` (`accountid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `raw_violation` (
  `account` int(11) DEFAULT NULL,
  `facname` varchar(45) DEFAULT NULL,
  `risk` varchar(45) DEFAULT NULL,
  `factype` varchar(45) DEFAULT NULL,
  `inspectiondate` varchar(45) DEFAULT NULL,
  `inspector` varchar(45) DEFAULT NULL,
  `sitename` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `violationcode` varchar(45) DEFAULT NULL,
  `violationweight` varchar(45) DEFAULT NULL,
  `violationcomments` varchar(1000) DEFAULT NULL,
  `correctbydate` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  `attachments` varchar(45) DEFAULT NULL,
  `numberofemployees` varchar(45) DEFAULT NULL,
  `permittype` varchar(45) DEFAULT NULL,
  `activitytype` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `lat` float DEFAULT NULL,
  `lng` float DEFAULT NULL,
  `street` varchar(200) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `owner` varchar(200) DEFAULT NULL,
  `estcode` int(11) DEFAULT NULL,
  `esttype` varchar(45) DEFAULT NULL,
  `cuisine` varchar(45) DEFAULT NULL,
  `riskscore` varchar(45) DEFAULT NULL,
  `riskprofile` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accountid_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `inspection` (
  `id` int(11) NOT NULL,
  `accountid` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `citationno` int(11) DEFAULT NULL,
  `catering` varchar(45) DEFAULT NULL,
  `smoking` varchar(45) DEFAULT NULL,
  `inspector` varchar(45) DEFAULT NULL,
  `site` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `violation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inspectionid` varchar(45) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `comments` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65536 DEFAULT CHARSET=utf8;

load data local infile "/Users/ianwells/hackathon/food-map-htx/raw/latlng_out.csv"
into table raw_loc
columns terminated by ','
optionally enclosed by '"';

load data local infile "/Users/ianwells/hackathon/food-map-htx/raw/inspections_14.csv"
into table raw_inspection
columns terminated by ','
optionally enclosed by '"';

load data local infile "/Users/ianwells/hackathon/food-map-htx/raw/violations_14.csv"
into table raw_violation
columns terminated by ','
optionally enclosed by '"';

insert into violation SELECT 
null, ins.id as inspectionid,violationcode,violationweight,violationcomments
FROM food.raw_violation vio
join inspection ins on vio.account = ins.accountid 
and STR_TO_DATE(inspectiondate, '%m/%d/%Y') = ins.date
and vio.sitename = ins.site;

insert into account select 
facaccountno, facname, null, null, facfullstreetaddy, faccity, facstate, faczip, facowner, establishmentcode, estabishmenttype, cuisine, facriskscore, facriskprofile from food.raw_inspection
group by facaccountno;

insert into inspection SELECT uid,facaccountno,ientereddate,iscore, istatus, itype,icitationno,icatering,ismoking, null, isite FROM food.raw_inspection;

update account 
join raw_loc on raw_loc.accountid = account.id
set account.lat = raw_loc.lat, account.lng = raw_loc.lng
where account.lat is null;
