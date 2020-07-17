*** Settings ***
Suite Setup       Log To Console    Test Suite Started
Suite Teardown    Log To Console    Test Suite Completed
Library           Selenium2Library

*** Variables ***
${url2}           https://opensource-demo.orangehrmlive.com/

*** Test Cases ***
Setup e Teardown_3_2
    [Tags]    Setup e Teardown_3_2
    [Setup]    GoToHomePage
    Login2
    [Teardown]    Close All Browsers

*** Keywords ***
GoToHomePage
    Open Browser    ${url2}    chrome

Login2
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Log To Console    Credenciais indicadas ###
    Click Button    id=btnLogin
