*** Settings ***
Library     SeleniumLibrary
Resource    ./import.robot

*** Keywords ***
Open monline website
    SeleniumLibrary.Open Browser    ${url.monline}    browser=${browser}

Close browser
    BuiltIn.Run Keyword If Test Failed    SeleniumLibrary.Capture Page Screenshot
    SeleniumLibrary.Close All Browsers

Go back to previous page
    SeleniumLibrary.Go Back