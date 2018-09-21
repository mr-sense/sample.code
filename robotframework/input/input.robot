*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Basic Test
    Open Html
    Insert Text To Input Field
    Insert File To Input Field
    Click The button

*** Keywords ***
Open Html
    Open Browser    http://localhost:8000/input.html   browser=chrome
    Maximize Browser Window

Insert Text To Input Field
    Input Text    input-text    hello world

Insert File To Input Field
    Choose File   input-file  /Users/mr.sense/Dev/input.html

Click The button
    Click Element     input-button
