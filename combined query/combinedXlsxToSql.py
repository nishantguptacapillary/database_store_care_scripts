#!/usr/bin/env python2
# -*- coding: utf-8 -*-

import sqlite3
import manipulateDataInsert
import manipulateDataUpdate

DB_NAME = "dummyDb"

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

def createDeviceDetailsTable(cursor):
    deviceDetailsTableCommand = \
    """CREATE TABLE IF NOT EXISTS "device_details" (
        device_id INTEGER PRIMARY KEY,
        lan_mac_id VARCHAR(50),
        wifi_mac_id VARCHAR(50),
        po VARCHAR(50), 
        processor VARCHAR(15) CHECK(processor IN ('RaspberryPi_3B', 'RaspberryPi_3B+', 'Intel_i7', 'Tinker', 'Odroid')) NOT NULL
        );"""
    
    cursor.execute(deviceDetailsTableCommand)

def createInstallationDetailsTable(cursor):
    installationDetailsTableCommand = \
    """CREATE TABLE IF NOT EXISTS "installation_details" (
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

# def sqliteToSqlConvert(inputFile):
#     with open(inputFile, 'r') as fin:
#         for line in fin:
#             print(line)
#             print("####################################")
#             line = line.replace("INSERT INTO", "INSERT IGNORE INTO")
#             line = line.replace("\"installation_details\"","`instore_ai_devices`,`installation_details`")            
#             line = line.replace("\"device_details\"","`instore_ai_devices`,`device_details`")            


def sqliteToSqlConvert(inputFile, outputFile):
    with open(inputFile, "rt") as fin:
        with open(outputFile, "wt") as fout:
            # fout.write("CREATE DATABASE IF NOT EXISTS `instore_ai_devices`;\n")
            for line in fin:
                line = line.replace("INSERT INTO", "INSERT IGNORE INTO")
                # separate replace for create table queries
                # line = line.replace("\"installation_details\"", "`instore_ai_devices`.`installation_details`")
                # line = line.replace("\"device_details\"", "`instore_ai_devices`.`device_details`")
                # line = line.replace("\"accessories_details\"", "`instore_ai_devices`.`accessories_details`")
                #separate replace for insert into queries - differentiated by VALUES string in insert into
                line = line.replace("\"installation_details\" VALUES","`instore_ai_devices`.`installation_details` (`device_id`, `org_id`, `store_id`, `engagement_type`, `date_dispatched`, `date_installed`, `date_callback`, `device_name`,`store_name`, `is_active`, `dispatch_type`) VALUES")            
                line = line.replace("\"device_details\" VALUES","`instore_ai_devices`.`device_details` (`device_id`, `lan_mac_id`, `wifi_mac_id`, `po`, `processor`) VALUES")            
                line = line.replace("\"accessories_details\" VALUES","`instore_ai_devices`.`accessories_details` (`device_id`,`with_rf_switch`,`device_id_desc`,`hardware_extension`,`camera`,`case_color`,`case_size`,`microphone`) VALUES")            
                fout.write(line)

def insertQueryGenerator():
    connection = sqlite3.connect(DB_NAME)
    cursor = connection.cursor()
    cursor.execute("PRAGMA foreign_keys = ON;")

    # createDeviceDetailsTable(cursor)
    cursor.executemany("""insert into device_details (`device_id`, `lan_mac_id`, `wifi_mac_id`, `po`, `processor`) values (?,?,?,?,?)""", manipulateDataInsert.device_details)

    actual_query_parameters = []
    for i in manipulateDataInsert.installation_details:
        i = i + (i[0],)
        actual_query_parameters.append(i)

    # createInstallationDetailsTable(cursor)
    # cursor.executemany("""insert into installation_details (`device_id`, `org_id`, `store_id`, `engagement_type`, `date_dispatched`, `date_installed`, `date_callback`, `device_name`,`store_name`, `is_active`, `dispatch_type`) values (?,?,?,?,?,?,?,?,?,?,?) where device_id NOT IN (SELECT device_id FROM installation_details where device_id=? and is_active=1)""",actual_query_parameters)
    cursor.executemany("""insert into installation_details (`device_id`, `org_id`, `store_id`, `engagement_type`, `date_dispatched`, `date_installed`, `date_callback`, `device_name`,`store_name`, `is_active`, `dispatch_type`) values (?,?,?,?,?,?,?,?,?,?,?)""",manipulateDataInsert.installation_details)

    # createAccessoryDetailsTable(cursor)
    cursor.executemany("""insert into accessories_details (`device_id`,`with_rf_switch`,`device_id_desc`,`hardware_extension`,`camera`,`case_color`,`case_size`,`microphone`) values (?,?,?,?,?,?,?,?)""", manipulateDataInsert.accessories_details)

    dumpDbToSql(connection, "database.sql")
    sqliteToSqlConvert("database.sql", "output.sql")



def writeUpdateQueries(fileName, databaseName, queries):
    f = open(fileName, "w")
    for i in queries:
        f.write(i + ";\n")

def updateQueryGenerator():
    executing_update_queries = []
    for j in manipulateDataUpdate.installation_details:
        query = str("UPDATE `instore_ai_devices`.`installation_details` SET `is_active`='{is_active}',`store_name`='{store_name}',`engagement_type`='{engagement_type}',`date_dispatched`='{date_dispatched}',`date_installed`='{date_installed}',`date_callback`='{date_callback}',`device_name`='{device_name}',`dispatch_type`='{dispatch_type}' WHERE `org_id`='{org_id}' AND `device_id`='{device_id}' AND `store_id`='{store_id}'".format(device_id=j[0], org_id=j[1], store_id=j[2], engagement_type=j[3],date_dispatched=j[4], date_installed=j[5], date_callback=j[6], device_name=j[7], store_name=j[8],is_active=j[9] ,dispatch_type=j[10]))
        #UPDATE `instore_ai_devices`.`installation_details` SET `is_active`='1', `store_name`='IndiraNagarStore1' WHERE `device_id`='201807070101';
        executing_update_queries.append(query)
    writeUpdateQueries("updateRows.sql","instore_ai_devices", executing_update_queries)

if __name__ == "__main__":
    var = raw_input("Please enter query you want to generate - u for update and i for insert : ")
    if(var == 'i'):
        manipulateDataInsert.readCsv()
        insertQueryGenerator()
    elif(var=='u'):
        manipulateDataUpdate.readCsv()
        updateQueryGenerator()