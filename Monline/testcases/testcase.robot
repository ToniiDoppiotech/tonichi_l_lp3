*** Settings ***
Library     SeleniumLibrary
Resource    ../keywords/import.robot
Test Setup    common.Open monline website
Test Teardown    common.Close browser


*** Test cases ***
Verify 10 categories are displayed
    [tags]    category
    home_feature.Navigate to beauty hall page and back
    home_page.Verify 10 categories are displayed
    home_page.Verify URL gourmet market link

Verify change gourmet page language to English
    [Tags]    language
    home_page.Click gourmet market link
    gourmet_page.Verify page language    th
    gourmet_feature.Change gourmet page language to English    en
    gourmet_page.Verify page language    en