*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Scroll
    [Tags]    Scroll
    Open Browser    http://www.stackoverflow.com/    Chrome
    Maximize Browser Window
    #Execute JavaScript    window.scrollTo(0, 1500)
    Sleep    3
    #scroll element into view    xpath://*[@id="content"]/div[7]/h3)
    #end of the page
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Sleep    3
    #starting point
    Execute JavaScript    window.scrollTo(0, -document.body.scrollHeight)
