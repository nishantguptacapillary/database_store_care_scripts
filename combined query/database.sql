BEGIN TRANSACTION;
CREATE TABLE accessories_details (
        device_id INTEGER NOT NULL,
        with_rf_switch BOOLEAN,
        device_id_desc CHAR(2) CHECK(device_id_desc IN ('VM', 'HM', 'CE', 'AC', 'PE')) NOT NULL,
        hardware_extension VARCHAR(10) CHECK(hardware_extension IN ('17 cm', '5 inch', '1-2 feet',
        '2-4 feet', '3-6 feet', '4-8 feet', '5-10 feet', 'none')) NULL,
        camera VARCHAR(10) CHECK(camera IN ('PiCam_V1', 'PiCam_V2', 'FE_H', 'FE_I', 'FE_J')) NULL,
        case_color CHAR(5) CHECK(case_color IN ('black', 'white')) NOT NULL,
        case_size CHAR(5) CHECK(case_size IN ('small', 'large')) NOT NULL,
        microphone CHAR(3) CHECK(microphone IN ('mic', 'none')) NULL,
        FOREIGN KEY(device_id) REFERENCES device_details(device_id)
        );
INSERT INTO "accessories_details" VALUES(202481598057812,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481598194976,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481587567440,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481588600943,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481594279708,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481598436420,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481598439094,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481602220998,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481587739840,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481600373811,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481594775492,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481593985766,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481589295404,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481598361449,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481599477833,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481598437703,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481592265393,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481601645487,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481594322437,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481599553492,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481597671612,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481601395713,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481591164356,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481588257952,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481595676897,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481592170744,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481594708945,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481589264989,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481597887957,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481588298670,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481596602204,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481589421590,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481587432903,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481589971029,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481596992392,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481593342489,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481600483012,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481590562550,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481595416396,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481595718119,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481598044679,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481594780564,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481602049371,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481599594056,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481602103435,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481598513161,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481598672383,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481586971406,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481586015579,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481591851238,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481588675569,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481599497998,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481590886741,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481588531170,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481598454990,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481590215625,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481589625576,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481589036111,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481590016863,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481588685232,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481590037418,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481590798231,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481593988345,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481602197197,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481594108256,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481596472527,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481601633397,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481597329712,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481586590836,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481601785123,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481586701488,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481598843319,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481591887647,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481594981172,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481590767355,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481594167773,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481591076181,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481595098255,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481596251848,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481587568900,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481592019077,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481592875877,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481596237615,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481596559458,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481602196509,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481596122492,0,'VM','none','PiCam_V2','white','large','none');
INSERT INTO "accessories_details" VALUES(202481600136184,0,'VM','none','PiCam_V2','white','large','none');
CREATE TABLE device_details (
        device_id INTEGER PRIMARY KEY,
        lan_mac_id VARCHAR(50),
        wifi_mac_id VARCHAR(50),
        po VARCHAR(50), 
        processor VARCHAR(15) CHECK(processor IN ('RaspberryPi_3B', 'RaspberryPi_3B+', 'Intel_i7', 'Tinker', 'Odroid')) NOT NULL
        );
