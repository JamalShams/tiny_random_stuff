# -*- coding: utf-8 -*-
"""
Created on Mon Apr 13 23:33:22 2020

@author: jamal
"""

# =============================================================================
# This Program is just for fun. i have seen it somewhere else. like you have a 
# limited amount of tokens and each time you donate a token the ring will 
# vibrate for 1 sec. in a given range. it is changed
# =============================================================================
import pyautogui as gui
tokens=5
for i in range(3):
    donate=int(input("How many tokens you wanna Donate?"))
    if tokens>=donate:
        print("Thsnks for donation.\nYour remaining tokens are", tokens-donate)
        tokens=tokens-donate
    else: 
        print("You have less tokens than you wanna donate.")
        buy_tokens=gui.confirm("Do you wanna Buy Tokens?", buttons=['Yes', 'No'])
        if buy_tokens=='Yes':
            new_tokens=int(input("How many tokens you want to buy?"))
            tokens=tokens+new_tokens
        elif buy_tokens=='No':
            print("Ok. Its your choice. Tokens in your wallet are: ", tokens)