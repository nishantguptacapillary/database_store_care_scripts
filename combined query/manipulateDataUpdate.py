#!/usr/bin/env python2
# -*- coding: utf-8 -*-
import pandas as pd
import numpy as np

installation_details = []

def readCsv():
    inputFileName = raw_input("Please enter the csv file name you want to read for update: ")
    # d = pd.read_csv("master_device_fact_20180806.csv")
    d = pd.read_csv(inputFileName)

    install = d[["device_id","org_id","store_id", "engagement_type", "date_dispatched", "date_installed", "date_callback", "device_name", "store_name", "is_active"]]
    install["dispatch_type"] = "courier"
    install["date_dispatched"] = install["date_dispatched"].replace(np.nan, "")

    install["dispatch_type"][install["date_dispatched"]=="physical deliver"] = "hand_delivered"
    install["dispatch_type"][install["date_dispatched"]=="Physical"] = "hand_delivered"
    install["dispatch_type"][install["date_dispatched"]==""] = "hand_delivered"
    install["date_dispatched"][install["date_dispatched"]=="physical deliver"] = install["date_installed"]
    install["date_dispatched"][install["date_dispatched"]=="Physical"] = install["date_installed"]
    install["engagement_type"] = install["engagement_type"].replace("Nightly Testing", "nightly_testing")
    install["engagement_type"] = install["engagement_type"].replace("Rollout", "rollout")
    install["engagement_type"] = install["engagement_type"].replace("Pilot", "pilot")


    install["org_id"] = install["org_id"].apply(str)
    install["store_id"] = install["store_id"].apply(str)

    for i in range(install["org_id"].size):
        installation_details.append(tuple(install.iloc[i]))
