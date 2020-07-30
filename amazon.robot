*** Settings ***
Suite Setup       Log To Console    TestSuite Started
Suite Teardown    Log To Console    TestSuite Finish
Library           Selenium2Library

*** Variables ***
@{credenciais}    xxx    yyy
${url}            https://www.amazon.es/
${browser}        chrome

*** Test Cases ***
Amazon_Login
    [Tags]    Amazon_Login
    [Setup]    Log To Console    Test Case Started
    Start test
    Login
    [Teardown]    Log To Console    Test Case Finish

Search_Word
    [Tags]    Search_Word
    Start test
    SearchWord

*** keywords ***
Start test
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    title should be    Amazon.es: compra online de electrónica, libros, deporte, hogar, moda y mucho más.

Login
    Click Element    //*[@id="nav-link-accountList"]
    Input Text    //*[@id="ap_email"]    xxx
    Sleep    2
    Click Button    //*[@id="continue"]
    Input Password    //*[@id="ap_password"]    yyy
    Sleep    2
    Click Button    //*[@id="signInSubmit"]
    #Page Should Contain    Se requiere realizar una verificación
    Log To Console    Concluido

SearchWord
    Input Text    //*[@id="twotabsearchtextbox"]    robot
    Click Button    //*[@id="nav-search"]/form/div[2]/div/input
    Page Should Contain    "robot"
