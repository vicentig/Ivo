*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Alert-PopUp
    [Tags]    Alert-PopUp
    Open Browser    http://testautomationpractice.blogspot.com/    chrome
    Click Button    //*[@id="HTML9"]/div[1]/button
    Set Selenium Speed    3
    Handle Alert    dismiss
    Page Should Contain    Cancel!
    Close Browser
    #Set Selenium Speed    3
    #Click Button    //*[@id="HTML9"]/div[1]/button
    #Handle Alert    accept
    #Page Should Contain    Cancel!
