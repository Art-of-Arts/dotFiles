import keyboard as kbd
from time import sleep
import pyautogui

while True:
    if kbd.is_pressed('0'):
        pyautogui.click(clicks=100,button='right',)
        # sleep(0.1)