INSERT INTO "device_details" VALUES(202481586015579,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481586590836,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481586701488,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481586971406,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481587432903,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481587567440,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481587568900,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481587739840,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481588257952,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481588298670,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481588531170,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481588600943,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481588675569,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481588685232,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481589036111,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481589264989,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481589295404,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481589421590,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481589625576,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481589971029,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481590016863,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481590037418,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481590215625,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481590562550,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481590767355,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481590798231,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481590886741,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481591076181,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481591164356,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481591851238,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481591887647,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481592019077,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481592170744,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481592265393,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481592875877,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481593342489,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481593985766,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481593988345,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481594108256,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481594167773,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481594279708,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481594322437,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481594708945,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481594775492,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481594780564,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481594981172,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481595098255,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481595416396,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481595676897,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481595718119,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481596122492,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481596237615,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481596251848,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481596472527,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481596559458,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481596602204,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481596992392,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481597329712,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481597671612,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481597887957,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481598044679,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481598057812,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481598194976,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481598361449,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481598436420,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481598437703,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481598439094,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481598454990,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481598513161,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481598672383,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481598843319,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481599477833,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481599497998,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481599553492,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481599594056,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481600136184,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481600373811,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481600483012,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481601395713,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481601633397,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481601645487,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481601785123,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481602049371,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481602103435,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481602196509,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481602197197,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT INTO "device_details" VALUES(202481602220998,NULL,NULL,NULL,'RaspberryPi_3B');
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
INSERT INTO "installation_details" VALUES(202481598057812,'1543','12844342',NULL,'','2018-07-14',NULL,'CFS_Main_Entrance_1','CFS_Banjara Hills',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481598194976,'1543','12844342',NULL,'','2018-07-14',NULL,'CFS_Main_Entrance_2','CFS_Banjara Hills',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481587567440,'810','12794260',NULL,'',NULL,NULL,NULL,'MM BLR MANTRI MALL',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481588600943,'810','12793398',NULL,'',NULL,NULL,NULL,'MM BLR JAYANAGAR 4th BLOCK',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481594279708,'810','12793381',NULL,'',NULL,NULL,NULL,'MM BLR INDIRA NAGAR',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481598436420,'810','12822639',NULL,'',NULL,NULL,NULL,'MM BLR JP NAGAR NEW',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481598439094,'810','12841532',NULL,'',NULL,NULL,NULL,'MM BLR KORAMANGALA',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481602220998,'810','12794262',NULL,'',NULL,NULL,NULL,'MM BLR HSR LAYOUT',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481587739840,'810','12793393',NULL,'',NULL,NULL,NULL,'MM BLR SAHAKAR NAGAR',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481600373811,'810','12793396',NULL,'',NULL,NULL,NULL,'MM MANGALORE CITY CENTER MALL',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481594775492,'810','12793443',NULL,'',NULL,NULL,NULL,'MM-BLR-BROOKEFIELD',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481593985766,'810','12793401',NULL,'','2007-03-17',NULL,NULL,'MM BLR HBR LYT KAMANAHALLI',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481589295404,'1575','12842363',NULL,'','2017-07-10',NULL,NULL,'Tom Tailor NewDelhi',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481598361449,'1575','12841735',NULL,'','2018-08-16',NULL,NULL,'Tom Tailor Pune',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481599477833,'1575','12842367',NULL,'2018-08-08','2018-09-04',NULL,'IRIkol_Main_Entrance_1','Tom Tailor Kolkata',1,'courier');
INSERT INTO "installation_details" VALUES(202481598437703,'1100','12817067',NULL,'','2018-05-09',NULL,NULL,'Kalki Fashions Santacruz',0,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481592265393,'1642','12845851',NULL,'2018-10-03','2018-10-10',NULL,'MKamristar_Main_Entrance_1','Mini Klub Amristar',1,'courier');
INSERT INTO "installation_details" VALUES(202481601645487,'1543','12840711',NULL,'',NULL,NULL,NULL,'PC Jewelers Faridiabad',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481594322437,'725','12788076',NULL,'','2018-07-17',NULL,NULL,'Amritsar',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481599553492,'725','12836304',NULL,'','2018-07-24',NULL,NULL,'Jayanagar',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481597671612,'725','12788059',NULL,'','2018-07-13',NULL,NULL,'Orion Mall',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481601395713,'725','12828855',NULL,'','2018-06-15',NULL,NULL,'100 FT Road',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481591164356,'725','12826803',NULL,'','2018-06-15',NULL,NULL,'PMC Chennai',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481588257952,'725','12788075',NULL,'','2018-07-23',NULL,NULL,'Chandigarh',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481595676897,'725','12836549',NULL,'','2018-07-19',NULL,NULL,'Adyar',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481592170744,'725','12788056',NULL,'','2018-06-18',NULL,NULL,'Chennai',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481594708945,'725','12814998',NULL,'','2018-07-19',NULL,NULL,'Elante Mall',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481589264989,'725','12826439',NULL,'','2018-06-13',NULL,NULL,'DLF Emporio',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481597887957,'725','12826439',NULL,'','2018-06-13',NULL,NULL,'DLF Emporio',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481588298670,'725','12788071',NULL,'','2018-06-19',NULL,NULL,'Ambience',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481596602204,'725','12788060',NULL,'','2018-06-14',NULL,NULL,'Hyderabad',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481589421590,'725','12840069',NULL,'','2018-06-15',NULL,NULL,'BEL Road',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481587432903,'725','12830957',NULL,'','2018-07-27',NULL,NULL,'PMC BLR',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481589971029,'725','12819605',NULL,'','2018-07-04',NULL,NULL,'Quest Mall',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481596992392,'725','12819605',NULL,'','2018-07-04',NULL,NULL,'Quest Mall',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481593342489,'725','12788054',NULL,'','2018-07-04',NULL,NULL,'South City',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481600483012,'725','12788053',NULL,'','2018-06-13',NULL,NULL,'Woodburn',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481590562550,'725','12788074',NULL,'','2018-07-23',NULL,NULL,'Lucknow',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481595416396,'725','12788077',NULL,'','2018-06-18',NULL,NULL,'Ludhiana',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481595718119,'725','12831461',NULL,'','2018-07-25',NULL,NULL,'OBEROI RK LABEL',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481598044679,'725','12831461',NULL,'','2018-07-25',NULL,NULL,'OBEROI RK LABEL',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481594780564,'725','12834670',NULL,'','2018-07-27',NULL,NULL,'Seawood',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481602049371,'725','12834670',NULL,'','2018-07-27',NULL,NULL,'Seawood',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481599594056,'725','12838837',NULL,'','2018-07-27',NULL,NULL,'Seawood RK',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481602103435,'725','12838837',NULL,'','2018-07-27',NULL,NULL,'Seawood RK',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481598513161,'725','12796743',NULL,'','2018-06-13',NULL,NULL,'Infiniti',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481598672383,'725','12788432',NULL,'','2018-06-12',NULL,NULL,'Juhu',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481586971406,'725','12820996',NULL,'','2018-07-17',NULL,NULL,'Kurla',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481586015579,'725','12788065',NULL,'','2018-07-27',NULL,NULL,'Palladium Rk',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481591851238,'725','12788065',NULL,'','2018-07-27',NULL,NULL,'Palladium Rk',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481588675569,'725','12837157',NULL,'','2018-06-29',NULL,NULL,'Saket',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481599497998,'725','12834828',NULL,'','2018-06-27',NULL,NULL,'Rajouri Garden',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481590886741,'725','12788069',NULL,'','2018-06-11',NULL,NULL,'Archana',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481588531170,'725','12788072',NULL,'','2018-06-13',NULL,NULL,'Dlf Promen',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481598454990,'725','12788072',NULL,'','2018-06-13',NULL,NULL,'Dlf Promen',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481590215625,'725','12810389',NULL,'','2018-08-01',NULL,NULL,'Khan Market',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481589625576,'725','12795739',NULL,'','2018-06-14',NULL,NULL,'South Ext',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481589036111,'725','12788067',NULL,'','2018-06-12',NULL,NULL,'Pune',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481590016863,'725','12825345',NULL,'','2018-07-12',NULL,NULL,'Ahmedabad',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481588685232,'725','12826278',NULL,'','2018-06-18',NULL,NULL,'Surat',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481590037418,'725','12826278',NULL,'','2018-06-18',NULL,NULL,'Surat',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481590798231,'725','12826622',NULL,'','2018-07-23',NULL,NULL,'Kanpur',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481593988345,'725','12828645',NULL,'','2018-07-05',NULL,NULL,'MOI Label',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481602197197,'725','12828642',NULL,'','2018-07-05',NULL,NULL,'MOI RK',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481594108256,'725','12837399',NULL,'','2018-08-01',NULL,NULL,'Baroda',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481596472527,'725','12840905',NULL,'','2018-08-01',NULL,NULL,'Patna FOCO',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481601633397,'725','12842098',NULL,'','2018-08-07',NULL,NULL,'Varanasi FOCO',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481597329712,'725','12788063',NULL,'','2018-08-01',NULL,NULL,'Oberoi 2',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481586590836,'725','12838623',NULL,'','2018-08-16',NULL,NULL,'Siliguri',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481601785123,'725','12788078',NULL,'','2018-08-17',NULL,NULL,'Jaipur',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481586701488,'725','12841524',NULL,'','2018-07-31',NULL,NULL,'LABEL Ranchi',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481598843319,'725','12840210',NULL,'','2018-08-17',NULL,NULL,'ritukumar_Jaipur',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481591887647,'725','12837786',NULL,'','2018-08-23',NULL,NULL,'Dehradun',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481594981172,'725','12842534',NULL,'','2018-08-28',NULL,'R117_Mainentrance_1','INDORE C21 Label',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481590767355,'725','12788073',NULL,'','2018-07-27',NULL,'009_Main_Entrance_1','Dtmega Mall',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481594167773,'725','12838835',NULL,'','2018-08-28',NULL,'R102_Main_Entrance_1','Ritu Kumar Indore FOCO',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481591076181,'725','12818793',NULL,'2018-06-05','2018-09-20',NULL,'R057_Main_Entrance_1','Pavilion',1,'courier');
INSERT INTO "installation_details" VALUES(202481595098255,'725','12788057',NULL,'2018-07-20','2018-09-25',NULL,'006_Main_Entrance_1','Banglore',1,'courier');
INSERT INTO "installation_details" VALUES(202481596251848,'1481','12837372',NULL,'',NULL,NULL,'002_Main_Entrance_1','Mantri Square malleshwaram',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481587568900,'1481','12837372',NULL,'',NULL,NULL,'002_Main_Entrance_2','Mantri Square malleshwaram',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481592019077,'1611','12844743',NULL,'2018-08-20','2018-08-27',NULL,'StellarBehariAvenue_Main_Entrance_1','Stellar Behari Avenue',1,'courier');
INSERT INTO "installation_details" VALUES(202481592875877,'1611','12844745',NULL,'2018-08-20','2018-08-27',NULL,'StellarBindhannagar_Main_Entrance_1','Stellar Bindhannagar',1,'courier');
INSERT INTO "installation_details" VALUES(202481596237615,'1611','12844754',NULL,'2018-08-20','2018-08-28',NULL,'SchillereAJCBoseRoad_Main_Entrance_1','Schillere AJC Bose Road',1,'courier');
INSERT INTO "installation_details" VALUES(202481596559458,'1611','12844752',NULL,'2018-08-20','2018-08-28',NULL,'StellarAJCBoseRoad_Main_Entrance_1','Stellar AJC Bose Road',1,'courier');
INSERT INTO "installation_details" VALUES(202481602196509,'1611','12844748',NULL,'2018-08-29','2018-09-04',NULL,'Raghunathpur_Main_Entrance_1','Stellar VIP Road Raghunathpur',1,'courier');
INSERT INTO "installation_details" VALUES(202481596122492,'1555','12840520',NULL,'','2018-05-03',NULL,NULL,'SB Salkia',1,'hand_delivered');
INSERT INTO "installation_details" VALUES(202481600136184,'1543','12844241',NULL,'','2018-07-05',NULL,NULL,'tbz mumbai borivalli',1,'hand_delivered');
COMMIT;
