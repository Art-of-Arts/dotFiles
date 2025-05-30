import pyautogui as pag
from time import sleep

while pag.keyDown(key='0'):
    pag.rightClick()
    sleep(0.1)