import pyautogui as pag
import keyboard as kbd
from time import sleep

while kbd.is_pressed('0'):
    pag.rightClick()
    sleep(0.1)