import pyautogui
import keyboard as kbd
from time import sleep

while kbd.is_pressed('0'):
    pyautogui.rightClick()
    sleep(0.1)