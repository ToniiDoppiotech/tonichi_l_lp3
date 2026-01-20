*** Settings ***
Library     SeleniumLibrary
Resource    ../import.robot

*** Keywords ***
Change gourmet page language
    [Arguments]    ${language}
    gourmet_page.Click language button
    gourmet_page.Change language option    ${language}