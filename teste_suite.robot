*** Settings ***
Library           Selenium2Library

*** Test Cases ***
1
    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Button    id=btnLogin
    Close Browser
