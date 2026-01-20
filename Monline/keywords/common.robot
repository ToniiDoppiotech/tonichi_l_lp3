*** Settings ***
Library     SeleniumLibrary
Resource    ./import.robot

*** Keywords ***
Open monline website
    Open Browser    ${url.monline}    browser=${browser}

Close browser
    Run Keyword If Test Failed    SeleniumLibrary.Capture Page Screenshot
    Close All Browsers