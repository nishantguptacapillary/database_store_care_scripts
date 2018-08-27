#!/usr/bin/env python2
# -*- coding: utf-8 -*-
"""
Created on Thu Jul  5 10:23:29 2018

@author: hardik.malhotra
"""
import sqlite3
import manipulateData

DB_NAME = "masterNew.db"


def createDeviceDetailsTable(cursor):
    deviceDetailsTableCommand = \
    """CREATE TABLE IF NOT EXISTS device_details (
        device_id INTEGER PRIMARY KEY,
        lan_mac_id VARCHAR(50),
        wifi_mac_id VARCHAR(50),
        po VARCHAR(50), 
        processor VARCHAR(15) CHECK(processor IN ('RaspberryPi_3B', 'RaspberryPi_3B+', 'Intel_i7', 'Tinker', 'Odroid')) NOT NULL
        );"""
    
    cursor.execute(deviceDetailsTableCommand)


def createAccessoryDetailsTable(cursor):    
    accessoriesDetailsTableCommand = \
    """CREATE TABLE IF NOT EXISTS accessories_details (
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
        );"""
        
    cursor.execute(accessoriesDetailsTableCommand)


def createInstallationDetailsTable(cursor):
    installationDetailsTableCommand = \
    """CREATE TABLE IF NOT EXISTS installation_details (
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
        );"""
    
    cursor.execute(installationDetailsTableCommand)
    

def dumpDbToSql(connection, fileName):
    with open(fileName, 'w') as f:
        for line in connection.iterdump():
            f.write('%s\n' % line)
            
            
connection = sqlite3.connect(DB_NAME)
cursor = connection.cursor()
cursor.execute("PRAGMA foreign_keys = ON;")

createDeviceDetailsTable(cursor)
cursor.executemany("""insert into device_details values (?,?,?,?,?)""", manipulateData.device_details)

# createAccessoryDetailsTable(cursor)
# cursor.executemany("""insert into accessories_details values (?,?,?,?,?,?,?,?)""", manipulateData.accessories_details)

createInstallationDetailsTable(cursor)
cursor.executemany("""insert into installation_details values (?,?,?,?,?,?,?,?,?,?,?)""", manipulateData.installation_details)

dumpDbToSql(connection, "database.sql")
