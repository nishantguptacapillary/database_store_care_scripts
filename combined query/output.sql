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
INSERT IGNORE INTO `instore_ai_devices`.`accessories_details` (`device_id`,`with_rf_switch`,`device_id_desc`,`hardware_extension`,`camera`,`case_color`,`case_size`,`microphone`) VALUES(202481601940553,1,'VM','none','PiCam_V2','white','large','none');
INSERT IGNORE INTO `instore_ai_devices`.`accessories_details` (`device_id`,`with_rf_switch`,`device_id_desc`,`hardware_extension`,`camera`,`case_color`,`case_size`,`microphone`) VALUES(202481594652081,1,'VM','none','PiCam_V2','white','large','none');
INSERT IGNORE INTO `instore_ai_devices`.`accessories_details` (`device_id`,`with_rf_switch`,`device_id_desc`,`hardware_extension`,`camera`,`case_color`,`case_size`,`microphone`) VALUES(202481594572353,1,'VM','none','PiCam_V2','white','large','none');
INSERT IGNORE INTO `instore_ai_devices`.`accessories_details` (`device_id`,`with_rf_switch`,`device_id_desc`,`hardware_extension`,`camera`,`case_color`,`case_size`,`microphone`) VALUES(202481600252745,1,'VM','none','PiCam_V2','white','large','none');
INSERT IGNORE INTO `instore_ai_devices`.`accessories_details` (`device_id`,`with_rf_switch`,`device_id_desc`,`hardware_extension`,`camera`,`case_color`,`case_size`,`microphone`) VALUES(202481587561619,1,'VM','none','PiCam_V2','white','large','none');
INSERT IGNORE INTO `instore_ai_devices`.`accessories_details` (`device_id`,`with_rf_switch`,`device_id_desc`,`hardware_extension`,`camera`,`case_color`,`case_size`,`microphone`) VALUES(202481598131274,1,'VM','none','PiCam_V2','white','large','none');
INSERT IGNORE INTO `instore_ai_devices`.`accessories_details` (`device_id`,`with_rf_switch`,`device_id_desc`,`hardware_extension`,`camera`,`case_color`,`case_size`,`microphone`) VALUES(202481590738672,0,'VM','none','PiCam_V2','white','large','none');
INSERT IGNORE INTO `instore_ai_devices`.`accessories_details` (`device_id`,`with_rf_switch`,`device_id_desc`,`hardware_extension`,`camera`,`case_color`,`case_size`,`microphone`) VALUES(202481587626530,0,'VM','none','PiCam_V2','white','large','none');
INSERT IGNORE INTO `instore_ai_devices`.`accessories_details` (`device_id`,`with_rf_switch`,`device_id_desc`,`hardware_extension`,`camera`,`case_color`,`case_size`,`microphone`) VALUES(202481601180559,0,'VM','none','PiCam_V2','white','large','none');
INSERT IGNORE INTO `instore_ai_devices`.`accessories_details` (`device_id`,`with_rf_switch`,`device_id_desc`,`hardware_extension`,`camera`,`case_color`,`case_size`,`microphone`) VALUES(202481593253880,0,'VM','none','PiCam_V2','white','large','none');
INSERT IGNORE INTO `instore_ai_devices`.`accessories_details` (`device_id`,`with_rf_switch`,`device_id_desc`,`hardware_extension`,`camera`,`case_color`,`case_size`,`microphone`) VALUES(202481590385305,0,'VM','none','PiCam_V2','white','large','none');
INSERT IGNORE INTO `instore_ai_devices`.`accessories_details` (`device_id`,`with_rf_switch`,`device_id_desc`,`hardware_extension`,`camera`,`case_color`,`case_size`,`microphone`) VALUES(202481593178961,0,'VM','none','PiCam_V2','white','large','none');
INSERT IGNORE INTO `instore_ai_devices`.`accessories_details` (`device_id`,`with_rf_switch`,`device_id_desc`,`hardware_extension`,`camera`,`case_color`,`case_size`,`microphone`) VALUES(202481594598003,0,'VM','none','PiCam_V2','white','large','none');
INSERT IGNORE INTO `instore_ai_devices`.`accessories_details` (`device_id`,`with_rf_switch`,`device_id_desc`,`hardware_extension`,`camera`,`case_color`,`case_size`,`microphone`) VALUES(202481592309885,0,'VM','none','PiCam_V2','white','large','none');
CREATE TABLE device_details (
        device_id INTEGER PRIMARY KEY,
        lan_mac_id VARCHAR(50),
        wifi_mac_id VARCHAR(50),
        po VARCHAR(50), 
        processor VARCHAR(15) CHECK(processor IN ('RaspberryPi_3B', 'RaspberryPi_3B+', 'Intel_i7', 'Tinker', 'Odroid')) NOT NULL
        );
