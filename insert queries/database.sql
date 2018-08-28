BEGIN TRANSACTION;
CREATE TABLE device_details (
        device_id INTEGER PRIMARY KEY,
        lan_mac_id VARCHAR(50),
        wifi_mac_id VARCHAR(50),
        po VARCHAR(50), 
        processor VARCHAR(15) CHECK(processor IN ('RaspberryPi_3B', 'RaspberryPi_3B+', 'Intel_i7', 'Tinker', 'Odroid')) NOT NULL
        );
INSERT INTO "device_details" VALUES(201807070101,'00:16:3E:76:D6:7F','46:83:39:89:0f:d0',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070102,'00:16:3E:37:60:6A','00:1C:14:F8:02:48',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070103,'00:16:3E:AD:53:98','00:0C:29:89:AF:DD',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070104,'00:16:3E:99:AB:AB','00:1C:14:6D:0C:DD',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070105,'00:16:3E:3C:45:B5','00:05:69:2A:68:67',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070106,'00:16:3E:F0:97:DC','00:1C:14:4A:D9:4F',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070107,'00:0C:29:F3:D8:71','00:16:3E:41:79:85',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070108,'00:05:69:71:AB:79','00:16:3E:11:52:D6',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070109,'00:50:56:DC:B7:47','00:16:3E:B3:4A:01',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070201,'00:1C:14:01:BE:39','00:16:3E:1E:DB:F9',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070202,'00:50:56:40:37:99','00:16:3E:96:90:C3',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070203,'00:0C:29:D4:37:65','00:16:3E:61:04:C5',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070204,'00:1C:14:6D:E2:A3','00:16:3E:7F:65:CE',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070205,'00:0C:29:E8:F2:5A','00:16:3E:3F:6F:FF',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070206,'00:0C:29:2D:E6:A0','00:16:3E:7C:59:62',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070207,'00:16:3E:D5:99:E4','00:05:69:9D:4E:14',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070208,'00:16:3E:C6:DE:CA','00:50:56:3E:91:85',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070209,'00:16:3E:A8:02:72','00:0C:29:4D:91:8E',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070301,'00:16:3E:6A:D6:8B','00:1C:14:E8:52:93',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070302,'00:0C:29:C3:4A:63','00:16:3E:26:9E:DE',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070303,'00:50:56:39:24:AC','00:16:3E:53:08:04',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070304,'00:05:69:1C:49:46','00:16:3E:5E:78:25',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070305,'00:05:69:FC:ED:BB','00:16:3E:DB:CC:D5',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070306,'00:50:56:3E:D1:CD','00:16:3E:57:7C:FA',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070307,'00:16:3E:2D:AA:29','00:0C:29:4C:A3:71',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070308,'00:16:3E:85:BD:92','00:0C:29:CD:2F:4D',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070309,'00:16:3E:42:2E:6B','00:1C:14:D8:D5:C4',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070401,'00:16:3E:35:97:CF','00:1C:14:61:65:3C',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070402,'00:0C:29:B0:A0:44','00:0C:29:78:C4:A4',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070403,'00:0C:29:09:0F:2B','00:1C:14:BB:4A:E0',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070404,'00:50:56:82:6A:4E','00:50:56:E8:42:00',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070405,'00:05:69:52:3E:F1','00:0C:29:F1:47:71',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070406,'00:05:69:25:F8:4C','00:1C:14:30:86:AD',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070407,'00:16:3E:50:C0:5F','00:16:3E:9E:29:C3',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070408,'00:16:3E:84:1B:13','00:16:3E:76:EE:35',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(201807070409,'00:16:3E:2F:17:76','00:16:3E:18:AA:43',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(2018070701010,'00:0C:29:E0:BF:CE','00:16:3E:73:C1:6E',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(2018070702010,'00:16:3E:AD:03:A0','00:50:56:B4:69:FB',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(2018070703010,'00:16:3E:61:F6:A2','00:05:69:9D:EB:EE',NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(2018070704010,'00:16:3E:1B:13:54','00:16:3E:AB:94:EE',NULL,'RaspberryPi_3B');
CREATE TABLE installation_details (
        device_id INTEGER NOT NULL,
        org_id VARCHAR(6) NOT NULL,
        store_id VARCHAR(9) NOT NULL,
        engagement_type VARCHAR(7) CHECK(engagement_type IN ('rollout', 'pilot', 'nightly_testing')) NULL DEFAULT NULL,
        date_dispatched DATETIME,
        date_installed DATETIME,
        date_callback DATETIME,
        device_name VARCHAR(50),
        store_name VARCHAR(50) NOT NULL,
        is_active Boolean DEFAULT TRUE,
        dispatch_type VARCHAR(15) CHECK(dispatch_type IN ('hand_delivered', 'courier')) NOT NULL,
        FOREIGN KEY(device_id) REFERENCES device_details(device_id)
        );
INSERT INTO "installation_details" VALUES(201807070101,'781','50013129','nightly_testing','20/06/2018','24/06/2018',NULL,'device_1','IndiraNagarStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070102,'781','50013129','nightly_testing','20/06/2018','24/06/2018',NULL,'device_2','IndiraNagarStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070103,'781','50013129','nightly_testing','20/06/2018','24/06/2018',NULL,'device_3','IndiraNagarStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070104,'781','50013129','nightly_testing','20/06/2018','24/06/2018',NULL,'device_4','IndiraNagarStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070105,'781','50013129','nightly_testing','20/06/2018','24/06/2018',NULL,'device_5','IndiraNagarStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070106,'781','50013129','nightly_testing','20/06/2018','24/06/2018',NULL,'device_6','IndiraNagarStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070107,'781','50013129','nightly_testing','20/06/2018','24/06/2018',NULL,'device_7','IndiraNagarStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070108,'781','50013129','nightly_testing','20/06/2018','24/06/2018',NULL,'device_8','IndiraNagarStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070109,'781','50013129','nightly_testing','20/06/2018','24/06/2018',NULL,'device_9','IndiraNagarStore1',1,'courier');
INSERT INTO "installation_details" VALUES(2018070701010,'781','50013129','nightly_testing','20/06/2018','24/06/2018',NULL,'device_10','IndiraNagarStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070201,'781','50013130','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'HSRStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070202,'781','50013130','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'HSRStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070203,'781','50013130','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'HSRStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070204,'781','50013130','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'HSRStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070205,'781','50013130','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'HSRStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070206,'781','50013130','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'HSRStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070207,'781','50013130','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'HSRStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070208,'781','50013130','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'HSRStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070209,'781','50013130','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'HSRStore1',1,'courier');
INSERT INTO "installation_details" VALUES(2018070702010,'781','50013130','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'HSRStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070301,'781','50013131','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'KoramangalaStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070302,'781','50013131','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'KoramangalaStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070303,'781','50013131','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'KoramangalaStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070304,'781','50013131','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'KoramangalaStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070305,'781','50013131','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'KoramangalaStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070306,'781','50013131','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'KoramangalaStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070307,'781','50013131','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'KoramangalaStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070308,'781','50013131','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'KoramangalaStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070309,'781','50013131','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'KoramangalaStore1',1,'courier');
INSERT INTO "installation_details" VALUES(2018070703010,'781','50013131','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'KoramangalaStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070401,'781','50013132','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'JayanagarStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070402,'781','50013132','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'JayanagarStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070403,'781','50013132','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'JayanagarStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070404,'781','50013132','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'JayanagarStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070405,'781','50013132','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'JayanagarStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070406,'781','50013132','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'JayanagarStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070407,'781','50013132','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'JayanagarStore1',1,'courier');
INSERT INTO "installation_details" VALUES(201807070408,'781','50013132','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'JayanagarStore1',0,'courier');
INSERT INTO "installation_details" VALUES(201807070409,'781','50013132','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'JayanagarStore1',0,'courier');
INSERT INTO "installation_details" VALUES(2018070704010,'781','50013132','nightly_testing','20/06/2018','24/06/2018',NULL,NULL,'JayanagarStore1',0,'courier');
COMMIT;
