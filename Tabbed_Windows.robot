*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Tabbed Windows
    [Tags]    Tabbed Windows
    Open Browser    http://demo.automationtesting.in/Windows.html    chrome
    Maximize Browser Window
    ${loc}=    get location
    Log To Console    ${loc}
    Click Button    //*[@id="Tabbed"]/a/button
    Sleep    2
    Select Window    title=sakinalium.in
    Sleep    2
    Click Button    xpath:/html/body/div[2]/div[6]/div[1]/div[1]/div[3]/button
    Sleep    2
    Page Should Contain    GoDaddy Domain Name Search
    Sleep    2
    Go To    http://sakinalium.in/
    ${loc}=    get location
    Log To Console    ${loc}
    Sleep    2
    Go Back
    ${loc}=    get location
    Log To Console    ${loc}
    Close Browser