INSERT IGNORE INTO `instore_ai_devices`.`device_details` (`device_id`, `lan_mac_id`, `wifi_mac_id`, `po`, `processor`) VALUES(202481587561619,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT IGNORE INTO `instore_ai_devices`.`device_details` (`device_id`, `lan_mac_id`, `wifi_mac_id`, `po`, `processor`) VALUES(202481587626530,NULL,'b8:27:eb:4f:f7:77',NULL,'RaspberryPi_3B');
INSERT IGNORE INTO `instore_ai_devices`.`device_details` (`device_id`, `lan_mac_id`, `wifi_mac_id`, `po`, `processor`) VALUES(202481590385305,NULL,'b8:27:eb:11:ef:cc',NULL,'RaspberryPi_3B');
INSERT IGNORE INTO `instore_ai_devices`.`device_details` (`device_id`, `lan_mac_id`, `wifi_mac_id`, `po`, `processor`) VALUES(202481590738672,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT IGNORE INTO `instore_ai_devices`.`device_details` (`device_id`, `lan_mac_id`, `wifi_mac_id`, `po`, `processor`) VALUES(202481592309885,NULL,'b8:27:eb:37:4d:28',NULL,'RaspberryPi_3B');
INSERT IGNORE INTO `instore_ai_devices`.`device_details` (`device_id`, `lan_mac_id`, `wifi_mac_id`, `po`, `processor`) VALUES(202481593178961,NULL,'b8:27:eb:3a:0e:04',NULL,'RaspberryPi_3B');
INSERT IGNORE INTO `instore_ai_devices`.`device_details` (`device_id`, `lan_mac_id`, `wifi_mac_id`, `po`, `processor`) VALUES(202481593253880,NULL,'b8:27:eb:25:2a:ad',NULL,'RaspberryPi_3B');
INSERT IGNORE INTO `instore_ai_devices`.`device_details` (`device_id`, `lan_mac_id`, `wifi_mac_id`, `po`, `processor`) VALUES(202481594572353,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT IGNORE INTO `instore_ai_devices`.`device_details` (`device_id`, `lan_mac_id`, `wifi_mac_id`, `po`, `processor`) VALUES(202481594598003,NULL,'b8:27:eb:d0:57:26',NULL,'RaspberryPi_3B');
INSERT IGNORE INTO `instore_ai_devices`.`device_details` (`device_id`, `lan_mac_id`, `wifi_mac_id`, `po`, `processor`) VALUES(202481594652081,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT IGNORE INTO `instore_ai_devices`.`device_details` (`device_id`, `lan_mac_id`, `wifi_mac_id`, `po`, `processor`) VALUES(202481598131274,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT IGNORE INTO `instore_ai_devices`.`device_details` (`device_id`, `lan_mac_id`, `wifi_mac_id`, `po`, `processor`) VALUES(202481600252745,NULL,NULL,NULL,'RaspberryPi_3B');
INSERT IGNORE INTO `instore_ai_devices`.`device_details` (`device_id`, `lan_mac_id`, `wifi_mac_id`, `po`, `processor`) VALUES(202481601180559,NULL,'b8:27:eb:bc:26:da',NULL,'RaspberryPi_3B');
INSERT IGNORE INTO `instore_ai_devices`.`device_details` (`device_id`, `lan_mac_id`, `wifi_mac_id`, `po`, `processor`) VALUES(202481601940553,NULL,NULL,NULL,'RaspberryPi_3B');
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
INSERT IGNORE INTO `instore_ai_devices`.`installation_details` (`device_id`, `org_id`, `store_id`, `engagement_type`, `date_dispatched`, `date_installed`, `date_callback`, `device_name`,`store_name`, `is_active`, `dispatch_type`) VALUES(202481601940553,'150880','200103502','pilot','2018-08-13','2018-08-13',NULL,'SC03_Main_Entrance_1','Sony Consolidated Madurai',1,'courier');
INSERT IGNORE INTO `instore_ai_devices`.`installation_details` (`device_id`, `org_id`, `store_id`, `engagement_type`, `date_dispatched`, `date_installed`, `date_callback`, `device_name`,`store_name`, `is_active`, `dispatch_type`) VALUES(202481594652081,'150880','200103504','pilot','2018-08-20','2018-08-20',NULL,'SC04_Main_Entrance_1','Sony Consolidated Trichy',1,'courier');
INSERT IGNORE INTO `instore_ai_devices`.`installation_details` (`device_id`, `org_id`, `store_id`, `engagement_type`, `date_dispatched`, `date_installed`, `date_callback`, `device_name`,`store_name`, `is_active`, `dispatch_type`) VALUES(202481594572353,'150880','200103500','pilot','2018-08-20','2018-08-20',NULL,'SC02_Main_Entrance_1','Sony Consolidated Coimbatore',1,'courier');
INSERT IGNORE INTO `instore_ai_devices`.`installation_details` (`device_id`, `org_id`, `store_id`, `engagement_type`, `date_dispatched`, `date_installed`, `date_callback`, `device_name`,`store_name`, `is_active`, `dispatch_type`) VALUES(202481600252745,'150880','200103507','pilot','2018-08-20','2018-08-20',NULL,'SC05_Main_Entrance_1','Sony Consolidated tirunelveli',1,'courier');
INSERT IGNORE INTO `instore_ai_devices`.`installation_details` (`device_id`, `org_id`, `store_id`, `engagement_type`, `date_dispatched`, `date_installed`, `date_callback`, `device_name`,`store_name`, `is_active`, `dispatch_type`) VALUES(202481587561619,'150880','200103498','pilot','2018-08-28','2018-08-20',NULL,'SC01_Main_Entrance_1','Sony Consolidated Salem',1,'courier');
INSERT IGNORE INTO `instore_ai_devices`.`installation_details` (`device_id`, `org_id`, `store_id`, `engagement_type`, `date_dispatched`, `date_installed`, `date_callback`, `device_name`,`store_name`, `is_active`, `dispatch_type`) VALUES(202481598131274,'150284','200048133','pilot','2018-08-07','2018-08-07',NULL,NULL,'CT Pinklao',1,'courier');
INSERT IGNORE INTO `instore_ai_devices`.`installation_details` (`device_id`, `org_id`, `store_id`, `engagement_type`, `date_dispatched`, `date_installed`, `date_callback`, `device_name`,`store_name`, `is_active`, `dispatch_type`) VALUES(202481590738672,'150425','200061854','rollout','2018-08-02','2018-08-02',NULL,NULL,'Madhapur - Inorbit Mall_1276',1,'courier');
INSERT IGNORE INTO `instore_ai_devices`.`installation_details` (`device_id`, `org_id`, `store_id`, `engagement_type`, `date_dispatched`, `date_installed`, `date_callback`, `device_name`,`store_name`, `is_active`, `dispatch_type`) VALUES(202481587626530,'150789','200089326','rollout','2018-08-06','2018-08-06',NULL,'115_1stfloor_1','Salt Lake Kolkatta',1,'courier');
INSERT IGNORE INTO `instore_ai_devices`.`installation_details` (`device_id`, `org_id`, `store_id`, `engagement_type`, `date_dispatched`, `date_installed`, `date_callback`, `device_name`,`store_name`, `is_active`, `dispatch_type`) VALUES(202481601180559,'150789','200089326','rollout','2018-08-06','2018-08-06',NULL,'115_Groundfloor_1','Salt Lake Kolkatta',1,'courier');
INSERT IGNORE INTO `instore_ai_devices`.`installation_details` (`device_id`, `org_id`, `store_id`, `engagement_type`, `date_dispatched`, `date_installed`, `date_callback`, `device_name`,`store_name`, `is_active`, `dispatch_type`) VALUES(202481593253880,'150789','200089326','rollout','2018-08-06','2018-08-06',NULL,'115_Groundfloor_NewMall_1','Salt Lake Kolkatta',1,'courier');
INSERT IGNORE INTO `instore_ai_devices`.`installation_details` (`device_id`, `org_id`, `store_id`, `engagement_type`, `date_dispatched`, `date_installed`, `date_callback`, `device_name`,`store_name`, `is_active`, `dispatch_type`) VALUES(202481590385305,'150789','200089326','rollout','2018-08-06','2018-08-06',NULL,'115_Groundfloor_Trumgate_1','Salt Lake Kolkatta',1,'courier');
INSERT IGNORE INTO `instore_ai_devices`.`installation_details` (`device_id`, `org_id`, `store_id`, `engagement_type`, `date_dispatched`, `date_installed`, `date_callback`, `device_name`,`store_name`, `is_active`, `dispatch_type`) VALUES(202481593178961,'150789','200089340','rollout','2018-08-06','2018-08-06',NULL,'162_2ndfloor_Homeshop_1','RCITY Ghatkopar',1,'courier');
INSERT IGNORE INTO `instore_ai_devices`.`installation_details` (`device_id`, `org_id`, `store_id`, `engagement_type`, `date_dispatched`, `date_installed`, `date_callback`, `device_name`,`store_name`, `is_active`, `dispatch_type`) VALUES(202481594598003,'150789','200089340','rollout','2018-08-06','2018-08-06',NULL,'162_2ndfloor_Homeshop_BackEntry_1','RCITY Ghatkopar',1,'courier');
INSERT IGNORE INTO `instore_ai_devices`.`installation_details` (`device_id`, `org_id`, `store_id`, `engagement_type`, `date_dispatched`, `date_installed`, `date_callback`, `device_name`,`store_name`, `is_active`, `dispatch_type`) VALUES(202481592309885,'150789','200089342','rollout','2018-04-23','2018-04-23',NULL,'310_1stfloor_1','Rajori New Delhi',1,'courier');
COMMIT;
