*** Settings ***
Library           Selenium2Library

*** Test Cases ***
ScreenShot
    [Tags]    ScreenShot
    Open Browser    https://www.slbenfica.pt/    chrome
    Maximize Browser Window
    Capture Page Screenshot    C:/Users/ivicente/OneDrive/Projects/Robot/Projectos/Number1/Projecto_1/Logo.png
