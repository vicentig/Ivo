*** Settings ***
Force Tags        KeyWords_3
Library           Selenium2Library

*** Test Cases ***
KeyWords_3
    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
    Log To Console    Browser aberto ###
    Login
    Close Browser

*** Keywords ***
Login
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Log To Console    Credenciais indicadas ###
    Click Button    id=btnLogin
