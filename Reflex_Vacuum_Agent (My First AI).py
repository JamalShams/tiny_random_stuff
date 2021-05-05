# -*- coding: utf-8 -*-
"""
Created on Wed Feb 26 15:57:48 2020

@author: jamal
"""
# =============================================================================
# This is the first AI program made by me from givien algorithm...
# and this is supervised learning.
# =============================================================================

print("\t\tThis Program deals with a situation of a vacuum \n \t\tcleaner that has to check the dirt in a given envoirment")
import numpy as np
import random as rndm
import time
location = rndm.randint(0,1)
status= rndm.randint(0,1)

for i in range(0,8):
    if location==0:
        print("Agent is in Box A")
        status= rndm.randint(0,1)
    else:
        print("Agent is in Box B")
        status= rndm.randint(0,1)
    
    if status==0:
        print("and it is Clean so")
    else:
        print("and it is Dirty so")
# =============================================================================
#     Main Function
# =============================================================================
    
    def reflex_Vacuum_agent(location, status):
        if status==1:
            action=1    #Suck the dirt
        elif location==0:
            action=2    #Go Right=2
        elif location==1:
            action=3   #Go Left
        else:
            action=4
        return action

    action=reflex_Vacuum_agent(location,status)
# =============================================================================
# Actions to perform according to situation
# =============================================================================
    if action==1:
        print("Suck The Dirt and go to adjacent box")
        location=np.logical_not(location) #Change location
        status=np.logical_not(status)   #Change Status
        action=4
    elif action==2:
        time.sleep(2)
        print("Go Right")
        location=1
    elif action==3:
        time.sleep(2)
        print("Go Left")
        location=0
    else:
        print("Do Nothing")
    