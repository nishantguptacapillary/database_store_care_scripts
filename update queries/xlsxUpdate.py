#!/usr/bin/env python2
# -*- coding: utf-8 -*-
"""
Created on Mon Aug 20 16:23:29 2018

@author: nishant gupta
"""
# import sqlite3

import manipulateData

'''Commented code below is mostly because the db dump is not getting used for update table queries as it collects everything and just creates the DB dump into sql and not the queries getting executed. 
So the update commands are interpreted as insert into command'''

# DB_NAME = "master.db"

# def updateInstallationDetailsTable(cursor):
#     installationDetailsTableUpdateCommand = \
#     """ALTER TABLE installation_details ADD (is_active BOOLEAN DEFAULT TRUE, store_name VARCHAR(50) NOT NULL);"""
#     cursor.execute(installationDetailsTableUpdateCommand)

# def dumpDbToSql(connection, fileName):
#     with open(fileName, 'w') as f:
#         for line in connection.iterdump():
#             f.write('%s\n' % line)

def writeUpdateQueries(fileName, databaseName, queries):
    f = open(fileName, "w")
    # f.write("USE `{databaseName}`".format(databaseName=databaseName) + ";\n")
    # f.write("ALTER TABLE `instore_ai_devices`.`installation_details` ADD (`is_active` BOOLEAN DEFAULT TRUE, `store_name` VARCHAR(50) NOT NULL)" + ";\n")
    for i in queries:
        f.write(i + ";\n")

# connection = sqlite3.connect(DB_NAME)
# cursor = connection.cursor()
# cursor.execute("PRAGMA foreign_keys = ON;")

# updateInstallationDetailsTable(cursor)

executing_update_queries = []

for j in manipulateData.installation_details:
    query = str("UPDATE `instore_ai_devices`.`installation_details` SET `is_active`='{is_active}',`store_name`='{store_name}',`engagement_type`='{engagement_type}',`date_dispatched`='{date_dispatched}',`date_installed`='{date_installed}',`date_callback`='{date_callback}',`device_name`='{device_name}',`dispatch_type`='{dispatch_type}' WHERE `org_id`='{org_id}' AND `device_id`='{device_id}' AND `store_id`='{store_id}'".format(device_id=j[0], org_id=j[1], store_id=j[2], engagement_type=j[3],date_dispatched=j[4], date_installed=j[5], date_callback=j[6], device_name=j[7], store_name=j[8],is_active=j[9] ,dispatch_type=j[10]))
    #UPDATE `instore_ai_devices`.`installation_details` SET `is_active`='1', `store_name`='IndiraNagarStore1' WHERE `device_id`='201807070101';
    executing_update_queries.append(query)

# dumpDbToSql(connection, "databaseUpdate.sql")

writeUpdateQueries("updateRows.sql","instore_ai_devices", executing_update_queries)
