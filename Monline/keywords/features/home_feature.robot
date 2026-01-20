*** Settings ***
Library     SeleniumLibrary
Resource    ../import.robot

*** Keywords ***
Navigate to beauty hall page and back
    home_page.Click beauty hall link
    home_page.Verify beauty hall page is displayed
    common.Go back to previous page