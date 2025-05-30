import keyboard as kbd
from time import sleep
import pyautogui

while kbd.is_pressed('0'):
    pyautogui.rightClick()
    sleep(0.1)