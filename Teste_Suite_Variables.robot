*** Settings ***
Library           Selenium2Library

*** Variables ***
${URL}            https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123
&{LOGIN}          Username=Admin    Password=admin123

*** Test Cases ***
Variables_2
    [Tags]    Variables_2
    Open Browser    ${URL}    chrome
    Input Text    id=txtUsername    @{CREDENTIALS}[0]
    Input Password    id=txtPassword    &{LOGIN}[Password]
    Click Button    id=btnLogin
    Close Browser
    Log To Console    %{username} executou este teste no %{os}
