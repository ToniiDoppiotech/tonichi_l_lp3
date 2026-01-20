*** Settings ***
Library     SeleniumLibrary
Resource    ../import.robot

*** Keywords ***
Change gourmet page language to English
    [Arguments]    ${language}
    gourmet_page.Click language button
    gourmet_page.Change language option    ${language}