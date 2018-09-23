*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Basic Test
    Open Html
    Click The button
    Click The Selectbox
    Click The link

*** Keywords ***
Open Html
    Open Browser    http://localhost:8000/click.html   browser=chrome
    Maximize Browser Window

Click The button
    Click Element     btn-click

Click The Selectbox
    Select From List by Value    xpath=//select[@id="select-click"]    third
    Element Should Contain    select-click    third

Click The link
    Click Link      /a.html
    Wait Until Page Contains    HIHIHI    2s
