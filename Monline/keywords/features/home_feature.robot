*** Settings ***
Library     SeleniumLibrary
Resource    ../import.robot

*** Keywords ***
Navigate to category page and back
    [Arguments]    ${locator_link}
    home_page.Click beauty hall link    ${locator_link}
    home_page.Verify beauty hall page is displayed
    common.Go back to previous page