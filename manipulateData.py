#!/usr/bin/env python2
# -*- coding: utf-8 -*-
"""
Created on Thu Jul  5 15:33:26 2018

@author: hardik.malhotra
"""

import pandas as pd
import numpy as np


# d = pd.read_csv("master_device_fact_20180806.csv")
d = pd.read_csv("781_device_list.csv")

# accesories = d[["device_id", "with_rf_switch", "device_type_desc", "hardware_extension", "lens", "case_color", "case_size"]]

# accesories["case_size"] = accesories["case_size"].replace(np.nan, "large")
# accesories["case_size"][accesories["case_size"].isnull()] = "large"
# accesories["case_color"] = accesories["case_color"].replace(np.nan, "white")
# accesories["case_color"][accesories["case_color"].isnull()] = "white"

# accesories["with_rf_switch"] = accesories["with_rf_switch"].replace("No", False)
# accesories["with_rf_switch"] = accesories["with_rf_switch"].replace("Yes", True)

# accesories["lens"] = accesories["lens"].replace("V2", "PiCam_V2")
# accesories["lens"] = accesories["lens"].replace("H Type", "FE_H")
# accesories["lens"] = accesories["lens"].replace(np.nan, "PiCam_V2")

# accesories["case_color"] = accesories["case_color"].replace("White", "white")

# # accesories["device_type_id"] = accesories["device_type_id"].replace("V2 - 1 device", "VM")
# # accesories["device_type_id"] = accesories["device_type_id"].replace("V2 - 4 device", "VM")
# # accesories["device_type_id"] = accesories["device_type_id"].replace("V2- 1 device", "VM")
# # accesories["device_type_id"] = accesories["device_type_id"].replace("V2 - 2 device", "VM")
# # accesories["device_type_id"] = accesories["device_type_id"].replace("V2- 2 device", "VM")
# # accesories["device_type_id"] = accesories["device_type_id"].replace("V2- 4 device", "VM")
# # accesories["device_type_id"] = accesories["device_type_id"].replace("V2- 6 device", "VM")
# # accesories["device_type_id"] = accesories["device_type_id"].replace("V2- 3 device", "VM")
# # accesories["device_type_id"] = accesories["device_type_id"].replace("V2- 2 device", "VM")
# # accesories["device_type_id"] = accesories["device_type_id"].replace("V2- 6 Device", "VM")
# # accesories["device_type_id"] = accesories["device_type_id"].replace("V2- 2 Device", "VM")
# # accesories["device_type_id"] = accesories["device_type_id"].replace("V2- 3 Device", "VM")
# # accesories["device_type_id"] = accesories["device_type_id"].replace("V2- 4 Device", "VM")
# # accesories["device_type_id"] = accesories["device_type_id"].replace("V2- 1 Device", "VM")
# # accesories["device_type_id"] = accesories["device_type_id"].replace("V2- 5 Device", "VM")
# # accesories["device_type_id"] = accesories["device_type_id"].replace("V2 - 6 Device", "VM")
# # accesories["device_type_id"] = accesories["device_type_id"].replace("V2 - 6 device", "VM")
# # accesories["device_type_id"] = accesories["device_type_id"].replace("V2 - 3 device", "VM")
# # accesories["device_type_id"] = accesories["device_type_id"].replace("H type - 2 device", "VM")
# # accesories["device_type_id"] = accesories["device_type_id"].replace("H Type - 2 device", "VM")
# # accesories["device_type_id"] = accesories["device_type_id"].replace("H Type - 1 device", "VM")
# # accesories["device_type_id"] = accesories["device_type_id"].replace("H Type - 1 Device", "VM")
# accesories["device_type_desc"] = accesories["device_type_desc"].replace(np.nan, "VM")
# accesories["hardware_extension"][accesories["hardware_extension"].isnull()] = "none"
# #accesories.dropna()
# accesories["hardware_extension"] = accesories["hardware_extension"].replace("2 feet Horizontal", "2-4 feet")
# accesories["hardware_extension"] = accesories["hardware_extension"].replace("17 Cm Horizontal", "17 cm")
# accesories["hardware_extension"] = accesories["hardware_extension"].replace("2 Feet Horizontal", "2-4 feet")
# accesories["hardware_extension"] = accesories["hardware_extension"].replace("17 Cm Verticle", "17 cm")
# accesories["hardware_extension"] = accesories["hardware_extension"].replace("2 Pcs - 4 feet Horizontal", "3-6 feet")
# #accesories["hardware_extension"] = accesories["hardware_extension"].replace("21 feet vertical", "1-2 feet")
# accesories["hardware_extension"] = accesories["hardware_extension"].replace("1 feet vertical", "1-2 feet")
# #accesories["hardware_extension"] = accesories["hardware_extension"].replace("Na", np.nan)
# #accesories["hardware_extension"] = accesories["hardware_extension"].replace("NA", np.nan)
# #accesories["hardware_extension"] = accesories["hardware_extension"].replace("N/A", np.nan)
# accesories["hardware_extension"] = accesories["hardware_extension"].replace("Na", "none")
# accesories["hardware_extension"] = accesories["hardware_extension"].replace("NA", "none")
# accesories["hardware_extension"] = accesories["hardware_extension"].replace("N/A", "none")

# accesories["with_rf_switch"] = accesories["with_rf_switch"].replace(False, 0).apply(int)
# accesories["with_rf_switch"] = accesories["with_rf_switch"].replace(True, 1).apply(int)

# accesories["microphone"] = "none"

deviceDetail = d[["device_id", "lan_mac_id", "wifi_mac_id", "PO", "processor"]]
deviceDetail["processor"] = deviceDetail["processor"].replace("Rasberry Pi", "RaspberryPi_3B")

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


# accessories_details = []
# for i in range(accesories["device_id"].size):
#     accessories_details.append(tuple(accesories.iloc[i]))
    # print accessories_details
  
    
device_details = []
for i in range(deviceDetail["device_id"].size):
    device_details.append(tuple(deviceDetail.iloc[i]))
    
    
installation_details = []
for i in range(install["org_id"].size):
    installation_details.append(tuple(install.iloc[i]))
    print installation_details
