import pyautogui as pya
import time
import cv2
import webbrowser as wb
wb.open('https://www.ixl.com/math/pre-k/identify-numbers-up-to-3')
time.sleep(5)
while True:
    for pos in pya.locateAllOnScreen('Check.png'):
        x, y = pya.center(pos)
        pya.click(x/2, y/2)
    pya.press('enter')
    time.sleep(10)
    if(pya.locateOnScreen('GotIt.png') != None):
        x, y = pya.locateCenterOnScreen('GotIt.png')
        pya.click(x/2, y/2)
        time.sleep(100)
