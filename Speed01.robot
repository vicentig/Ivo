*** Settings ***
Library           Selenium2Library

*** Variables ***
${browser}        chrome
${url}            http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
testes_008
    [Tags]    testes_008
    ${speed}=    Get Selenium Speed
    Log To Console    ${speed}
    Open browser    ${url}    ${browser}
    maximize browser window
    Set Selenium Speed    2
    Input Text    //*[@id="wsb-element-00000000-0000-0000-0000-000452032346"]/div/form/fieldset/div[1]/p[2]/input    xpto2222
    Input Text    //*[@id="wsb-element-00000000-0000-0000-0000-000452032346"]/div/form/fieldset/div[1]/p[3]/input    xpto1111
    Radio_Buttons_And_CheckBoxes
    DropDown_ListBoxes
    Click Button    id=submit
    ${speed}=    Get Selenium Speed
    Log To Console    ${speed}

*** Keywords ***
Radio_Buttons_And_CheckBoxes
    Select Radio Button    sex    Female
    Select Radio Button    exp    5
    Select Checkbox    RedTea
    Select Checkbox    BlackTea
    Unselect Checkbox    BlackTea
    Select Checkbox    Harmless Addiction

DropDown_ListBoxes
    Select From List By Label    continents    Asia
    Select From List By Index    continents    1
    Select From List By Label    selenium_commands    Switch Commands
    Select From List By Label    selenium_commands    Wait Commands
    Unselect From List By Label    selenium_commands    Switch Commands
