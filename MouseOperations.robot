*** Settings ***
Library           Selenium2Library

*** Test Cases ***
MouseActions
    [Tags]    MouseActions
    #right click action!!
    Open Browser    https://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    Maximize Browser Window
    Open Context Menu    xpath:/html/body/div/section/div/div/div/p/span
    sleep    3
    #Double click action!!
    go to    http://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Double Click Element    xpath://*[@id="HTML10"]/div[1]/button
    sleep    3
    #Drag and Drop
    go to    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Maximize Browser Window
    Drag And Drop    id:box5    id:box105
    Drag And Drop    id:box4    id:box104
    Drag And Drop    id:box7    id:box107
    Drag And Drop    id:box1    id:box101
    Drag And Drop    id:box6    id:box106
    Drag And Drop    id:box3    id:box103
    Drag And Drop    id:box2    id:box102
    sleep    3
