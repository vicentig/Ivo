*** Settings ***
Suite Setup       Log To Console    Test Suite Started
Suite Teardown    Log To Console    Test Suite Completed
Library           Selenium2Library

*** Test Cases ***
Setup e Teardown_3
    [Tags]    Teste_Suite_Setup-Teardown
    [Setup]    Log To Console    Test Case Started
    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Button    id=btnLogin
    Close Browser
    [Teardown]    Log To Console    Test Case Completed
